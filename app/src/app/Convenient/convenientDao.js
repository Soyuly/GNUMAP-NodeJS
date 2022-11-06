// 편의점 목록 조회
async function selectConvenient(connection, category) {
  console.log("hi");
  const selectListConvenient = `
        SELECT *
        FROM convenient
        WHERE category = ?;
    `;
  const [convenientRows] = await connection.query(
    selectListConvenient,
    category
  );
  //   console.log(convenientRows);
  return convenientRows;
}

module.exports = {
  selectConvenient,
};
