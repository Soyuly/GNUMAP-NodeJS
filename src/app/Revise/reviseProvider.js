const { pool } = require("../../../config/database");
const { logger } = require("../../../config/winston");

const reviseDao = require("./reviseDao");

// Provider: Read 비즈니스 로직 처리

exports.retrieveRevise = async function () {
    const connection = await pool.getConnection(async(conn) => conn);
    const ReviseResult = await reviseDao.selectReviseInfo(connection);
    connection.release();

    return ReviseResult;
}

