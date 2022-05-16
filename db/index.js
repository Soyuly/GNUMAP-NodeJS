const mysql = require("mysql");
const host = "localhost";

module.exports = {
  connection: mysql.createConnection({
    host: '203.255.3.2463',
    user: "root",
    password: "18classgnuamp",
    database: "gnumap",
  }),
};