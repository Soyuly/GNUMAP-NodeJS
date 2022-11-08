// 건물 정보 오름차 순 또는 내림차 순 정렬
const sortJSON = function (data, key, type) {
  if (type == undefined) {
    type = "asc";
  }
  return data.sort(function (a, b) {
    var x = a[key];
    var y = b[key];
    if (type == "desc") {
      return x > y ? -1 : x < y ? 1 : 0;
    } else if (type == "asc") {
      return x < y ? -1 : x > y ? 1 : 0;
    }
  });
};

// 기존 데이터에 소요 거리 (distance), 시간 (time) 데이터 추가
function addDistanceAndTime(destinationList, curLat, curLng) {
  for (i = 0; i < destinationList.length; i++) {
    const distanceAndTime = getDistanceAndTime(
      curLat,
      curLng,
      destinationList[i].lat,
      destinationList[i].lng
    );

    destinationList[i].distance = distanceAndTime.distance;
    destinationList[i].time = distanceAndTime.time;
  }
  // 소요 거리에 따라, 오름차순 정렬
  sortJSON(destinationList, "distance", "asc");
}

// 출발지-도착지 사이 소요 거리, 시간 조회
function getDistanceAndTime(lat1, lng1, lat2, lng2) {
  if (lat1 == lat2 && lng1 == lng2) return 0;

  var radLat1 = (Math.PI * lat1) / 180;
  var radLat2 = (Math.PI * lat2) / 180;
  var theta = lng1 - lng2;
  var radTheta = (Math.PI * theta) / 180;
  var distance =
    Math.sin(radLat1) * Math.sin(radLat2) +
    Math.cos(radLat1) * Math.cos(radLat2) * Math.cos(radTheta);
  if (distance > 1) distance = 1;

  distance = Math.acos(distance);
  distance = (distance * 180) / Math.PI;
  distance = distance * 60 * 1.1515 * 1.609344 * 1000;

  // / 1000 => km 로 변환
  if (distance < 100) distance = Math.round((distance / 10) * 10);
  else distance = Math.round((distance / 100) * 100);

  // 보행자 평균 속도: 4.644 km/h -> time이 너무 적게 나와서 수정 (4.644 km/h -> 3.644 km/h)
  // 분 단위로 시간 변환 ( * 60 )
  const time = Math.round((distance / 1000 / 3.644) * 60);

  return { distance: distance, time: time };
}

module.exports = {
  addDistanceAndTime,
  getDistanceAndTime,
};
