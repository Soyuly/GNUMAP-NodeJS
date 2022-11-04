const mysql = require("mysql2/promise");
const { logger } = require("./winston");

// TODO: 본인의 DB 계정 입력
// const pool = mysql.createPool({
//   host: "127.0.0.1",
//   port: 3306,
//   user: "root",
//   password: "1234",
//   database: "gnumap",
// });

const pool = mysql.createPool({
  host: "203.255.3.66",
  port: "13306",
  user: "root",
  password: "1234",
  database: "gnumap",
});

module.exports = {
  pool: pool,
};
