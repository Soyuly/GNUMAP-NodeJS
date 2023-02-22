const buildingProvider = require("./buildingProvider");

const baseResponse = require("../../../config/baseResponseStatus");
const { response, errResponse } = require("../../../config/response");

const regexEmail = require("regex-email");
const { emit } = require("nodemon");
const { pool } = require("../../../config/database");
const {
  addDistanceAndTime,
  getDistanceAndTime,
} = require("../../../config/directions");

/**
 * API No. 0
 * API Name : building 경로 (소요 시간, 소요 거리) API
 * [POST] /v1/building
 */

exports.searchBuilding = async function (req, res) {
  const { curLat, curLng } = req.params;
  let { keyword } = req.params;
  const regexInt = /[^0-9]/g; // [숫자 추출] 정규 표현식
  const regexEmpty = /^\s+|\s+$/gm; // [공백 제거] 정규 표현식
  const num = keyword.replace(regexInt, "");
  keyword = keyword.replace(regexEmpty, "");

  // 건물 번호나 동을 포함한 검색어를 입력하였을 경우,
  if (num == keyword || keyword.includes("동")) {
    keyword = parseInt(num);
  }

  // 건물 명으로 입력
  if (typeof keyword == "string") {
    const buildingResult = await buildingProvider.retrieveBuildingByNameOrNum(
      keyword,
      curLat,
      curLng
    );
    return res.send(buildingResult);
  }

  // 건물 번호로 입력
  else {
    const buildingResult = await buildingProvider.retrieveBuildingByNameOrNum(
      keyword,
      curLat,
      curLng
    );
    return res.send(buildingResult);
  }
};

/**
 * API No. 1
 * API Name : building 경로 화면 표시 API
 * [POST] /v1/building
 */

exports.showBuildingPath = async (req, res) => {
  const { curLat, curLng, destLat, destLng } = req.params;
  data = {
    curLat: curLat,
    curLng: curLng,
    destLat: destLat,
    destLng: destLng,
  };
  const { distance, time } = getDistanceAndTime(
    curLat,
    curLng,
    destLat,
    destLng
  );

  if (time > 90 && distance > 5000) {
    return res.render("long_path.html", { lat: destLat, lng: destLng });
  }

  return res.render("path.html", data);
};

exports.showGnuMap = async (req, res) => {
  return res.render("gnumap.html");
};
