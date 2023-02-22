module.exports = function (app) {
  const revise = require("./reviseController");

  // 1. 슬랙 메시지 전송 API
  app.post("/v1/revise", revise.postMail);
};

// TODO: 자동로그인 API (JWT 검증 및 Payload 내뱉기)
// JWT 검증 API
// app.get('/app/auto-login', jwtMiddleware, user.check);

// TODO: 탈퇴하기 API
