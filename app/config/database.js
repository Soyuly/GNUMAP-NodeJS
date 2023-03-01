const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host: process.env.DEV_MYSQL_HOST,
  port: process.env.DEV_MYSQL_PORT,
  user: process.env.DEV_MYSQL_USER,
  password: process.env.DEV_MYSQL_PASSWORD,
  database: process.env.DEV_MYSQL_DATABASE,
  connectionLimit: 20,
});

module.exports = {
  pool: pool,
};
