const app = require("./server");
const PORT = 8000;
const session = require("express-session");


//서버 실행: npm run start
app.listen(PORT, () => {
  console.log(`listenling ${PORT}`);
});