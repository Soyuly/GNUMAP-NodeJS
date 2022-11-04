module.exports = function (app) {
  const convenient = require("./convenientController");

  app.get(
    "/v1/convenient/:curLat/:curLng/:category",
    convenient.getConvenients
  );
  app.get(
    "/v1/convenient/:curLat/:curLng/:destLat/:destLng",
    convenient.getConvenientDirection
  );
};
