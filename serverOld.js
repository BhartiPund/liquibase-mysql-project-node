const express = require('express');
const { exec } = require('child_process');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());

// API Endpoint to run Liquibase commands
app.post('/run-liquibase', (req, res) => {
    const { command } = req.body;

    if (!command) {
        return res.status(400).send('No command provided');
    }

    // Execute Liquibase command
    exec('C:\\Liquibase\\liquibase.bat ' + command, (error, stdout, stderr) => {
        if (error) {
          return res.status(500).send(`Error: ${stderr}`);
        }
        res.send(stdout);
      }); 
});

app.listen(port, () => {
    console.log(`Liquibase Node.js server is running at http://localhost:${port}`);
});
