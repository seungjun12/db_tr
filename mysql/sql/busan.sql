USE Incheon;

-- cc ccg 조인
select
	a.seq
    ,a.ccgname
    ,b.seq
    ,b.ccname
from ccg a
left join cc b on b.ccg_seq = a.seq
;

-- 로그인
select
    a.id
    ,a.pwd
from member a 
where  1=1
    and id="cjftn" 
    and pwd="qwer"
;    

-- 매인 화면 (예매 이미지) 
SELECT
	a.seq
    ,a.teamLogo
FROM teamLogo a
WHERE 1=1
	AND	a.seq=3
;

-- 매인화면(순위)
SELECT
	a.seq
    ,a.who
	,a.dob
FROM games a
WHERE 1=1
	AND a.seq=1
;    
-- 좌석 선택
SELECT 
	a.seq
    ,a.seatPlace
    ,a.seatGrade
FROM seat a   
WHERE 1=1
	AND a.seq=3
;

-- 상세 좌석 선택
SELECT
	a.seq
    ,b.seatBlock
    ,c.seatRow
    ,a.seatNumber
FROM seatNumber a
left join seatBlock b on b.seq = a.seatBlock_seq
left join seatRow c on c.seq = a.seatRow_seq     
;


-- 회원정보수정
SELECT
	a.seq
    ,a.name
    ,b.number
    ,a.email
FROM member a
left join memberPhone b on b.member_seq = a.seq
where 1=1
	and a.seq=2		
;

-- 비밀번호 변경


-- 예약정보 확인
select
	a.seq
    ,a.registerDob
    ,a.registerNumber
    ,a.registerName
    ,a.dateUse
    ,a.count
    ,a.deleteDate
    ,a.state
FROM registerConfirm a
where 1=1
	and a.seq = 2
;    

-- 아이디 찾기

-- 비번 찾기
	