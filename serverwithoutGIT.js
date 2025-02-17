const express = require("express");
const cors = require("cors");
const { exec } = require("child_process");
const path = require("path");
const fs = require("fs");

const app = express();
app.use(cors());
app.use(express.json());

app.post("/run-liquibase", (req, res) => {
  const { command, sourceDBUrl, sourceUsername, sourcePassword } = req.body;

  if (!sourceDBUrl || !sourceUsername) {
    return res.status(400).send("Source database details are required.");
  }

  const liquibaseCommand = `liquibase --changeLogFile=changelog.xml ${command} \
    --url="${sourceDBUrl}" --username="${sourceUsername}" --password="${sourcePassword}"`;

  exec(liquibaseCommand, (error, stdout, stderr) => {
    if (error) {
      return res.status(500).send(`Error: ${stderr}`);
    }
    res.send(stdout || "Command executed successfully.");
  });
});


const CHANGELOG_FILE = path.join(__dirname, "changelog.xml"); 

// ✅ Generate New Changelog
app.post("/run-liquibase11", (req, res) => {
  const { command, sourceDBUrl, sourceUsername, sourcePassword } = req.body;

  if (!sourceDBUrl || !sourceUsername) {
    return res.status(400).send("Source database details are required.");
  }

  if (fs.existsSync(CHANGELOG_FILE)) {
    const timestamp = new Date().toISOString().replace(/[:.]/g, "-");
    fs.renameSync(CHANGELOG_FILE, path.join(__dirname, `changelog-${timestamp}.xml`));
  }

  const liquibaseCommand = `liquibase --changeLogFile=changelog.xml ${command} \
    --url=${sourceDBUrl} --username=${sourceUsername} --password=${sourcePassword}`;

  exec(liquibaseCommand, (error, stdout, stderr) => {
    if (error) return res.status(500).send(`Error: ${stderr}`);

    commitChangelogToGit()
      .then(() => res.send(stdout || "Changelog generated & committed to Git."))
      .catch(gitError => res.status(500).send(`Liquibase success, but Git commit failed: ${gitError}`));
  });
});

app.post("/compare-tables", (req, res) => {
  const { sourceDBUrl, sourceUsername, sourcePassword, targetDBUrl, targetUsername, targetPassword } = req.body;

  if (!sourceDBUrl || !targetDBUrl || !sourceUsername || !targetUsername) {
    return res.status(400).send("Both source and target databases are required.");
  }

  const liquibaseCommand = `liquibase diff \
    --referenceUrl="${sourceDBUrl}" --referenceUsername="${sourceUsername}" --referencePassword="${sourcePassword}" \
    --url="${targetDBUrl}" --username="${targetUsername}" --password="${targetPassword}"`;

  exec(liquibaseCommand, (error, stdout, stderr) => {
    if (error) {
      return res.status(500).send(`Error: ${stderr}`);
    }
    res.send(stdout || "No differences found.");
  });
});

app.post("/migrate", (req, res) => {
  const { sourceDBUrl, sourceUsername, sourcePassword, targetDBUrl, targetUsername, targetPassword } = req.body;

  // Validate input parameters
  if (!sourceDBUrl || !targetDBUrl || !sourceUsername || !targetUsername) {
    return res.status(400).send("Both source and target databases are required.");
  }

  // Construct the Liquibase migration command
  const liquibaseCommand = `liquibase --changeLogFile=changelog.xml update \
    --url="${targetDBUrl}" --username="${targetUsername}" --password="${targetPassword}"`;

  // Execute the Liquibase update command
  exec(liquibaseCommand, (error, stdout, stderr) => {
    if (error) {
      return res.status(500).send(`Error: ${stderr}`);
    }
    res.send(stdout || "Migration completed successfully.");
  });
});

app.post("/migrateNew", (req, res) => {
  const { sourceDBUrl, sourceUsername, sourcePassword, targetDBUrl, targetUsername, targetPassword } = req.body;

  // Validate input parameters
  if (!sourceDBUrl || !targetDBUrl || !sourceUsername || !targetUsername) {
    return res.status(400).send("Both source and target databases are required.");
  }

  // 🔍 Get the latest changelog file (based on modification time)
  const changelogDir = __dirname;
  const changelogFiles = fs.readdirSync(changelogDir)
    .filter(file => file.startsWith("changelog") && file.endsWith(".xml")) // Find all changelog XML files
    .map(file => ({
      name: file,
      time: fs.statSync(path.join(changelogDir, file)).mtime.getTime(), // Get file modification time
    }))
    .sort((a, b) => b.time - a.time); // Sort by newest first

  if (changelogFiles.length === 0) {
    return res.status(404).send("No changelog file found.");
  }

  const latestChangelog = changelogFiles[0].name; // Get the newest changelog file
  console.log(`Using latest changelog: ${latestChangelog}`);

  // ✅ Construct the Liquibase migration command with the latest changelog file
  const liquibaseCommand = `liquibase --changeLogFile=${latestChangelog} update \
    --url="${targetDBUrl}" --username="${targetUsername}" --password="${targetPassword}"`;

  // ✅ Execute the Liquibase update command
  exec(liquibaseCommand, (error, stdout, stderr) => {
    if (error) {
      console.error("Migration Error:", stderr);
      return res.status(500).send(`Error: ${stderr}`);
    }
    res.send(stdout || "Migration completed successfully.");
  });
});


// New: Fetch Database Performance Stats
const mysql = require("mysql2/promise"); // Ensure mysql2 is imported

app.post("/db-stats", async (req, res) => {
  const { dbUrl, dbUser, dbPassword } = req.body;

  if (!dbUrl || !dbUser) {
    return res.status(400).send("Database details are required.");
  }

  try {
    // ✅ Fix: Ensure the URL is in a valid format before parsing
    let formattedUrl = dbUrl.replace(/^jdbc:/, ""); // Remove 'jdbc:' if present
    const dbUrlObject = new URL(formattedUrl);

    const connection = await mysql.createConnection({
      host: dbUrlObject.hostname,
      port: dbUrlObject.port || 3306,
      user: dbUser,
      password: dbPassword,
      database: dbUrlObject.pathname.replace("/", ""), // Remove leading '/'
    });

    // Fetch existing stats
    const [performance] = await connection.query("SHOW GLOBAL STATUS LIKE 'Threads_connected';");
    const [schemaCount] = await connection.query("SELECT COUNT(*) as totalSchemas FROM INFORMATION_SCHEMA.SCHEMATA;");
    const [cpuUsage] = await connection.query("SHOW STATUS LIKE 'Threads_running';");
    const [queryCache] = await connection.query("SHOW STATUS LIKE 'Qcache_hits';");

    // Fetch memory usage
    const [memoryUsage] = await connection.query("SELECT VARIABLE_VALUE FROM performance_schema.global_status WHERE VARIABLE_NAME = 'Innodb_buffer_pool_bytes_data';");

    await connection.end();

    res.json({
      threadsConnected: performance[0]?.Value || 0,
      totalSchemas: schemaCount[0]?.totalSchemas || 0,
      threadsRunning: cpuUsage[0]?.Value || 0,
      queryCacheHits: queryCache[0]?.Value || 0,
      memoryUsed: memoryUsage[0]?.VARIABLE_VALUE ? (memoryUsage[0]?.VARIABLE_VALUE / (1024 * 1024)).toFixed(2) + " MB" : "N/A"
    });

  } catch (error) {
    console.error("Database Stats Error:", error.message);
    res.status(500).send(`Error fetching stats: ${error.message}`);
  }
});


app.listen(3000, () => console.log("Server running on port 3000"));
