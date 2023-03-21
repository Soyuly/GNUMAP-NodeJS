create table gnumap.convenient
(
    name     varchar(30)     not null,
    phone    varchar(15)     not null,
    lat      decimal(25, 20) not null,
    lng      decimal(25, 20) not null,
    open     varchar(15)     not null,
    close    varchar(15)     not null,
    category varchar(10)     not null
);


insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('GS25 기숙사후문점', '055-755-7536', 35.15843464000000000000, 128.10050330000000000000, '06:00', '1:00', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('CU 생활관점', '055-772-0946', 35.15839175000000000000, 128.09976740000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('GS25 생활관점', '070-4006-0018', 35.15665597935926000000, 128.10183470775894000000, '08:00', '24:00', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('GS25 경상대정문점', '055-762-8206', 35.15274546003277000000, 128.10591371461217000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('이마트24 국제어학원점', '055-772-0943', 35.15445163000000000000, 128.09868280000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('이마트24 교육문화점', '055-577-0943', 35.15530682000000000000, 128.09929510000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('이마트24 도서관점', '055-772-0942', 35.15326337000000000000, 128.09951460000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('이마트24 학생회관점', '055-772-0939', 35.15366879000000000000, 128.09754470000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('CU 느티마루점', '055-772-0955', 35.15069704000000000000, 128.09800960000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('이마트24 공학관점', '055-772-0954', 35.15580677000000000000, 128.09459660000000000000, '00:00', '23:59', '편의점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('NH농협은행 365코너', '055-759-9851', 35.15402002000000000000, 128.10129980000000000000, '00:00', '23:59', 'ATM');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('NH농협은행 ATM생활관', '055-759-9851', 35.15749881000000000000, 128.10083090000000000000, '00:00', '23:59', 'ATM');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('우체국365코너', '', 35.15334528670123000000, 128.09917821994958000000, '00:00', '23:59', 'ATM');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('경상대 우편취급국', '055-753-2800', 35.15323788000000000000, 128.09760470000000000000, '09:00', '18:00', '우체국');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('진주가좌동 우체국', '055-759-8400', 35.15608798000000000000, 128.10581080000000000000, '09:00', '18:00', '우체국');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('드림 ccp', '772-0940', 35.15327934979697500000, 128.09750377647660000000, '09:00', '18:00', '문구점');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('남문 운동장', '055-772-4798', 35.15141040000000000000, 128.10084220000000000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('학군단 운동장', '055-772-4798', 35.15702644000000000000, 128.09277740000000000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('후문 운동장', '055-772-4798', 35.15486469860186000000, 128.10356096228003000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('정문 테니스장', '055-772-4798', 35.15405366000000000000, 128.10280380000000000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('후문 테니스장', '055-772-4798', 35.15616244641698500000, 128.10258529475968000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('기숙사 농구장', '055-772-4798', 35.15697430000000000000, 128.10102410000000000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('후문 농구장', '055-772-4798', 35.15465666000000000000, 128.10289970000000000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('체육관', '055-772-4798', 35.15540833000000000000, 128.10300040000000000000, '예약 필요', '예약 필요', '운동');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('경영대 딸기방', '055-772-1506', 35.15398040000000000000, 128.09970800000000000000, '00:00', '23:59', '딸기방');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('자연대 딸기방(107호 옆)', '', 35.15544678437408000000, 128.09628180155147000000, '00:00', '23:59', '딸기방');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('교직원 식당', '055-772-0931', 35.15526777000000000000, 128.09937690000000000000, '11:30', '13:30', '식당');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('아람관', '055-772-0700', 35.15740635000000000000, 128.10108760000000000000, '7:30', '19:00', '식당');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('중앙1식당', '', 35.15356383882574000000, 128.09768867122370000000, '09:00', '18:00', '식당');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('교육문화1층식당', '', 35.15487053291971000000, 128.09920147995877000000, '11:00', '14:00', '식당');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('학생생활관 8동', '055-772-0700', 35.15666828000000000000, 128.10147270000000000000, '00:00', '23:59', '프린터');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('학생생활관 10동', '055-772-0700', 35.15688189000000000000, 128.10077870000000000000, '00:00', '23:59', '프린터');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('도서관', '055-772-0522', 35.15323426000000000000, 128.09949500000000000000, '09:00', '21:00', '프린터');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('공대라운지 프린터', '055-772-1613', 35.15564682815500000000, 128.09509101257802000000, '00:00', '23:59', '프린터');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('커피홀베이커리 경상대생협점', '055-772-0931', 35.15349544000000000000, 128.09752860000000000000, '09:30', '17:00', '카페');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('북 카페', '055-772-0963', 35.15535347322463600000, 128.10160039946106000000, '08:30', '20:00', '카페');
insert into gnumap.convenient (name, phone, lat, lng, open, close, category) values ('헌혈의 집 경상대센터', '055-756-5161', 35.15355263000000000000, 128.09743340000000000000, '09:20', '18:00', '헌혈의집');
