-- Incheon database를 사용하겠다. 여러번 쓸 필요 없음
USE Incheon;

-- 전체 컬럼 조회
SELECT * FROM member;

-- 컬럼 추가
-- ALTER TABLE member2 ADD COLUMN nickname varchar(45);member2;

-- 칼럼 추가에 위치까지 조정
ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER nickname;

-- 컬럼 변경 데이터 없을때는 쉽게 바뀌지만 데이터가 있을때는 조심스럽게 해야한다
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 칼럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
ALTER TABLE member2 drop COLUMN nick;

-- row 삭제 주의사항! 테이블 이름은 제일 마지막에 쓴다
DELETE FROM  member_phone WHERE seq = 10;

-- 데이터 수정
-- UPDAT 테이블 이름 SET
--  바꿀내용들
-- WHERE 바꾸는거 선택해야됨 ex)seq=1;


-- 밑에서 부터 where
SELECT*FROM member
WHERE  1=1
-- AND name like "남%"
AND name like"%연수"
-- AND name like "%박%"
;

SELECT*FROM member
WHERE 1=1
-- AND gender = 0
-- AND gender <=0
AND dob between "1988-01-01" and "1999-12-12"
-- AND gender =1
;

SELECT*FROM member;


-- null 값 찾을때 쓰는법
-- SELECT*FROM member
-- WHERE 1=1
-- AND 이름 is null 

-- null 이 아닌 비어있는거 검색하는법
-- SELECT*FROM 
-- WHERE 1=1
-- AND 이름 = ""






