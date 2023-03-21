create table building
(
    id       int auto_increment
        primary key,
    num      int             not null,
    name     varchar(128)    not null,
    lat      decimal(25, 20) not null,
    lng      decimal(25, 20) not null,
    category varchar(10)     null,
    area     varchar(255)    null,
    constraint building_ibfk_1
        foreign key (area) references area (name)
);

create index area
    on building (area);

INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (4, 4, '도서관', 35.18077815011629600000, 128.09475837919427000000, '도서관', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (5, 5, '생명자원과학대학 2호관', 35.18124101304214000000, 128.09540130485053000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (6, 6, '박물관', 35.18189833654681000000, 128.09547050417672000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (7, 7, '상경 1호관', 35.18175910915480000000, 128.09491973710763000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (8, 1, '정문', 34.83579729750494600000, 128.39982579492190000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (9, 2, '수산관', 34.83583509406788000000, 128.39928259816676000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (10, 3, '수산가공관', 34.83634461437224000000, 128.39925842653028000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (11, 5, '해양생물교육연구센터', 34.83590556850080600000, 128.39844480585130000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (12, 6, '해양누리관', 34.83773359993926000000, 128.40015373155700000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (13, 7, '체육관', 34.83801538718649500000, 128.39916372090138000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (14, 9, '극저온기자재평가센터', 34.83819033130731000000, 128.39845065497704000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (15, 10, '척양관', 34.83888535720864000000, 128.40032081604997000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (16, 11, '해양과학관', 34.83929060141419000000, 128.39956791664164000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (17, 12, '해양과학도서관', 34.83921890919994000000, 128.39914036132163000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (18, 13, '공학관', 34.83974204061292000000, 128.39910821997080000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (19, 15, '학생생활관', 34.83973778001289000000, 128.39791110397547000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (20, 16, '여학생생활관', 34.83911846731586000000, 128.39788150154243000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (21, 17, '수자원연구센터', 34.83627829368220000000, 128.40116452457295000000, null, '통영');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (58, 1, '의학관(의과대학본관)', 35.17525407329908000000, 128.09416015334406000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (59, 2, '의학도서관', 35.17567899706811000000, 128.09401491155063000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (60, 3, '의과대학 교육관', 35.17605309334178500000, 128.09375921528160000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (61, 4, '의과대학 학습관 및 임상기술센터', 35.17752819206345500000, 128.09459404837483000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (62, 5, '학생생활관(홍지관)', 35.17721484306395000000, 128.09311339192460000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (63, 6, '경상국립대학교병원 생활관', 35.17663634606740000000, 128.09329774944340000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (64, 7, '간호대학 교육학습관', 35.17424421037701000000, 128.09470370225094000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (65, 8, '정문', 35.17419869542577000000, 128.09525193993410000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (66, 9, '경상국립대학교병원 장례식장', 35.17730439407818500000, 128.09517284889820000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (67, 10, '간호대학 복합교육센터 ', 35.17458483565789600000, 128.09441188956635000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (68, 11, '경상국립대학교병원 본관', 35.17640324090160000000, 128.09565473783536000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (69, 12, '의과대학 임상교수 교육연구동', 35.17581198751010000000, 128.09475765276855000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (70, 13, '경남지역암센터', 35.17536732735570000000, 128.09509198147504000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (71, 14, '응급센터 및 경남권역심뇌혈관질환센터', 35.17636632062853000000, 128.09674647851983000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (72, 15, '후문', 35.17586740157320000000, 128.09660256215560000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (73, 16, '북문', 35.17751649224083000000, 128.09364434601122000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (74, 17, '동남권류마티스퇴행성관절염센터', 35.17645005597547000000, 128.09446433332860000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (75, 18, '경상국립대학교병원 철골주차장', 35.17471066278996000000, 128.09544816076001000000, null, '의간');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (76, 1, '대학본부', 35.15388611000000000000, 128.10165470000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (77, 2, '중앙도서관', 35.15322732000000000000, 128.09951410000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (78, 3, '학생회관·인권센터', 35.15363389000000000000, 128.09741800000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (79, 4, '학술정보관', 35.15371327000000000000, 128.09611590000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (80, 5, '체육관', 35.15540608000000000000, 128.10300030000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (81, 6, '개방형 스포츠콤플렉스', 35.15504560271264000000, 128.10596130542874000000, '스콤', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (82, 7, 'GNU컨벤션센터·입학본부·인재개발원', 35.15454116000000000000, 128.10197350000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (83, 11, '박물관 및 고문헌도서관', 35.15551636000000000000, 128.10227200000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (84, 21, 'GNU어린이집', 35.15638896353777000000, 128.10344436652647000000, '입구출구', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (85, 22, '남문', 35.14987320000000000000, 128.09940590000000000000, '입구출구', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (86, 23, '북문(후문)', 35.15596872000000000000, 128.10431120000000000000, '입구출구', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (87, 24, '교양학관·교육혁신처', 35.15199191000000000000, 128.09908590000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (88, 25, '창업보육센터', 35.15119505072284000000, 128.10048811015864000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (89, 27, '공동실험실습관', 35.15318050000000000000, 128.09473150000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (90, 28, 'BNIT R&D 산학협력센터', 35.15369039000000000000, 128.09540770000000000000, '약대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (91, 29, '국제어학원', 35.15412080000000000000, 128.09888690000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (92, 30, '컴퓨터과학관', 35.15450251956299600000, 128.09828840581238000000, '자대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (93, 31, '남명학관', 35.15623840000000000000, 128.09993050000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (94, 32, '126학생군사교육단', 35.15748659000000000000, 128.09247350000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (95, 34, '예절교육관', 35.15358863000000000000, 128.10339280000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (96, 41, '정보나눔터', 35.15278385000000000000, 128.10392790000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (97, 42, '야외공연장', 35.15217310000000000000, 128.10295120000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (98, 43, '대운동장', 35.15476861000000000000, 128.10446230000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (99, 44, '파워플랜트', 35.15083123925812500000, 128.09886457412210000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (100, 49, '교직원테니스장', 35.15405361000000000000, 128.10280920000000000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (101, 61, '학생생활관 관리동', 35.15841880000000000000, 128.09951810000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (102, 62, '학생생활관 1동', 35.15747944000000000000, 128.10023530000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (103, 63, '학생생활관 2동', 35.15769786000000000000, 128.10000230000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (104, 64, '학생생활관 3동', 35.15793387000000000000, 128.09981890000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (105, 65, '학생생활관 4동', 35.15800384000000000000, 128.10054960000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (106, 66, '학생생활관 5동', 35.15812787000000000000, 128.09880080000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (107, 69, '영어캠프 강의동', 35.15785568870680000000, 128.10098388073675000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (108, 70, 'LG개척관', 35.15807593133939000000, 128.09881384130860000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (109, 71, '학생생활관 8동', 35.15668558000000000000, 128.10130560000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (110, 72, '학생생활관 9동', 35.15672079000000000000, 128.10189320000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (111, 73, '학생생활관 10동', 35.15674304000000000000, 128.10093320000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (112, 74, '학생생활관 11동', 35.15697848000000000000, 128.10031630000000000000, '기숙사', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (113, 101, '인문1호관', 35.15519841980916000000, 128.10031430480083000000, '인문대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (114, 102, '인문2호관', 35.15504586710227000000, 128.09974432660886000000, '인문대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (115, 151, '사회과학관', 35.15466829578186000000, 128.10038124318285000000, '사과대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (116, 201, '경영학관', 35.15396758379111500000, 128.09963104683780000000, '경영', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (117, 251, '법학관', 35.15436592558394000000, 128.09993271291580000000, '법학과', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (118, 252, '대경학술관', 35.15430867584740000000, 128.10053004042788000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (119, 301, '교육1호관', 35.15436908310011000000, 128.09734831070926000000, '사범대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (120, 302, '교육2호관', 35.15483245285755500000, 128.09743684092670000000, '사범대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (121, 303, '교육문화센터·평생교육원', 35.15527879611906000000, 128.09915484342950000000, '교문센', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (122, 304, '예술관', 35.15598487391683000000, 128.10129888208232000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (123, 351, '과학1호관', 35.15515995569936000000, 128.09535884762477000000, '자대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (124, 352, '과학2호관', 35.15544678437408000000, 128.09628180155147000000, '자대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (125, 353, '과학3호관', 35.15493307818880000000, 128.09851642361596000000, '자대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (126, 354, '과학4호관', 35.15599070959720500000, 128.09668143778114000000, '자대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (127, 401, '공학1호관', 35.15473621108859000000, 128.09387711846574000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (128, 402, '공학2호관', 35.15527301573581600000, 128.09406812595358000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (129, 403, '공학3호관', 35.15583720275040500000, 128.09422109202570000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (130, 404, '공학4호관', 35.15578119814895000000, 128.09443434446436000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (131, 405, '공학5호관', 35.15515384853270600000, 128.09478809709486000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (132, 406, '공학6호관', 35.15425122251822000000, 128.09418613671100000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (133, 407, '항공우주산학협력관', 35.15427813651754000000, 128.09295189041070000000, '공대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (134, 416, '부속 공장', 35.15629148356738000000, 128.09481705760630000000, '', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (135, 451, '농생1호관', 35.15219618234764000000, 128.09668538440877000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (136, 452, '농생2호관', 35.15281045512956000000, 128.09752765792680000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (137, 453, '농생3호관', 35.15208287261186400000, 128.09725451092683000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (138, 454, '농생4호관', 35.15148293961527000000, 128.09706813012315000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (139, 455, '농생5호관', 35.15144953461829400000, 128.09727344226766000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (140, 456, '농생6호관', 35.15311229780529000000, 128.09604471838475000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (141, 457, '농생7호관', 35.15213921495132600000, 128.09551040287917000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (142, 458, '농생8호관', 35.15178494534259000000, 128.09581566778007000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (143, 459, '농업생명과학관', 35.15196648916943000000, 128.09617201254082000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (144, 500, '농대식당(농대식당)', 35.15071483592736000000, 128.09803448734990000000, '농대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (145, 501, '수의대1호관', 35.15042269378093000000, 128.09720204355426000000, '수의대', '가좌');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (146, 8, '상경 2호관', 35.18158264122503000000, 128.09450020806190000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (147, 9, '교양학관', 35.18198921065298600000, 128.09488988940268000000, '교양', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (148, 10, '청담관', 35.18229689588384000000, 128.09525080277570000000, '학군단', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (149, 11, '자연과학 1호관', 35.18201249263755000000, 128.09430836720023000000, '자대', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (150, 12, '제3생활관 (실천관)', 35.18264717950328400000, 128.09488773645833000000, '기숙사', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (151, 13, '제2생활관 (탐구관)', 35.18224165795991000000, 128.09388329569276000000, '기숙사', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (152, 14, '제1생활관 (자각관)', 35.18244576445187000000, 128.09373782687240000000, '기숙사', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (153, 15, '구) 본관', 35.18092081730314000000, 128.09393146379998000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (154, 16, '대학본부', 35.18073320625572400000, 128.09324832382188000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (155, 17, '체육관', 35.18049548108090400000, 128.09262489419282000000, '운동', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (156, 18, '공학1호관', 35.18029860318868000000, 128.09196908121000000000, '공대', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (157, 19, '파워플랜트', 35.18010776591579000000, 128.09164268480163000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (158, 20, '공학 2호관', 35.17971674022902600000, 128.09202716461917000000, '공대', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (159, 21, '생명자원과학 1호관', 35.18032573753265500000, 128.09345693393317000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (160, 22, '공동실험실습관', 35.17993134028689000000, 128.09371511690870000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (161, 23, '공학3호관', 35.17974912531639000000, 128.09293325864428000000, '공대', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (162, 24, '기계 실습장', 35.17944093624212000000, 128.09212776323793000000, '실습', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (163, 25, '자동차 실습장', 35.17926564909834000000, 128.09207601897300000000, '실습', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (164, 26, '인테리어 실습장', 35.17914324576394000000, 128.09215671382458000000, '실습', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (165, 27, '공학4호관', 35.17933720066288600000, 128.09313631946510000000, '공대', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (166, 28, '산학협력관', 35.17948616494693000000, 128.09709576352262000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (167, 29, '제4생활관', 35.17877390823872000000, 128.09612565474680000000, '기숙사', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (168, 1, '100주년 기념관', 35.17966466704259000000, 128.09554756344970000000, '기념관', '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (169, 2, '학생회관 (종실관)', 35.18019533865038500000, 128.09517046311336000000, null, '칠암');
INSERT INTO gnumap_dev.building (id, num, name, lat, lng, category, area) VALUES (170, 3, '자연과학실험활동', 35.18078021405583000000, 128.09552685584450000000, null, '칠암');
