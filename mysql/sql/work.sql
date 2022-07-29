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





