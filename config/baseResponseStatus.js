module.exports = {
  // Success
  SUCCESS: { isSuccess: true, code: 1000, message: "성공" },

  BUILDING_NO_CONTENT: {
    isSuccess: false,
    code: 2004,
    message: "해당하는 건물 정보가 없습니다.",
  },

  // Building
  BUILDING_EMPTY: {
    isSuccess: false,
    code: 2000,
    message: "검색어를 입력해주세요.",
  },

  // Revise
  REVISE_TITLE_EMPTY : {
    isSuccess: false,
    code: 2000,
    message: "제목을 입력해주세요." },

  REVISE_BODY_EMPTY : {
    isSuccess:false,
    code:2000,
    message: "내용을 입력해주세요." },

  //Connection, Transaction 등의 서버 오류
  DB_ERROR: {
    isSuccess: false,
    code: 4000,
    message: "데이터 베이스 에러" },

  SERVER_ERROR: {
    isSuccess: false,
    code: 4001,
    message: "서버 에러" },
};
