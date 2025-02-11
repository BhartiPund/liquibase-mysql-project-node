const express = require('express');
const { exec } = require('child_process');
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

app.use(bodyParser.json());

app.post('/run-liquibase', (req, res) => {
  const { host, port, username, password, database, command } = req.body;

  // Constructing the Liquibase command
  const liquibaseCmd = `
    liquibase --url=jdbc:mysql://${host}:${port}/${database} \
    --username=${username} --password=${password} \
    --changeLogFile=changelog.xml ${command}
  `;

  // Executing the command
  exec(liquibaseCmd, (error, stdout, stderr) => {
    if (error) {
      res.json({ output: `Error: ${stderr}` });
    } else {
      res.json({ output: stdout });
    }
  });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
