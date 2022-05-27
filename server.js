const express = require("express");
const morgan = require("morgan");
const logger = morgan("dev");
const { render, name } = require("ejs");
const PORT = 8000;
const mysql = require("mysql2");
const app = express();
const fetch = require("node-fetch");
const http = require('http');
const { type } = require("os");
const sort = require('sortjson');


// view 경로 설정
app.set("views", __dirname + "/src/views");
// 화면 engine을 ejs로 설정
app.set("view engine", "ejs");
app.engine("html", require("ejs").renderFile);

app.use(express.json());
app.use(express.urlencoded());
// 기본 path를 /public으로 설정(css, javascript 등의 파일 사용을 위해)
app.use(express.static(__dirname + "/public"));
// 전송 로그를 기록
app.use(morgan('dev'));




const db = mysql.createConnection({
  host: "gnumap-mysql",
  user: "root",
  password: "gnumappbl",
  database: "gnumap",
});

db.connect((err) => {
  if (err) {
    console.log(err.message);
  }
  console.log('db connected');
});



//서버 실행: npm run start
app.listen(PORT, () => {
  console.log(`listenling ${PORT}`);
});

// 35.15386975661034,128.09749798808684

//라우터 설정
app.get("/", (req, res) => {
  const num = "30";
  const num2 = "컴퓨터";
  // db.query(`SELECT * FROM building WHERE building_num = ${num} OR building_name LIKE '%"${num2}"%'`,
  // db.query('UPDATE building SET building_lat="35.15371879778801", building_lag="128.09774562373815" where building_num=3 ',
  db.query('select * from building',
    function (err, result, filed) {
      console.log(filed);
      console.log(result);
    });
  return res.render("main.html", { title: "hi" });
});




app.post("/find", (req, res) => {
  const { lat, lng } = req.body;
  let { num } = req.body;

  num = num.replace(" ", "");
  num = num.replace("동", "");
  console.log(`find 도착: ${num}`);

  const query = [num, "%" + num + "%"];
  try {
    const selectQuery = db.query('SELECT * FROM building WHERE building_num = ? OR building_name LIKE ?; ', query,
      (err, result, filed) => {
        if (result == 0) {
          return res.send("error");
        }
        if (err) {
          console.log(err);
        }
        return result.map((found) => {
          // console.log(found);
          res.render("pathInfo.html", { lat: lat, lng: lng, tlat: found.building_lat, tlng: found.building_lag });
        }
        );
      });
  } catch {
    (err) => {
      return console.log(err);
    };
  }

});














app.post('/getInfoBuilding', async (req, res) => {
  const { curLat, curLng } = req.body;
  let { num } = req.body;
  num = num.replace("동", "");
  if (num.length > 10){
    return res.send(
      `<script>
        alert('근처 편의점 정보가 존재하지 않습니다.');
        location.href="/";
      </script>`
    );
  }
  //안드로이드는 애뮬레이터 상 기본 default 위치(curLat, curLng)가 미국으로 되어있음 => 직접 휴대폰에서 실시해야 정확한 값 도출함
  // console.log(curLat, curLng, num); 
  let destLat = "";
  let destLng = "";
  num = num.replace(" ", "");

  console.log(`getInfoBuilding 도착: ${num}`);
  const query = [num, "%" + num + "%"];
  const destInfo = [];

  function getData() {
    return new Promise(function (resolve, reject) {
    const selectQuery = db.query('SELECT * FROM building WHERE building_num LIKE ? OR building_name LIKE ?; ', query,
      (err, result, filed) => {
        if (result == 0) {
          return res.send(
            `<script>
              alert('근처 편의점 정보가 존재하지 않습니다.');
              location.href="/";
            </script>`
          );
        }
        if (err) {
          return console.log(err);//
        }
        result.map((found) => {
          destLat = found.building_lat;
          destLng = found.building_lag;
          console.log(`출발지안: ${curLat}, ${curLng}`);
          console.log(`목적지안: ${destLat}, ${destLng}`);
        });
        destInfo['destLat'] = destLat;
        destInfo['destLng'] = destLng;
        resolve(destInfo);
      });
    });
  }
  getData().then(function (resolvedData) {
    console.log(`출발지안: ${curLat}, ${curLng}`);
    console.log(`목적지안: ${destLat}, ${destLng}`);
    const info = {};
    const url = 'https://apis.openapi.sk.com/tmap/routes/pedestrian?version=1';
    const options = {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
        appKey: 'l7xxed2c734830ae4364975ef11e67a76e81'
      },
      body: JSON.stringify({
        angle: 0,
        speed: 0,
        reqCoordType: 'WGS84GEO',
        searchOption: '0',
        resCoordType: 'WGS84GEO',
        sort: 'index',
        startX: curLng,
        startY: curLat,
        endX: resolvedData['destLng'],
        endY: resolvedData['destLat'],
        startName: 'ss',
        endName: `${num}`,
      })
    };
    

    fetch(url, options)
      .then(res => res.json())
      .then((json) => {
        console.log(`제이슨: ${json.features[0]}`);

       
        const {
          properties: {
            totalDistance: distance,
            totalTime: time,
          }
        } = json.features[0];


        console.log(distance, time);
        info["distance"] = `${distance}m`;
        info["time"] = `${Math.round(time / 60)}분`;
        const jsonInfo = JSON.stringify(info);

        return res.send(jsonInfo);
        // return res.send(`${distance}m,${Math.round(time/60)}분`);
      })
      .catch(err => {
        console.log("에러 ㅅㄱ");
        return res.send(JSON.stringify({ 'distance': null, 'time': null }))
      });
  });
});




