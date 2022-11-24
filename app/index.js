const https = require("https");
const http = require("http");
const fs = require("fs");

const express = require("./config/express");

const HTTP_PORT = 8000;
const HTTPS_PORT = 8443;

app = express();

const options = {
  key: fs.readFileSync("./https/rootca.key"),
  cert: fs.readFileSync("./https/rootca.crt"),
};

http.createServer(app).listen(HTTP_PORT);
https.createServer(options, app).listen(HTTPS_PORT);
