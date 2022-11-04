module.exports = function (app) {
  const building = require("./buildingController");
  // 1. 검색한 building 경로 (소요 시간, 거리) 조회 API
  app.get("/v1/building/:curLat/:curLng/:keyword", building.searchBuilding);
};

// TODO: 자동로그인 API (JWT 검증 및 Payload 내뱉기)
// JWT 검증 API
// app.get('/app/auto-login', jwtMiddleware, user.check);

// TODO: 탈퇴하기 API