app.post('/getreviseInfo', async (req, res) => {
  const {building_num, request_building_name, request_building_location, request_revise } = req.body;

  try {
    // const selectQuery = db.query('CREATE TABLE request (request_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, building_num INT NOT NULL, request_buliding_name VARCHAR(128) NOT NULL, request_building_location TEXT NOT NULL, request_revise TEXT NOT NULL, FOREIGN KEY(building_num) REFERENCES building(building_num))',
     const selectQuery = db.query(`INSERT INTO request VALUES(NULL, '${request_building_name}', '${request_building_location}', '${request_revise}', '${building_num}')`,  
    // const selectQuery = db.query('SELECT * FROM request',
      (err, result, filed) => {
        if (result == 0) {
          return res.send("error");
        }
        if (err) {
          console.log(err);
        }
        console.log(result);
      })
  } catch {
    (err) => {
      return console.log(err);
    };
  }

  res.send('recieved');
})








app.post('/getInfoConvenient', async (req, res) => {
  const { curLat, curLng, number } = req.body;


  console.log(`hi${curLat}`, curLng, number);
  let convenient_info = [];
  let convenient_length = 0;
  const convenientCategory = {
    0: "편의점",
    1: "ATM",
    2: "우체국",
    3: "문구점",
    4: "운동",
    5: "딸기방",
    6: "식당",
    7: "프린터",
    8: "카페",
    9: "헌혈의집",
  };

  function getData() {
    return new Promise(function (resolve, reject) {
      const selectQuery = db.query(`SELECT * FROM convenient WHERE category = "${convenientCategory[number]}" `,
        async (err, result, filed) => {
          if (result == 0) {
            return res.send("error");
          }
          if (err) {
            return console.log(err);
          }
          convenient_length = result.length;

          // DB 정보 저장 (JSON 형식)
          for (let i = 0; i < convenient_length; i++) {
            convenient_info[i] = {
              name: result[i].convenient_name,
              image: result[i].convenient_image,
              phone: result[i].convenient_phone,
              lat: result[i].convenient_lat,
              lng: result[i].convenient_lng,
            };
          };
          resolve(convenient_info);
        });
    })
  }

  getData().then(function (resolvedData) {
    console.log(resolvedData);
    return res.send(resolvedData);
  });
}
);



app.post('/pathConvenient', async (req, res) => {

  const { curLat, curLng, destLat, destLng } = req.body;
  console.log(curLat, curLng, destLat, destLng);

  try {
    const pathInfo = {};
    const url = 'https://apis.openapi.sk.com/tmap/routes/pedestrian?version=1';
    const options = {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
        appKey: 'l7xxed2c734830ae4364975ef11e67a76e81'
      },
      body: JSON.stringify({
        angle: 0,
        speed: 0,
        reqCoordType: 'WGS84GEO',
        searchOption: '0',
        resCoordType: 'WGS84GEO',
        sort: 'index',
        startX: curLng,
        startY: curLat,
        endX: destLng,
        endY: destLat,
        startName: 'ss',
        endName: `aa`,
      })
    };


    fetch(url, options)
      .then(res => res.json())
      .then((json) => {

        const {
          properties: {
            totalDistance: distance,
            totalTime: time,
          }
        } = json.features[0];


        console.log(distance, time);
        pathInfo["distance"] = `${distance}m`;
        pathInfo["time"] = `${Math.round(time / 60)}분`;
        const jsonInfo = JSON.stringify(pathInfo);

        return res.send(jsonInfo);
        // return res.send(`${distance}m,${Math.round(time/60)}분`);
      })
      .catch(err => {
        console.log("에러 ㅅㄱ");
        return res.send(JSON.stringify({ 'distance': null, 'time': null }))
      });

  } catch {
    (err) => {
      console.log(err);
      return (JSON.stringify({ 'distance': null, 'time': null }))
    };
  }
})



app.post('/findConvenient', (req, res) => {
  const { curLat, curLng, destLat, destLng } = req.body; //현재 위치, 현재 경도
  console.log(`find 2도착: ${curLat} ${curLng} ${destLat} ${destLng}`);

  return res.render("pathInfo.html", { lat: curLat, lng: curLng, tlat: destLat, tlng: destLng });
  
});
