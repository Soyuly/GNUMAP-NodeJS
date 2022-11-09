const reviseProvider = require("./reviseProvider");
const reviseService = require("./reviseService");
const baseResponse = require("../../../config/baseResponseStatus");
const { response, errResponse } = require("../../../config/response");

const { WebClient } = require("@slack/web-api");
const { emit } = require("nodemon");

/**
 * API No. 1
 * API Name : revise 생성 API
 * [POST] /app/revise
 */
exports.postRevise = async function (req, res) {
  const { title, body } = req.body;

  if (!title) return res.send(response(baseResponse.REVISE_TITLE_EMPTY));

  if (!body) return res.send(response(baseResponse.REVISE_BODY_EMPTY));

  const reviseResponse = await reviseService.createRevise(title, body);

  return res.send(reviseResponse);
};

/**
 * API No. 2
 * API Name : revise 조회 API
 * [GET] /app/getRevise
 */
exports.getRevise = async function (req, res) {
  const reviseListResult = await reviseProvider.retrieveRevise();
  return res.send(reviseListResult);
};

/**
 * API No. 3
 * API Name : revise 메일 보내기 API
 * [POST] /app/postMail
 */
exports.postMail = async function (req, res) {
  const { title, body } = req.body;

  if (!title) return res.send(response(baseResponse.REVISE_TITLE_EMPTY));

  if (!body) return res.send(response(baseResponse.REVISE_BODY_EMPTY));

  const web = new WebClient(process.env.SLACK_BOT_TOKEN);

  web.chat.postMessage({ channel: "그누맵", text: `*${title}*\n${body}` });

  res.send({ title: title, body: body });
};
