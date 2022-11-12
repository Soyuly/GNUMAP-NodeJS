const { WebClient } = require("@slack/web-api");
const baseResponseStatus = require("./baseResponseStatus");
const { errResponse, response } = require("./response");

function sendSlackMessage(title, body) {
  try {
    const web = new WebClient(process.env.SLACK_BOT_TOKEN);

    web.chat.postMessage({ channel: "그누맵", text: `*${title}*\n${body}` });
    return response(baseResponseStatus.SUCCESS);
  } catch (err) {
    return errResponse(baseResponseStatus.SLACK_ERROR);
  }
}

module.exports = {
  sendSlackMessage,
};
