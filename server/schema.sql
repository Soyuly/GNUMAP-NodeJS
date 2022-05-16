DROP DATABASE IF EXISTS gnumap;
CREATE DATABASE gnumap;
USE gnumap;

CREATE TABLE building (
  `num` INT NOT NULL PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  `img`  VARCHAR(100) NOT NULL,
  `info` VARCHAR(1000) NOT NULL,
  `lat` VARCHAR(10) NOT NULL,
  `lng` VARCHAR(10) NOT NULL
);

INSERT INTO building values(30,'컴퓨터과학관','/public/img/building/30.jpeg', '컴퓨터과학관', '35.1544492','128.0982524')

ALTER TABLE building MODIFY COLUMN `lng` VARCHAR(20) NOT NULL
  `lng` VARCHAR(20) NOT NULL,
)