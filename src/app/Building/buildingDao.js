// 모든 store 조회
async function selectBuilding(connection) {
  const selectBuildingQuery = `
                  SELECT *
                  FROM building;
                  `;
  const [buildingRows] = await connection.query(selectBuildingQuery);
  return buildingRows;
}

async function selectBuildingByName(connection, name) {
  const query = "%" + name + "%";
  const selectBuildingByNameQuery = `
    SELECT *
    FROM building
    WHERE name
    LIKE ?;
    `;
  const [buildingRows] = await connection.query(
    selectBuildingByNameQuery,
    query
  );
  return buildingRows;
}

async function selectBuildingByNum(connection, num) {
  const selectBuildingByNumQuery = `
      SELECT *
      FROM building
      WHERE num = ?;
      `;
  const [buildingRows] = await connection.query(selectBuildingByNumQuery, num);
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
