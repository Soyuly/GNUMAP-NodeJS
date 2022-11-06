const reviseProvider = require("./reviseProvider");
const {errResponse, response} = require("../../../config/response");
const baseResponse = require("../../../config/baseResponseStatus");
const {pool} = require("../../../config/database");
const reviseDao = require("./reviseDao");
const {logger} = require("../../../config/winston");

exports.createRevise = async function (title, body) {
    try {
        const insertReviseInfoParams = [title, body];

        const connection = await pool.getConnection(async (conn) => conn);
        const reviseResult = await reviseDao.insertReviseInfo(connection, insertReviseInfoParams);
        // console.log(`문의사항 추가 : ${reviseResult}`)
        connection.release();
        return response(baseResponse.SUCCESS);


    } catch (err) {
        logger.error(`App - createRevise Service error\n: ${err.message}`);
        return errResponse(baseResponse.DB_ERROR);
    }
};