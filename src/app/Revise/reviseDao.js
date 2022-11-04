async function insertReviseInfo(connection, title, body) {
    const insertReviseInfoQuery = `
        INSERT INTO revise(title, body)
        VALUES (?, ?);
        `;
    const insertReviseInfoRow = await connection.query(
        insertReviseInfoQuery,
        title,
        body
    );

    return insertReviseInfoRow;
}

async function selectReviseInfo(connection) {
    const selectReviseListQuery = `
                SELECT *
                FROM revise;
                `;
    const [reviseRows] = await connection.query(selectReviseListQuery);
    return reviseRows;
}


module.exports = {
    insertReviseInfo,
    selectReviseInfo
};
