const mysql = require("mysql2/promise");
const { logger } = require("./winston");

// TODO: 본인의 DB 계정 입력
const pool = mysql.createPool({
  host: "203.255.3.66",
  port: 13306,
  user: "root",
  password: "1234",
  database: "gnumap",
});

// const pool = mysql.createPool({
//   host: process.env.DEV_MYSQL_HOST,
//   port: process.env.DEV_MYSQL_PORT,
//   user: process.env.DEV_MYSQL_USER,
//   password: process.env.DEV_MYSQL_PASSWORD,
//   database: process.env.DEV_MYSQL_DATABASE,
// });

module.exports = {
  pool: pool,
};
