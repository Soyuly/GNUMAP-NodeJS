const mysql = require("mysql");
const host = "localhost";

module.exports = {
  connection: mysql.createConnection({
    host: '203.255.3.246',
    user: "root",
    password: "18classgnumap",
    database: "gnumap",
  }),
};