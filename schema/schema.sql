DROP DATABASE gnumap;

CREATE DATABASE gnumap;

use gnumap;

CREATE TABLE building (
    num INT,
    name VARCHAR(128) NOT NULL,
    lat DECIMAL(25,20) NOT NULL,
    lng DECIMAL(25,20) NOT NULL,
    category VARCHAR(10) NULL
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
INSERT INTO building VALUES(21	,	"정문"	,	"35.15253828"	,	"128.1041715", "입구출구");
INSERT INTO building VALUES(22	,	"남문"	,	"35.1498732"	,	"128.0994059", "입구출구");
INSERT INTO building VALUES(23	,	"북문(후문)"	,	"35.15596872"	,	"128.1043112", "입구출구");
INSERT INTO building VALUES(24	,	"교양학관"	,	"35.15199191"	,	"128.0990859", "");
INSERT INTO building VALUES(25	,	"창업보육센터"	,	"35.15119505072284"	,	"128.10048811015864", "");
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
INSERT INTO building VALUES(44	,	"파워플랜트"	,	"35.150831239258125"	,	"128.0988645741221", "");
INSERT INTO building VALUES(49	,	"테니스장"	,	"35.15405361"	,	"128.1028092", "");
INSERT INTO building VALUES(61	,	"관리동"	,	"35.1584188"	,	"128.0995181", "기숙사");
INSERT INTO building VALUES(62	,	"1동"	,	"35.15747944"	,	"128.1002353", "기숙사");
INSERT INTO building VALUES(63	,	"2동"	,	"35.15769786"	,	"128.1000023", "기숙사");
INSERT INTO building VALUES(64	,	"3동"	,	"35.15793387"	,	"128.0998189", "기숙사");
INSERT INTO building VALUES(65	,	"4동"	,	"35.15800384"	,	"128.1005496", "기숙사");
INSERT INTO building VALUES(66	,	"5동"	,	"35.15812787"	,	"128.0988008", "기숙사");
INSERT INTO building VALUES(69	,	"영어캠프 강의동"	,	"35.1576848"	,	"128.1014398", "기숙사");
INSERT INTO building VALUES(70	,	"LG 개척관"	,	"35.15850603"	,	"128.0988443", "기숙사");
INSERT INTO building VALUES(71	,	"8동"	,	"35.15668558"	,	"128.1013056", "기숙사");
INSERT INTO building VALUES(72	,	"9동"	,	"35.15672079"	,	"128.1018932", "기숙사");
INSERT INTO building VALUES(73	,	"10동"	,	"35.15674304"	,	"128.1009332", "기숙사");
INSERT INTO building VALUES(74	,	"11동"	,	"35.15697848"	,	"128.1003163", "기숙사");

INSERT INTO building VALUES(101	,	"인문 1호관"	,	"35.15558329999967"	,	"128.09593669999998", "인문대");
INSERT INTO building VALUES(102	,	"인문 2호관"	,	"35.15507239999959"	,	"128.09555850000012", "인문대");
INSERT INTO building VALUES(151	,	"사회과학대학"	,	"35.154697400000266"	,	"128.09618340000017", "사과대");
INSERT INTO building VALUES(201	,	"경영대학"	,	"35.1539308"	,	"128.09559600000009", "경영대");
INSERT INTO building VALUES(251	,	"법과대학"	,	"35.154247500000054"	,	"128.0958460000001", "법대");
INSERT INTO building VALUES(252	,	"대경 학술관"	,	"35.15421900000008"	,	"128.0964047999996", "");
INSERT INTO building VALUES(301	,	"사범대학 1호관"	,	"35.15436908310011"	,	"128.09734831070926", "사범대");
INSERT INTO building VALUES(302	,	"사범대학 2호관"	,	"35.154832452857555"	,	"128.0974368409267", "사범대");
INSERT INTO building VALUES(303	,	"교육문화센터"	,	"35.15527879611906  "	,	"128.0991548434295", "교문센");
INSERT INTO building VALUES(304	,	"예술관"	,	"35.15598899999985"	,	"128.09698329999938", "");

INSERT INTO building VALUES(351	,	"과학 1호관"	,	"35.15515995569936"	,	"128.09535884762477", "자대");
INSERT INTO building VALUES(352	,	"과학 2호관"	,	"35.15544678437408"	,	"128.09628180155147", "자대");
INSERT INTO building VALUES(353	,	"과학 3호관"	,	"35.1549330781888"	,	"128.09851642361596", "자대");
INSERT INTO building VALUES(354	,	"과학 4호관"	,	"35.155990709597205"	,	"128.09668143778114", "자대");

INSERT INTO building VALUES(401	,	"공학 1호관"	,	"35.15473621108859"	,	"128.09387711846574", "공대");
INSERT INTO building VALUES(402	,	"공학 2호관"	,	"35.155273015735816"	,	"128.09406812595358", "공대");
INSERT INTO building VALUES(403	,	"공학 3호관"	,	"35.155837202750405"	,	"128.0942210920257", "공대");
INSERT INTO building VALUES(404	,	"공학 4호관"	,	"35.15578119814895"	,	"128.09443434446436", "공대");
INSERT INTO building VALUES(405	,	"공학 5호관"	,	"35.155153848532706"	,	"128.09478809709486", "공대");
INSERT INTO building VALUES(406	,	"공학 6호관"	,	"35.15425122251822"	,	"128.094186136711", "공대");
INSERT INTO building VALUES(407	,	"공학 7호관"	,	"35.15427813651754"	,	"128.0929518904107", "공대");
INSERT INTO building VALUES(416	,	"부속 공장"	,	"35.15629148356738"	,	"128.0948170576063", "");

INSERT INTO building VALUES(451	,	"농생 1호관"	,	"35.15219618234764"	,	"128.09668538440877", "농대");
INSERT INTO building VALUES(452	,	"농생 2호관"	,	"35.15281045512956"	,	"128.0975276579268", "농대");
INSERT INTO building VALUES(453	,	"농생 3호관"	,	"35.152082872611864"	,	"128.09725451092683", "농대");
INSERT INTO building VALUES(454	,	"농생 4호관"	,	"35.15148293961527"	,	"128.09706813012315", "농대");
INSERT INTO building VALUES(455	,	"농생 5호관"	,	"35.151449534618294"	,	"128.09727344226766", "농대");
INSERT INTO building VALUES(456	,	"농생 6호관"	,	"35.15311229780529"	,	"128.09604471838475", "농대");
INSERT INTO building VALUES(457	,	"농생 7호관"	,	"35.152139214951326"	,	"128.09551040287917", "농대");
INSERT INTO building VALUES(458	,	"농생 8호관"	,	"35.15178494534259"	,	"128.09581566778007", "농대");
INSERT INTO building VALUES(459	,	"농생 9호관"	,	"35.15196648916943"	,	"128.09617201254082", "농대");

INSERT INTO building VALUES(501	,	"수의대 1호관"	,	"35.15042269378093"	,	"128.09720204355426", "수의대");
INSERT INTO building VALUES(505	,	"수의과 5호관"	,	"35.150447800000066"	,	"128.0931338999999", "수의대");


-- 편의시설
INSERT INTO convenient VALUES("GS25 기숙사후문점"	,	"055-755-7536"	,	"35.15843464"	,	"128.1005033"	,	"06:00"	,	"1:00"	,	"편의점");
INSERT INTO convenient VALUES("CU 생활관점"	,	"055-772-0946"	,	"35.15839175"	,	"128.0997674"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("GS25 생활관점"	,	"070-4006-0018"	,	"35.15665597935926"	,	"128.10183470775894"	,	"08:00"	,	"24:00"	,	"편의점");
INSERT INTO convenient VALUES("GS25 경상대정문점"	,	"055-762-8206"	,	"35.15274546003277"	,	"128.10591371461217"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 국제어학원점"	,	"055-772-0943"	,	"35.15445163"	,	"128.0986828"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 교육문화점"	,	"055-577-0943"	,	"35.15530682"	,	"128.0992951"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 도서관점"	,	"055-772-0942"	,	"35.15326337"	,	"128.0995146"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 학생회관점"	,	"055-772-0939"	,	"35.15366879"	,	"128.0975447"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("CU 느티마루점"	,	"055-772-0955"	,	"35.15069704"	,	"128.0980096"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("이마트24 공학관점"	,	"055-772-0954"	,	"35.15580677"	,	"128.0945966"	,	"00:00"	,	"23:59"	,	"편의점");
INSERT INTO convenient VALUES("NH농협은행 365코너"	,	"055-759-9851"	,	"35.15402002"	,	"128.1012998"	,	"00:00"	,	"23:59"	,	"ATM");
INSERT INTO convenient VALUES("NH농협은행 ATM생활관"	,	"055-759-9851"	,	"35.15749881"	,	"128.1008309"	,	"00:00"	,	"23:59"	,	"ATM");
INSERT INTO convenient VALUES("우체국 365코너"	,	""	,	"35.15334528670123"	,	"128.09917821994958"	,	"00:00"	,	"23:59"	,	"ATM");
INSERT INTO convenient VALUES("경상대 우편취급국"	,	"055-753-2800"	,	"35.15323788"	,	"128.0976047"	,	"09:00"	,	"18:00"	,	"우체국");
INSERT INTO convenient VALUES("진주가좌동 우체국"	,	"055-759-8400"	,	"35.15608798"	,	"128.1058108"	,	"09:00"	,	"18:00"	,	"우체국");
INSERT INTO convenient VALUES("드림 ccp"	,	"772-0940"	,	"35.153279349796975"	,	"128.0975037764766"	,	"09:00"	,	"18:00"	,	"문구점");
INSERT INTO convenient VALUES("남문 운동장"	,	"055-772-4798"	,	"35.1514104"	,	"128.1008422"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("학군단 운동장"	,	"055-772-4798"	,	"35.15702644"	,	"128.0927774"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("후문 운동장"	,	"055-772-4798"	,	"35.15486469860186"	,	"128.10356096228003"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("정문 테니스장"	,	"055-772-4798"	,	"35.15405366"	,	"128.1028038"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("후문 테니스장"	,	"055-772-4798"	,	"35.156162446416985"	,	"128.10258529475968"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("기숙사 농구장"	,	"055-772-4798"	,	"35.1569743"	,	"128.1010241"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("후문 농구장"	,	"055-772-4798"	,	"35.15465666"	,	"128.1028997"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("체육관"	,	"055-772-4798"	,	"35.15540833"	,	"128.1030004"	,	"예약 필요"	,	"예약 필요"	,	"운동");
INSERT INTO convenient VALUES("경영대 딸기방"	,	"055-772-1506"	,	"35.1539804"	,	"128.099708"	,	"00:00"	,	"23:59"	,	"딸기방");
INSERT INTO convenient VALUES("자연대 딸기방(107호 옆)"	,	""	,	"35.15544678437408"	,	"128.09628180155147",	"00:00"	,	"23:59"	,	"딸기방");
INSERT INTO convenient VALUES("교직원 식당"	,	"055-772-0931"	,	"35.15526777"	,	"128.0993769"	,	"11:30"	,	"13:30"	,	"식당");
INSERT INTO convenient VALUES("아람관"	,	"055-772-0700"	,	"35.15740635"	,	"128.1010876"	,	"7:30"	,	"19:00"	,	"식당");
INSERT INTO convenient VALUES("학생생활관 8동"	,	"055-772-0700"	,	"35.15666828"	,	"128.1014727"	,	"00:00"	,	"23:59"	,	"프린터");
INSERT INTO convenient VALUES("학생생활관 10동"	,	"055-772-0700"	,	"35.15688189"	,	"128.1007787"	,	"00:00"	,	"23:59"	,	"프린터");
INSERT INTO convenient VALUES("도서관"	,	"055-772-0522"	,	"35.15323426"	,	"128.099495"	,	"09:00"	,	"21:00"	,	"프린터");
INSERT INTO convenient VALUES("공대라운지 프린터"	,	"055-772-1613"	,	"35.155646828155"	,	"128.09509101257802"	,	"00:00"	,	"23:59"	,	"프린터");
INSERT INTO convenient VALUES("커피홀베이커리 경상대생협점"	,	"055-772-0931"	,	"35.15349544"	,	"128.0975286"	,	"09:30"	,	"17:00"	,	"카페");
INSERT INTO convenient VALUES("북 카페"	,	"055-772-0963"	,	"35.155353473224636"	,	"128.10160039946106"	,	"08:30"	,	"20:00"	,	"카페");
INSERT INTO convenient VALUES("헌혈의 집 경상대센터"	,	"055-756-5161"	,	"35.15355263"	,	"128.0974334"	,	"09:20"	,	"18:00"	,	"헌혈의집");