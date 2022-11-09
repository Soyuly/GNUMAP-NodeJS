DROP DATABASE gnumap;

CREATE DATABASE gnumap;

use gnumap;

CREATE TABLE building (
    num INT,
    name VARCHAR(128) NOT NULL,
    lat DECIMAL(25,20) NOT NULL,
    lng DECIMAL(25,20) NOT NULL,
    college VARCHAR(10) NULL
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
INSERT INTO building VALUES(1	,	"대학본부"	,	"35.15388611"	,	"128.1016547" , "");
INSERT INTO building VALUES(2	,	"중앙도서관"	,	"35.15322732"	,	"128.0995141", "");
INSERT INTO building VALUES(3	,	"학생회관"	,	"35.15363389"	,	"128.097418", "");
INSERT INTO building VALUES(4	,	"학술정보관"	,	"35.15371327"	,	"128.0961159", "");
INSERT INTO building VALUES(5	,	"체육관"	,	"35.15540608"	,	"128.1030003", "");
INSERT INTO building VALUES(6	,	"GNU 어린이집"	,	"35.15644331"	,	"128.1034149", "");
INSERT INTO building VALUES(7	,	"GNU 컨벤션센터"	,	"35.15454116"	,	"128.1019735", "");
INSERT INTO building VALUES(8	,	"스포츠 컴플렉스"	,	"35.1551763"	,	"128.1059603", "");
INSERT INTO building VALUES(11	,	"박물관"	,	"35.15551636"	,	"128.102272", "");
INSERT INTO building VALUES(21	,	"정문"	,	"35.15253828"	,	"128.1041715", "");
INSERT INTO building VALUES(22	,	"남문"	,	"35.1498732"	,	"128.0994059", "");
INSERT INTO building VALUES(23	,	"북문(후문)"	,	"35.15596872"	,	"128.1043112", "");
INSERT INTO building VALUES(24	,	"교양학관"	,	"35.15199191"	,	"128.0990859", "");
INSERT INTO building VALUES(25	,	"창업보육센터"	,	"35.15095411"	,	"128.1004711", "");
INSERT INTO building VALUES(27	,	"공동실험실습관"	,	"35.1531805"	,	"128.0947315", "");
INSERT INTO building VALUES(28	,	"약학대학"	,	"35.15369039"	,	"128.0954077", "약대");
INSERT INTO building VALUES(29	,	"국제어학원"	,	"35.1541208"	,	"128.0988869", "");
INSERT INTO building VALUES(30	,	"컴퓨터과학관"	,	"35.154502519562996"	,	"128.09828840581238", "자대");
INSERT INTO building VALUES(31	,	"남명학관"	,	"35.1562384"	,	"128.0999305", "");
INSERT INTO building VALUES(32	,	"학군단"	,	"35.15748659"	,	"128.0924735", "");
INSERT INTO building VALUES(34	,	"예절교육원"	,	"35.15358863"	,	"128.1033928", "");
INSERT INTO building VALUES(41	,	"정보나눔터"	,	"35.15278385"	,	"128.1039279", "");
INSERT INTO building VALUES(42	,	"야외공연장"	,	"35.1521731"	,	"128.1029512", "");
INSERT INTO building VALUES(43	,	"대운동장"	,	"35.15476861"	,	"128.1044623", "");
INSERT INTO building VALUES(44	,	"파워플랜트"	,	"35.15068491"	,	"128.0990985", "");
INSERT INTO building VALUES(49	,	"테니스장"	,	"35.15405361"	,	"128.1028092", "");
INSERT INTO building VALUES(61	,	"관리동"	,	"35.1584188"	,	"128.0995181", "기숙사");
INSERT INTO building VALUES(62	,	"1동"	,	"35.15747944"	,	"128.1002353", "기숙사");
INSERT INTO building VALUES(63	,	"2동"	,	"35.15769786"	,	"128.1000023", "기숙사");
INSERT INTO building VALUES(64	,	"3동"	,	"35.15793387"	,	"128.0998189", "기숙사");
INSERT INTO building VALUES(65	,	"4동"	,	"35.15800384"	,	"128.1005496", "기숙사");
INSERT INTO building VALUES(66	,	"5동"	,	"35.15812787"	,	"128.0988008", "기숙사");
INSERT INTO building VALUES(67	,	"6,7동"	,	"35.15739981"	,	"128.1010628", "기숙사");
INSERT INTO building VALUES(68	,	"게스트하우스"	,	"35.15735071"	,	"128.1015066", "기숙사");
INSERT INTO building VALUES(69	,	"영어캠프 강의동"	,	"35.1576848"	,	"128.1014398", "기숙사");
INSERT INTO building VALUES(70	,	"LG 개척관"	,	"35.15850603"	,	"128.0988443", "기숙사");
INSERT INTO building VALUES(71	,	"8동"	,	"35.15668558"	,	"128.1013056", "기숙사");
INSERT INTO building VALUES(72	,	"9동"	,	"35.15672079"	,	"128.1018932", "기숙사");
INSERT INTO building VALUES(73	,	"10동"	,	"35.15674304"	,	"128.1009332", "기숙사");
INSERT INTO building VALUES(74	,	"11동"	,	"35.15697848"	,	"128.1003163", "기숙사");

INSERT INTO building VALUES(101	,	"인문1호관"	,	"35.15558329999967"	,	"128.09593669999998", "인문대");
INSERT INTO building VALUES(102	,	"인문2호관"	,	"35.15507239999959"	,	"128.09555850000012", "인문대");
INSERT INTO building VALUES(151	,	"사회과학대학"	,	"35.154697400000266"	,	"128.09618340000017", "사과대");
INSERT INTO building VALUES(201	,	"경영대학"	,	"35.1539308"	,	"128.09559600000009", "경영대");
INSERT INTO building VALUES(251	,	"법과대학"	,	"35.154247500000054"	,	"128.0958460000001", "법대");
INSERT INTO building VALUES(252	,	"대경학술관"	,	"35.15421900000008"	,	"128.0964047999996", "");
INSERT INTO building VALUES(301	,	"사범대학 1호관"	,	"35.154388700000034"	,	"128.0931907999997", "사범대");
INSERT INTO building VALUES(302	,	"사범대학 2호관"	,	"35.154388700000034"	,	"128.0931907999997", "사범대");
INSERT INTO building VALUES(303	,	"교육문화센터"	,	"35.15486849999999"	,	"128.0950850999996", "");
INSERT INTO building VALUES(304	,	"예술관"	,	"35.15598899999985"	,	"128.09698329999938", "");

INSERT INTO building VALUES(351	,	"과학1호관"	,	"35.15562499999976"	,	"128.09215459999933", "자대");
INSERT INTO building VALUES(352	,	"과학2호관"	,	"35.15562499999976"	,	"128.09215459999933", "자대");
INSERT INTO building VALUES(353	,	"과학3호관"	,	"35.1550056999997"	,	"128.09433359999986", "자대");
INSERT INTO building VALUES(354	,	"과학4호관"	,	"35.15607229999988"	,	"128.09260880000005", "자대");

INSERT INTO building VALUES(401	,	"공학1호관"	,	"35.15534730000022"	,	"128.08952859999954", "공대");
INSERT INTO building VALUES(402	,	"공학2호관"	,	"35.15534730000022"	,	"128.08952859999954", "공대");
INSERT INTO building VALUES(403	,	"공학3호관"	,	"35.155922200000056"	,	"128.0896214999996", "공대");
INSERT INTO building VALUES(404	,	"공학4호관"	,	"35.15578059999977"	,	"128.09040360000006", "공대");
INSERT INTO building VALUES(405	,	"공학5호관"	,	"35.15521400000007"	,	"128.09050359999932", "공대");
INSERT INTO building VALUES(406	,	"공학6호관"	,	"35.15423899999965"	,	"128.090034", "공대");
INSERT INTO building VALUES(407	,	"공학7호관"	,	"35.15430752"	,	"128.0929413", "공대");
INSERT INTO building VALUES(416	,	"부속공장"	,	"35.156322200000126"	,	"128.0904784999995", "");

INSERT INTO building VALUES(451	,	"농생1호관"	,	"35.152398699999814"	,	"128.0926907000001", "농대");
INSERT INTO building VALUES(452	,	"농생2호관"	,	"35.15283090000025"	,	"128.09332130000016", "농대");
INSERT INTO building VALUES(453	,	"농생3호관"	,	"35.152090399999764"	,	"128.09311569999932", "농대");
INSERT INTO building VALUES(454	,	"농생4호관"	,	"35.152080899999724"	,	"128.09164099999998", "농대");
INSERT INTO building VALUES(455	,	"농생5호관"	,	"35.151408000000124"	,	"128.09297780000006", "농대");
INSERT INTO building VALUES(456	,	"농생6호관"	,	"35.15308919999994"	,	"128.09160350000002", "농대");
INSERT INTO building VALUES(457	,	"농생7호관"	,	"35.152080899999724"	,	"128.09168389999948", "농대");
INSERT INTO building VALUES(458	,	"농생8호관"	,	"35.151681000000195"	,	"128.09150899999983", "농대");
INSERT INTO building VALUES(459	,	"농생9호관"	,	"35.151681000000195"	,	"128.09150899999983", "농대");

INSERT INTO building VALUES(501	,	"수의과대학"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");
INSERT INTO building VALUES(502	,	"수의과대학"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");
INSERT INTO building VALUES(503	,	"수의과대학"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");
INSERT INTO building VALUES(504	,	"수의과대학"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");
INSERT INTO building VALUES(505	,	"수의과대학"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");
INSERT INTO building VALUES(506	,	"수의과대학"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");


-- 편의시설;
INSERT INTO convenient VALUES("GS25 기숙사후문점"	,	"055-755-7536"	,	"35.15843464"	,	"128.1005033"	,	"06:00"	,	"1:00"	,	"편의점");
INSERT INTO convenient VALUES("CU 생활관점"	,	"055-772-0946"	,	"35.15839175"	,	"128.0997674"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("GS25 생활관점"	,	"070-4006-0018"	,	"35.15695459"	,	"128.1007138"	,	"08:00"	,	"24:00"	,	"편의점");
INSERT INTO convenient VALUES("GS25 경상대정문점"	,	"055-762-8206"	,	"35.15671894"	,	"128.1018493"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 국제어학원점"	,	"055-772-0943"	,	"35.15445163"	,	"128.0986828"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 교육문화점"	,	"055-577-0943"	,	"35.15530682"	,	"128.0992951"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 도서관점"	,	"055-772-0942"	,	"35.15326337"	,	"128.0995146"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 학생회관점"	,	"055-772-0939"	,	"35.15366879"	,	"128.0975447"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("CU 느티마루점"	,	"055-772-0955"	,	"35.15069704"	,	"128.0980096"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 공학관점"	,	"055-772-0954"	,	"35.15580677"	,	"128.0945966"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("NH농협은행 365코너"	,	"055-759-9851"	,	"35.15402002"	,	"128.1012998"	,	"00:00"	,	"23:59"	,	"ATM");
INSERT INTO convenient VALUES("NH농협은행 ATM생활관"	,	"055-759-9851"	,	"35.15749881"	,	"128.1008309"	,	"00:00"	,	"23:59"	,	"ATM");
INSERT INTO convenient VALUES("경상대 우편취급국"	,	"055-753-2800"	,	"35.15323788"	,	"128.0976047"	,	"09:00"	,	"18:00"	,	"우체국");
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
INSERT INTO convenient VALUES("경영대 딸기방"	,	"055-772-1506"	,	"35.1539804"	,	"128.099708"	,	"00:00"	,	"23:59"	,	"딸기방");
INSERT INTO convenient VALUES("교직원식당"	,	"055-772-0931"	,	"35.15526777"	,	"128.0993769"	,	"11:30"	,	"13:30"	,	"식당");
INSERT INTO convenient VALUES("아람관"	,	"055-772-0700"	,	"35.15740635"	,	"128.1010876"	,	"7:30"	,	"19:00"	,	"식당");
INSERT INTO convenient VALUES("학생생활관8동"	,	"055-772-0700"	,	"35.15666828"	,	"128.1014727"	,	"00:00"	,	"23:59"	,	"프린터");
INSERT INTO convenient VALUES("학생생활관10동"	,	"055-772-0700"	,	"35.15688189"	,	"128.1007787"	,	"00:00"	,	"23:59"	,	"프린터");
INSERT INTO convenient VALUES("도서관"	,	"055-772-0522"	,	"35.15323426"	,	"128.099495"	,	"09:00"	,	"21:00"	,	"프린터");
INSERT INTO convenient VALUES("공대 딸기방 건너편"	,	"055-772-1613"	,	"35.15323426"	,	"128.099495"	,	"00:00"	,	"23:59"	,	"프린터");
INSERT INTO convenient VALUES("커피홀베이커리 경상대생협점"	,	"055-772-0931"	,	"35.15349544"	,	"128.0975286"	,	"09:30"	,	"17:00"	,	"카페");
INSERT INTO convenient VALUES("경상대학교 북카페"	,	"055-772-0963"	,	"35.15551866"	,	"128.1022666"	,	"08:30"	,	"20:00"	,	"카페");
INSERT INTO convenient VALUES("헌혈의집 경상대센터"	,	"055-756-5161"	,	"35.15355263"	,	"128.0974334"	,	"09:20"	,	"18:00"	,	"헌혈의집");
