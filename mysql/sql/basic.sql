-- Incheon database를 사용하겠다. 여러번 쓸 필요 없음
USE Incheon;

-- 전체 컬럼 조회
SELECT * FROM member;

-- 컬럼 추가
 ALTER TABLE member2 ADD COLUMN nickname varchar(45);

-- 칼럼 추가에 위치까지 조정
ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER nickname;

-- 컬럼 변경 데이터 없을때는 쉽게 바뀌지만 데이터가 있을때는 조심스럽게 해야한다
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 칼럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);