const { pool } = require("../../../config/database");
const {
  addDistanceAndTime,
  getDistanceAndTime,
} = require("../../../config/directions");

const convenientDao = require("./convenientDao");

exports.retrieveConvenient = async function (curLat, curLng, category) {
  const connection = await pool.getConnection(async (conn) => conn);
  const convenientResult = await convenientDao.selectConvenient(
    connection,
    category
  );
  connection.release();
  addDistanceAndTime(convenientResult, curLat, curLng);
  return convenientResult;
};

exports.retrieveConvenientDirection = async function (
  curLat,
  curLng,
  destLat,
  destLng
) {
  return getDistanceAndTime(curLat, curLng, destLat, destLng);
};
