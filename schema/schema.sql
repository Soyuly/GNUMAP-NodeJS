CREATE TABLE building (
    num INT,
    name VARCHAR(128) NOT NULL,
    lat DECIMAL(25,20) NOT NULL,
    lng DECIMAL(25,20) NOT NULL
);

CREATE TABLE convenient (
    name VARCHAR(30) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    lat DECIMAL(25,20) NOT NULL,
    lng DECIMAL(25,20) NOT NULL,
    open VARCHAR(15) NOT NULL,
    close VARCHAR(15) NOT NULL,
    category VARCHAR(10) NOT NULL
);


CREATE TABLE revise (
    title VARCHAR(100) NOT NULL,
    body VARCHAR(500) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 학과외
INSERT INTO building VALUES(1	,	"대학본부"	,	"35.15388611"	,	"128.1016547");
INSERT INTO building VALUES(2	,	"중앙도서관"	,	"35.15322732"	,	"128.0995141");
INSERT INTO building VALUES(3	,	"학생회관, 인권센터"	,	"35.15363389"	,	"128.097418");
INSERT INTO building VALUES(4	,	"학술정보관, 교육정보전산원"	,	"35.15371327"	,	"128.0961159");
INSERT INTO building VALUES(5	,	"체육관"	,	"35.15540608"	,	"128.1030003");
INSERT INTO building VALUES(6	,	"GNU 어린이집"	,	"35.15644331"	,	"128.1034149");
INSERT INTO building VALUES(7	,	"GNU 컨벤션센터"	,	"35.15454116"	,	"128.1019735");
INSERT INTO building VALUES(8	,	"스포츠 컴플렉스"	,	"35.1551763"	,	"128.1059603");
INSERT INTO building VALUES(11	,	"고문헌도서관, 박물관"	,	"35.15551636"	,	"128.102272");
INSERT INTO building VALUES(21	,	"정문"	,	"35.15253828"	,	"128.1041715");
INSERT INTO building VALUES(22	,	"남문"	,	"35.1498732"	,	"128.0994059");
INSERT INTO building VALUES(23	,	"후문, 북문"	,	"35.15596872"	,	"128.1043112");
INSERT INTO building VALUES(24	,	"교양학관"	,	"35.15199191"	,	"128.0990859");
INSERT INTO building VALUES(25	,	"창업보육센터"	,	"35.15095411"	,	"128.1004711");
INSERT INTO building VALUES(27	,	"공동실험실습관"	,	"35.1531805"	,	"128.0947315");
INSERT INTO building VALUES(28	,	"BNIT, 산학협력관"	,	"35.15369039"	,	"128.0954077");
INSERT INTO building VALUES(29	,	"국제어학원"	,	"35.1541208"	,	"128.0988869");
INSERT INTO building VALUES(31	,	"남명학관"	,	"35.1562384"	,	"128.0999305");
INSERT INTO building VALUES(32	,	"학군단"	,	"35.15748659"	,	"128.0924735");
INSERT INTO building VALUES(34	,	"예절교육원"	,	"35.15358863"	,	"128.1033928");
INSERT INTO building VALUES(41	,	"정보나눔터"	,	"35.15278385"	,	"128.1039279");
INSERT INTO building VALUES(42	,	"야외공연장"	,	"35.1521731"	,	"128.1029512");
INSERT INTO building VALUES(43	,	"대운동장"	,	"35.15476861"	,	"128.1044623");
INSERT INTO building VALUES(44	,	"파워플랜트"	,	"35.15068491"	,	"128.0990985");
INSERT INTO building VALUES(49	,	"테이스장"	,	"35.15405361"	,	"128.1028092");
INSERT INTO building VALUES(61	,	"기숙사관리동"	,	"35.1584188"	,	"128.0995181");
INSERT INTO building VALUES(62	,	"1동"	,	"35.15747944"	,	"128.1002353");
INSERT INTO building VALUES(63	,	"2동"	,	"35.15769786"	,	"128.1000023");
INSERT INTO building VALUES(64	,	"3동"	,	"35.15793387"	,	"128.0998189");
INSERT INTO building VALUES(65	,	"4동"	,	"35.15800384"	,	"128.1005496");
INSERT INTO building VALUES(66	,	"개척관"	,	"35.15812787"	,	"128.0988008");
INSERT INTO building VALUES(67	,	"아람관"	,	"35.15739981"	,	"128.1010628");
INSERT INTO building VALUES(68	,	"6동"	,	"35.15735071"	,	"128.1015066");
INSERT INTO building VALUES(69	,	"7동"	,	"35.1576848"	,	"128.1014398");
INSERT INTO building VALUES(70	,	"5동"	,	"35.15850603"	,	"128.0988443");
INSERT INTO building VALUES(71	,	"8동"	,	"35.15668558"	,	"128.1013056");
INSERT INTO building VALUES(72	,	"9동"	,	"35.15672079"	,	"128.1018932");
INSERT INTO building VALUES(73	,	"10동"	,	"35.15674304"	,	"128.1009332");
INSERT INTO building VALUES(74	,	"11동"	,	"35.15697848"	,	"128.1003163");
INSERT INTO building VALUES(304	,	"예술관"	,	"35.15595423"	,	"128.1011997");
INSERT INTO building VALUES(407	,	"항공우주산학협력관"	,	"35.15430752"	,	"128.0929413");
INSERT INTO building VALUES(416	,	"공대부속공장"	,	"35.15630941"	,	"128.0948283");


-- 편의시설;
INSERT INTO convenient VALUES("GS25 기숙사후문점"	,	"055-755-7536"	,	"35.15843464"	,	"128.1005033"	,	"06:00"	,	"1:00"	,	"편의점");
INSERT INTO convenient VALUES("CU 경상대학교생활관점"	,	"055-772-0946"	,	"35.15839175"	,	"128.0997674"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("GS25 경상대생활관점"	,	"070-4006-0018"	,	"35.15695459"	,	"128.1007138"	,	"08:00"	,	"24:00"	,	"편의점");
INSERT INTO convenient VALUES("GS25 경상대정문점"	,	"055-762-8206"	,	"35.15671894"	,	"128.1018493"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 R경상대국제어학원점"	,	"055-772-0943"	,	"35.15445163"	,	"128.0986828"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 경상대교육문화점"	,	"055-577-0943"	,	"35.15530682"	,	"128.0992951"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 겅상대도서관점"	,	"055-772-0942"	,	"35.15326337"	,	"128.0995146"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 경상국립대학생회관점"	,	"055-772-0939"	,	"35.15366879"	,	"128.0975447"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("CU 경상대느티마루점"	,	"055-772-0955"	,	"35.15069704"	,	"128.0980096"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 R경상대공학관점"	,	"055-772-0954"	,	"35.15580677"	,	"128.0945966"	,	"24시간"	,	"24시간"	,	"편의점");
INSERT INTO convenient VALUES("NH농협은행 365코너 경상국립대학교지점"	,	"055-759-9851"	,	"35.15402002"	,	"128.1012998"	,	"24시간"	,	"24시간"	,	"ATM");
INSERT INTO convenient VALUES("NH농협은행 ATM 생활관"	,	"055-759-9851"	,	"35.15749881"	,	"128.1008309"	,	"24시간"	,	"24시간"	,	"ATM");
INSERT INTO convenient VALUES("경상국립대학교 우편취급국"	,	"055-753-2800"	,	"35.15323788"	,	"128.0976047"	,	"09:00"	,	"18:00"	,	"우체국");
INSERT INTO convenient VALUES("진주가좌동우체국"	,	"055-759-8400"	,	"35.15608798"	,	"128.1058108"	,	"09:00"	,	"18:00"	,	"우체국");
INSERT INTO convenient VALUES("드림ccp"	,	"772-0940"	,	"35.15608798"	,	"128.1058108"	,	"09:00"	,	"18:00"	,	"문구점");
INSERT INTO convenient VALUES("운동장1"	,	"055-772-4798"	,	"35.1514104"	,	"128.1008422"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("운동장2"	,	"055-772-4798"	,	"35.15702644"	,	"128.0927774"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("운동장3"	,	"055-772-4798"	,	"35.15478455"	,	"128.1044433"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("테니스장1"	,	"055-772-4798"	,	"35.15405366"	,	"128.1028038"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("테니스장2"	,	"055-772-4798"	,	"35.15658098"	,	"128.1026486"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("농구장1"	,	"055-772-4798"	,	"35.1569743"	,	"128.1010241"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("농구장2"	,	"055-772-4798"	,	"35.15465666"	,	"128.1028997"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("체육관"	,	"055-772-4798"	,	"35.15540833"	,	"128.1030004"	,	"예약필요"	,	"예약필요"	,	"운동");
INSERT INTO convenient VALUES("경영대 딸기방"	,	"055-772-1506"	,	"35.1539804"	,	"128.099708"	,	"24시간"	,	"24시간"	,	"딸기방");
INSERT INTO convenient VALUES("교직원식당"	,	"055-772-0931"	,	"35.15526777"	,	"128.0993769"	,	"11:30"	,	"13:30"	,	"식당");
INSERT INTO convenient VALUES("아람관"	,	"055-772-0700"	,	"35.15740635"	,	"128.1010876"	,	"7:30"	,	"19:00"	,	"식당");
INSERT INTO convenient VALUES("학생생활관8동"	,	"055-772-0700"	,	"35.15666828"	,	"128.1014727"	,	"24시간"	,	"24시간"	,	"프린터");
INSERT INTO convenient VALUES("학생생활관10동"	,	"055-772-0700"	,	"35.15688189"	,	"128.1007787"	,	"24시간"	,	"24시간"	,	"프린터");
INSERT INTO convenient VALUES("도서관"	,	"055-772-0522"	,	"35.15323426"	,	"128.099495"	,	"09:00"	,	"21:00"	,	"프린터");
INSERT INTO convenient VALUES("공대 라운지 건물 딸기방 건너편"	,	"055-772-1613"	,	"35.15323426"	,	"128.099495"	,	"24시간"	,	"24시간"	,	"프린터");
INSERT INTO convenient VALUES("커피홀베이커리 경상대생협점"	,	"055-772-0931"	,	"35.15349544"	,	"128.0975286"	,	"09:30"	,	"17:00"	,	"카페");
INSERT INTO convenient VALUES("경상대학교 북카페"	,	"055-772-0963"	,	"35.15551866"	,	"128.1022666"	,	"08:30"	,	"20:00"	,	"카페");
INSERT INTO convenient VALUES("헌혈의집 경상대센터"	,	"055-756-5161"	,	"35.15355263"	,	"128.0974334"	,	"09:20"	,	"18:00"	,	"헌혈의집");
