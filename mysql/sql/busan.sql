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
    ,a.teamLogoKiwoom
    ,a.teamLogoSsg
    ,a.teamLogoDoosan
    ,a.teamLogoIncheon
    ,a.teamLogoSeoul
FROM teamLogo a
WHERE 1=1
	AND	a.seq=2
;

-- 매인화면(순위)
SELECT

-- 좌석목록 
SELECT 
	b.seatGrade
    ,b.seatPlace
    ,c.seatBlock
    ,d.seatRow
    ,a.seatNumber    
FROM seatNumber a
left join seat b on b.seq = a.seat_seq
left join seatBlock c on c.seq=a.seatBlock_seq
left join seatRow d on d.seq=a.seatRow_seq
where 1=1
	and seatGrade="일반석"
;


-- 결제 
select
    a.seq
    ,b.who
    ,b.dob
    ,b.where
    ,b.time
    ,c.seatPlace
    ,c.seatPrice
    ,a.ticketPaySelect
    ,a.cancelDob
from purchase a    
left join games b on b.seq = a.games_seq    
left join seat c on c.seq =a.seatNumber_seq
WHERE 1=1
	AND a.seq=1
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
	and a.seq = 4
;    

-- 아이디 찾기

-- 비번 찾기
	