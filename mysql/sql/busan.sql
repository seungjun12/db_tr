USE Incheon;

-- cc ccg 조인
select
	a.ccgseq
    ,a.ccgNameKo
    ,b.ccseq
    ,b.ccname
from ccg a
left join cc b on b.ccg_seq = a.ccgseq
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

-- 예매하기 (경기 선택) 
SELECT
	a.seq
    ,a.time
    ,a.dob
FROM games a
WHERE 1=1
	AND a.seq=2
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
    ,(SELECT seatBlock FROM seatBlock aa where aa.seq = a.seatBlock_seq) as seatBlock
    ,c.seatRow
    ,a.seatNumber
FROM seatNumber a
-- left join seatBlock b on b.seq = a.seatBlock_seq
left join seatRow c on c.seq = a.seatRow_seq     
ORDER BY
	 a.seq asc
;
-- 티켓예매(가격선택) : seat(좌석 위치,좌석등급,가격) seatBlock(블록), seatRow(열), seatNumber(좌석 번호), games(누가,어디서,경기날짜.경기시작시간), purchase(취소기한) 



-- 티켓예매(배송 선택,주문자 확인) member(이름,생년월일,연락처,이메일), purchase(결제방법)(위에꺼)

-- 티켓예매   


-- 회원정보수정
SELECT
	a.seq
    ,a.name
	,(SELECT number FROM memberPhone aa where aa.member_seq= a.seq) as number
	,a.email
FROM member a
-- left join memberPhone b on b.member_seq = a.seq
WHERE 1=1
	AND a.seq=2
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

select
	ccgNameKo
    ,(select count(ccg_seq)  From  cc where 1=1 and ccg_seq=ccgseq) as ccg_seq
from ccg
;	