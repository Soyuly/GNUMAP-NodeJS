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
  app.post(
      "/v1/convenient/", convenient.findConvenient
  );

  app.get(
      "v1/gnumap", convenient.gnumap
  );
};
