module.exports = function(app){
    const revise = require('./reviseController');
    const jwtMiddleware = require('../../../config/jwtMiddleware');

    // 0. 테스트 API
    // app.get('/app/test', store.getTest);

    app.post('/v1/revise', revise.postRevise);

    app.get('/v1/getRevise', revise.getRevise);

    app.post('/v1/postMail', revise.postMail);

};


// TODO: 자동로그인 API (JWT 검증 및 Payload 내뱉기)
// JWT 검증 API
// app.get('/app/auto-login', jwtMiddleware, user.check);

// TODO: 탈퇴하기 API