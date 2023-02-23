const convenientProvider = require("./convenientProvider");
const { sendSlackMessage } = require("../../../config/slack");

exports.getConvenients = async function (req, res) {
  const { curLat, curLng, category } = req.params;

  const convenientList = await convenientProvider.retrieveConvenient(
    curLat,
    curLng,
    category
  );
  console.log("확인");
  return res.send(convenientList);
};

exports.getConvenientDirection = async function (req, res) {
  const { curLat, curLng, destLat, destLng } = req.params;

  try {
    const convenientResult =
      await convenientProvider.retrieveConvenientDirection(
        curLat,
        curLng,
        destLat,
        destLng
      );

    return res.send(convenientResult);
  } catch (err) {
    return res.send(sendSlackMessage("error", err));
  }
};

exports.findConvenient = async function (req, res) {
  const { curLat, curLng, destLat, destLng } = req.params;

  return res.render("pathInfo.html", {
    lat: curLat,
    lng: curLng,
    tlat: destLat,
    tlng: destLng,
  });
};

exports.gnumap = async function (req, res) {
  return res.render("gnumap.html");
};
