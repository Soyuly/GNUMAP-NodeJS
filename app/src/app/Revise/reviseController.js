const baseResponse = require("../../../config/baseResponseStatus");
const { response, errResponse } = require("../../../config/response");
const { WebClient } = require("@slack/web-api");
const { emit } = require("nodemon");
const { sendSlackMessage } = require("../../../config/slack");

/**
 * API No. 0
 * API Name : 요청사항 내용 슬랙 전송 API
 * [POST] /v1/revise
 */
exports.postMail = async function (req, res) {
  const { title, body } = req.body;

  if (!title) {
    return res.send(response(baseResponse.REVISE_TITLE_EMPTY));
  }

  if (!body) {
    return res.send(response(baseResponse.REVISE_BODY_EMPTY));
  }

  return res.send(sendSlackMessage(title, body));
};
