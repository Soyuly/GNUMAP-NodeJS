// 모든 store 조회
async function selectBuilding(connection) {
  const selectBuildingQuery = `
                  SELECT *
                  FROM building;
                  `;
  const [buildingRows] = await connection.query(selectBuildingQuery);
  return buildingRows;
}

async function selectBuildingByName(connection, name, area) {
  const name_query = "%" + name + "%";
  const selectBuildingByNameQuery = `
    SELECT *
    FROM building
    WHERE ( (name LIKE ? OR category LIKE ?) AND area = ?);
    `;

  const [buildingRows] = await connection.query(selectBuildingByNameQuery, [
    name_query,
    name_query,
    area,
  ]);
  return buildingRows;
}

async function selectBuildingByNum(connection, num, area) {
  const selectBuildingByNumQuery = `
      SELECT *
      FROM building
      WHERE num = ? AND area = ?;
      `;
  const [buildingRows] = await connection.query(selectBuildingByNumQuery, [
    num,
    area,
  ]);
  return buildingRows;
}

async function seletBuildingByLatLng(conncetion, lat, lng) {
  const selectBuildingByLatLngQuery = `
      SELECT *
      FROM building
      `;
  const [buildingRows] = await connection.query(selectBuildingByLatLngQuery);
  return buildingRows;
}

module.exports = {
  selectBuilding,
  selectBuildingByName,
  selectBuildingByNum,
};
