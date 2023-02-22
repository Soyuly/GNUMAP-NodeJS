const https = require("https");
const http = require("http");
const fs = require("fs");

const express = require("./config/express");

const HTTP_PORT = 8000;
const HTTPS_PORT = 8443;

app = express();

const server = http.createServer(app).listen(HTTP_PORT);
// server.keepAliveTimeout = 300 * 1000;
// server.headersTimeout = 300 * 1000;
