const convenientProvider = require("./convenientProvider");

exports.getConvenients = async function (req, res) {
  const { curLat, curLng, category } = req.params;
  console.log(req.params);

  const convenientList = await convenientProvider.retrieveConvenient(
    curLat,
    curLng,
    category
  );
  return res.send(convenientList);
};

exports.getConvenientDirection = async function (req, res) {
  const { curLat, curLng, destLat, destLng } = req.params;
  console.log(req.params);

  const convenientResult = await convenientProvider.retrieveConvenientDirection(
    curLat,
    curLng,
    destLat,
    destLng
  );
  return res.send(convenientResult);
};
