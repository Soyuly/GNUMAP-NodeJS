module.exports = function (app) {
  const building = require("./buildingController");
  const { render, name } = require("ejs");
  // 1. 검색한 building 경로 (소요 시간, 거리) 조회 API

  function haltOnTimedout(req, res, next) {
    if (!req.timedout) next();
  }

  // view 경로 설정
  app.set("views", __dirname + "/../../views");
  // 화면 engine을 ejs로 설정
  app.set("view engine", "ejs");
  app.engine("html", require("ejs").renderFile);

  app.get("/v1/building/:curLat/:curLng/:keyword", building.searchBuilding);
  app.get(
    "/v1/path/:curLat/:curLng/:destLat/:destLng",
    building.showBuildingPath
  );
  app.get("/v1/gnumap", building.showGnuMap);
};

// TODO: 자동로그인 API (JWT 검증 및 Payload 내뱉기)
// JWT 검증 API
// app.get('/app/auto-login', jwtMiddleware, user.check);

// TODO: 탈퇴하기 API
