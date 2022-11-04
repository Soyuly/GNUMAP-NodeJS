const { pool } = require("../../../config/database");
const { addDistanceAndTime } = require("../../../config/directions");
const baseResponse = require("../../../config/baseResponseStatus");
const { response, errResponse } = require("../../../config/response");
const { logger } = require("../../../config/winston");

const buildingDao = require("./buildingDao");

// Provider: Read 비즈니스 로직 처리
exports.retrieveBuildingByNameOrNum = async function (keyword, curLat, curLng) {
  if (typeof keyword == "string") {
    const connection = await pool.getConnection(async (conn) => conn);
    const buildingResult = await buildingDao.selectBuildingByName(
      connection,
      keyword
    );
    // 건물 이름에 해당하는 건물 정보가 없을 경우,
    if (!isNaN(buildingResult)) {
      logger.error("as");
      logger.error(
        "v1 - retrieveBuilding Provider 204_NO_CONTENT error By name "
      );
      return response(baseResponse.BUILDING_NO_CONTENT);
    }

    addDistanceAndTime(buildingResult, curLat, curLng);
    connection.release();

    return buildingResult;
  } else {
    // 빈 검색어 일 경우,
    if (isNaN(keyword)) {
      logger.error("v1 - retrieveBuilding Provider Empty error");
      return response(baseResponse.BUILDING_EMPTY);
    }

    const connection = await pool.getConnection(async (conn) => conn);
    const buildingResult = await buildingDao.selectBuildingByNum(
      connection,
      keyword
    );
    connection.release();
    // 건물 번호에 해당하는 건물 정보가 없을 경우,
    if (!isNaN(buildingResult)) {
      logger.error("aasss");
      logger.error(
        "v1 - retrieveBuilding Provider 204_NO_CONTENT error By num "
      );
      return response(baseResponse.BUILDING_NO_CONTENT);
    }

    addDistanceAndTime(buildingResult, curLat, curLng);
    return buildingResult;
  }
};
