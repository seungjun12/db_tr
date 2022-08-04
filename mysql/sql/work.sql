USE Incheon;

INSERT INTO member(
	name
    ,id
    ,pwd
    ,gender
    ,email
    ,personalInformation
    ,dob
    ,address
)
VALUES(
	"표인숙"
    ,"java777"
    ,"shiro"
    ,1
    ,"java777@naver.com"
    ,0
    ,"2000.07.02"
    ,"경기 파주시 문산읍 문산역로 94"
)
;

INSERT INTO member_phone(
	divv
    ,number
    ,member_seq
)
Values(
	9
    ,"010-4345-5555"
    ,3
)
;

INSERT INTO seat(
	divv
    ,divv2
    ,number
    ,seat
)
VALUES(
	
)
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `divv1` TINYINT NULL COMMENT '1:1루, 2:3루 3:센터 4:외야',
  `divv2` TINYINT NULL COMMENT '1:1층 2:2층 3:4층',
  `seat` VARCHAR(45) NULL COMMENT '좌석\n1.일반석 2.이마트 바베큐존 3.외야패밀리 4.홈런커플존 5.초가정자 6.몰리스 그린존 7.레드석 8.테이블석 9.퍼플석 10.스카이탁자석\n11.v존',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat_information` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_sseq` INT NOT NULL,
  `ticket_pay_tpseq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seat_information_seat1_idx` (`seat_sseq` ASC) VISIBLE,
  INDEX `fk_seat_information_ticket_pay1_idx` (`ticket_pay_tpseq` ASC) VISIBLE,
  CONSTRAINT `fk_seat_information_seat1`
    FOREIGN KEY (`seat_sseq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seat_information_ticket_pay1`
    FOREIGN KEY (`ticket_pay_tpseq`)
    REFERENCES `Incheon`.`ticket_pay` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

Insert INTO seat(
	divv1
    ,divv2
    ,seat
)
VALUES(
	1
    ,1
    ,"레드석"
)
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `divPlace` TINYINT NULL COMMENT '1:1루, 2:3루 3:센터 4:외야',
  `divSeat` VARCHAR(45) NULL COMMENT '좌석\n1.일반석 2.이마트 바베큐존 3.외야패밀리 4.홈런커플존 5.초가정자 6.몰리스 그린존 7.레드석 8.테이블석 9.퍼플석 10.스카이탁자석\n11.v존',
  `seatNumber` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat_information` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_sseq` INT NOT NULL,
  `ticket_pay_tpseq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seat_information_seat1_idx` (`seat_sseq` ASC) VISIBLE,
  INDEX `fk_seat_information_ticket_pay1_idx` (`ticket_pay_tpseq` ASC) VISIBLE,
  CONSTRAINT `fk_seat_information_seat1`
    FOREIGN KEY (`seat_sseq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seat_information_ticket_pay1`
    FOREIGN KEY (`ticket_pay_tpseq`)
    REFERENCES `Incheon`.`ticket_pay` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

INSERT INTO seat(
	divPlace
    ,divSeat
    ,seatNumber
)
VALUES(
	1
    ,7
    ,120
)
;

SELECT * FROM seat;

ALTER TABLE ticket_pay DROP COLUMN ticket_seq;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NULL COMMENT '1:1루, 2:3루 3:센터 4:외야',
  `seat` VARCHAR(45) NULL COMMENT '좌석\n1.일반석 2.이마트 바베큐존 3.외야패밀리 4.홈런커플존 5.초가정자 6.몰리스 그린존 7.레드석 8.테이블석 9.퍼플석 10.스카이탁자석\n11.v존',
  `seatNumber` INT NULL COMMENT '좌석번호',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat_information` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_seq` INT NOT NULL,
  `ticket_pay_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seat_information_seat1_idx` (`seat_seq` ASC) VISIBLE,
  INDEX `fk_seat_information_ticket_pay1_idx` (`ticket_pay_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seat_information_seat1`
    FOREIGN KEY (`seat_seq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seat_information_ticket_pay1`
    FOREIGN KEY (`ticket_pay_seq`)
    REFERENCES `Incheon`.`ticket_pay` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`member` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL COMMENT '이름',
  `id` VARCHAR(45) NULL COMMENT '아이디',
  `pwd` VARCHAR(45) NULL COMMENT '비밀번호',
  `gender` TINYINT NULL COMMENT '성별',
  `email` VARCHAR(45) NULL COMMENT '이메일',
  `personalAgree` TINYINT NULL COMMENT '개인정보동의',
  `dob` VARCHAR(45) NULL COMMENT '생년월일',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`memberPhone` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `member_seq` INT NOT NULL,
  `number` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_member_phone_member_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_member_phone_member`
    FOREIGN KEY (`member_seq`)
    REFERENCES `Incheon`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`registerConfirm` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `member_seq` INT NOT NULL,
  `registerDob` DATE NULL,
  `registerNumber` INT NULL,
  `registerName` VARCHAR(45) NULL,
  `dateUse` INT NULL,
  `deleteDate` DATE NULL,
  `state` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_registerConfirm_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_registerConfirm_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `Incheon`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

DROP TABLE member_phone;

CREATE TABLE IF NOT EXISTS `Incheon`.`memberPhone` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `member_seq` INT NOT NULL,
  `number` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_memberPhone_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_memberPhone_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `Incheon`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
CREATE TABLE IF NOT EXISTS `Incheon`.`ticketPay` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `price` VARCHAR(45) NULL COMMENT '가격',
  `commison` VARCHAR(45) NULL COMMENT '수수료',
  `discount` VARCHAR(45) NULL COMMENT '할인',
  `ticketPaySelect` VARCHAR(45) NULL COMMENT '결제방법선택',
  `recipt` VARCHAR(45) NULL,
  `cancelDob` VARCHAR(45) NULL COMMENT '취소기한',
  `member_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_ticketPay_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_ticketPay_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `Incheon`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatInformation` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `ticketPay_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seatInformation_ticketPay1_idx` (`ticketPay_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seatInformation_ticketPay1`
    FOREIGN KEY (`ticketPay_seq`)
    REFERENCES `Incheon`.`ticketPay` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NULL COMMENT '1루,3루,중앙,외야',
  `seatGrade` VARCHAR(45) NULL COMMENT '좌석등급\n1.응원지정석, 2.의자지정석,3.테이블석,4.스카이테이블석,5.일반석 6.랜더스 라이브존 7.홈런커플존 8.외야패밀리 9.이마트바베큐존 10.초가정자 11외야 파티덱 12.몰리스 그린존',
  `seatNumber` INT NULL,
  `seatInformation_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seat_seatInformation1_idx` (`seatInformation_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seat_seatInformation1`
    FOREIGN KEY (`seatInformation_seq`)
    REFERENCES `Incheon`.`seatInformation` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

ALTER TABLE member ADD COLUMN address varchar(45);

INSERT INTO member(
	name
    ,id
    ,pwd
    ,gender
    ,email
    ,personalAgree
    ,dob
    ,address
)
VALUES(
	"류석호"
    ,"tjrgh"
    ,"qwer"
    ,0
    ,"tjrgh@naver.com"
    ,0
    ,"1998.01.23"
    ,"서울 송파구 올림픽로 240"
)
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NULL COMMENT '1루,3루,중앙,외야',
  `seatGrade` VARCHAR(45) NULL COMMENT '좌석등급\n1.응원지정석, 2.의자지정석,3.테이블석,4.스카이테이블석,5.일반석 6.랜더스 라이브존 7.홈런커플존 8.외야패밀리 9.이마트바베큐존 10.초가정자 11외야 파티덱 12.몰리스 그린존',
  `seatNumber` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatInformation` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_seq` INT NOT NULL,
  `ticketPay_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seatInformation_seat1_idx` (`seat_seq` ASC) VISIBLE,
  INDEX `fk_seatInformation_ticketPay1_idx` (`ticketPay_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seatInformation_seat1`
    FOREIGN KEY (`seat_seq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seatInformation_ticketPay1`
    FOREIGN KEY (`ticketPay_seq`)
    REFERENCES `Incheon`.`ticketPay` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

ALTER TABLE ticketPay CHANGE COLUMN price ticketPrice varchar(45);

ALTER TABLE ticketPay ADD COLUMN price varchar(45);

ALTER TABLE seat ADD COLUMN seatPrice varchar(45);

CREATE TABLE IF NOT EXISTS `Incheon`.`purchase` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_seq` INT NOT NULL,
  `ticketPay_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seatInformation_seat1_idx` (`seat_seq` ASC) VISIBLE,
  INDEX `fk_seatInformation_ticketPay1_idx` (`ticketPay_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seatInformation_seat1`
    FOREIGN KEY (`seat_seq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seatInformation_ticketPay1`
    FOREIGN KEY (`ticketPay_seq`)
    REFERENCES `Incheon`.`ticketPay` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

ALTER TABLE registerConfirm ADD COLUMN count INT AFTER dateUse;

ALTER TABLE registerConfirm modify COLUMN registerNumber varchar(45);

ALTER TABLE registerConfirm modify COLUMN dateUse varchar(45);

SELECT*FROM member;

SELECT*FROM memberPhone;

SELECT*FROM registerConfirm;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatNumber` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `blockDiv` INT NULL COMMENT '블록 나누기',
  `rowDiv` VARCHAR(45) NULL COMMENT '행 나누기',
  `numberDiv` INT NULL COMMENT '좌석번호',
  `seat_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_seatNumber_seat1_idx` (`seat_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seatNumber_seat1`
    FOREIGN KEY (`seat_seq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

ALTER TABLE seat DROP COLUMN place;

ALTER TABLE seat ADD COLUMN seatPlace varchar(45) AFTER seatNumber;

ALTER TABLE seat MODIFY COLUMN seatPlace varchar(45) AFTER seq; 

ALTER TABLE seat DROP COLUMN seatPrice;

ALTER TABLE ticketPay DROP COLUMN ticketPrice;

ALTER TABLE ticketPay DROP COLUMN recipt;

ALTER TABLE ticketPay DROP COLUMN price;

ALTER TABLE ticketPay MODIFY COLUMN member_seq varchar(45) AFTER seq; 

SELECT*FROM registerConfirm;

CREATE TABLE IF NOT EXISTS `Incheon`.`games` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `dob` VARCHAR(45) NULL COMMENT '경기날짜',
  `where` VARCHAR(45) NULL COMMENT '경기장',
  `time` TIME NULL COMMENT '경기 시작 시간',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seatPlace` NVARCHAR(45) NULL COMMENT '좌석위치\n1.1루 2.3루 3.중앙 4.외야',
  `seatGrade` VARCHAR(45) NULL COMMENT '좌석등급\n1.응원지정석, 2.의자지정석,3.테이블석,4.스카이테이블석,5.일반석 6.랜더스 라이브존 7.홈런커플존 8.외야패밀리 9.이마트바베큐존 10.초가정자 11외야 파티덱 12.몰리스 그린존',
  `seatPrice` VARCHAR(45) NULL COMMENT '좌석가격',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatNumber` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_seq` INT NOT NULL,
  `blockDiv` INT NULL COMMENT '블록 나누기',
  `rowDiv` VARCHAR(45) NULL COMMENT '행 나누기',
  `numberDiv` INT NULL COMMENT '좌석번호',
  PRIMARY KEY (`seq`),
  INDEX `fk_seatNumber_seat1_idx` (`seat_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seatNumber_seat1`
    FOREIGN KEY (`seat_seq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`purchase` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seatNumber_seq` INT NOT NULL,
  `games_seq` INT NOT NULL,
  `member_seq` INT NOT NULL,
  `ticketPaySelect` VARCHAR(45) NULL COMMENT '결제수단',
  `cancelDob` VARCHAR(45) NULL COMMENT '취소가능날짜',
  PRIMARY KEY (`seq`),
  INDEX `fk_purchase_seatNumber1_idx` (`seatNumber_seq` ASC) VISIBLE,
  INDEX `fk_purchase_games1_idx` (`games_seq` ASC) VISIBLE,
  INDEX `fk_purchase_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_purchase_seatNumber1`
    FOREIGN KEY (`seatNumber_seq`)
    REFERENCES `Incheon`.`seatNumber` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_games1`
    FOREIGN KEY (`games_seq`)
    REFERENCES `Incheon`.`games` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `Incheon`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

SELECT*FROM seat;



ALTER TABLE member ADD COLUMN addressCode varchar(45);

CREATE TABLE IF NOT EXISTS `Incheon`.`seat` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seatPlace` NVARCHAR(45) NULL COMMENT '좌석위치\n1.1루 2.3루 3.중앙 4.외야',
  `seatGrade` VARCHAR(45) NULL COMMENT '좌석등급\n1.응원지정석, 2.의자지정석,3.테이블석,4.스카이테이블석,5.일반석 6.랜더스 라이브존 7.홈런커플존 8.외야패밀리 9.이마트바베큐존 10.초가정자 11외야 파티덱 12.몰리스 그린존',
  `seatPrice` VARCHAR(45) NULL COMMENT '좌석가격',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatBlock` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seatBlock` INT NULL COMMENT '좌석블록',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatRow` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seatRow` CHAR NULL COMMENT '좌석열',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`seatNumber` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seat_seq` INT NOT NULL,
  `seatBlock_seq` INT NOT NULL,
  `seatRow_seq` INT NOT NULL,
  `seatNumber` INT NULL COMMENT '좌석번호',
  PRIMARY KEY (`seq`),
  INDEX `fk_seatNumber_seatBlock1_idx` (`seatBlock_seq` ASC) VISIBLE,
  INDEX `fk_seatNumber_seatRow1_idx` (`seatRow_seq` ASC) VISIBLE,
  INDEX `fk_seatNumber_seat1_idx` (`seat_seq` ASC) VISIBLE,
  CONSTRAINT `fk_seatNumber_seatBlock1`
    FOREIGN KEY (`seatBlock_seq`)
    REFERENCES `Incheon`.`seatBlock` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seatNumber_seatRow1`
    FOREIGN KEY (`seatRow_seq`)
    REFERENCES `Incheon`.`seatRow` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seatNumber_seat1`
    FOREIGN KEY (`seat_seq`)
    REFERENCES `Incheon`.`seat` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`purchase` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seatNumber_seq` INT NOT NULL,
  `games_seq` INT NOT NULL,
  `member_seq` INT NOT NULL,
  `ticketPaySelect` VARCHAR(45) NULL COMMENT '결제수단',
  `cancelDob` VARCHAR(45) NULL COMMENT '취소가능날짜',
  `seatNumber_seq1` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_purchase_games1_idx` (`games_seq` ASC) VISIBLE,
  INDEX `fk_purchase_member1_idx` (`member_seq` ASC) VISIBLE,
  INDEX `fk_purchase_seatNumber1_idx` (`seatNumber_seq1` ASC) VISIBLE,
  CONSTRAINT `fk_purchase_games1`
    FOREIGN KEY (`games_seq`)
    REFERENCES `Incheon`.`games` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `Incheon`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_seatNumber1`
    FOREIGN KEY (`seatNumber_seq1`)
    REFERENCES `Incheon`.`seatNumber` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

SELECT*FROM seatNumber;

SET foreign_key_checks =0;

ALTER TABLE games ADD COLUMN who varchar(45) AFTER seq;

SELECT*FROM games;

SELECT*FROM purchase;


select*FROM seatNumber;

ALTER TABLE purchase CHANGE COLUMN seatNumber_seq1 seatNumber_seq INT;

ALTER TABLE purchase MODIFY COLUMN member_seq int AFTER seq;

ALTER TABLE purchase MODIFY COLUMN	seatNumber_seq int AFTER games_seq;

CREATE TABLE IF NOT EXISTS `Incheon`.`ccg` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seqOther` VARCHAR(45) NULL,
  `ccgname` VARCHAR(45) NULL,
  `ccguseNy` TINYINT NULL,
  `ccgorder` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `Incheon`.`cc` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seqOther` VARCHAR(45) NULL,
  `ccg_seq` INT NOT NULL,
  `ccname` VARCHAR(45) NULL,
  `ccuseNy` TINYINT NULL,
  `ccdelNy` TINYINT NULL,
  `ccorder` INT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_cc_ccg1_idx` (`ccg_seq` ASC) VISIBLE,
  CONSTRAINT `fk_cc_ccg1`
    FOREIGN KEY (`ccg_seq`)
    REFERENCES `Incheon`.`ccg` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

ALTER TABLE member ADD COLUMN emailCode INT AFTER email;

SELECT*FROM member;