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
select*from member where id ="cjftn" and pwd ="qwer"
;


-- 회원가입
SELECT
	a.seq
    ,a.name
    ,a.id
    ,a.pwd
    ,a.gender
    ,a.email
    ,a.emailCode
    ,a.personalAgree 
    ,b.member_seq
    ,b.number
from member a
inner join memberPhone b on b.member_seq = a.seq
;


-- 쭉 다른 것들 생각해보자 ㅋ

-- 회원정보수정
SELECT
	a.seq
    ,a.id
    ,a.name
    ,b.number
    ,a.email
FROM member a
left join memberPhone b on b.member_seq = a.seq;

-- 좌석도?
SELECT 
	a.seatNumber
    ,b.seatPlace
    ,b.seatGrade
    ,b.seatPrice
    ,c.seatBlock
    ,d.seatRow
FROM seatNumber a
left join seat b on b.seq = a.seat_seq
left join seatBlock c on c.seq=a.seatBlock_seq
left join seatRow d on d.seq=a.seatRow_seq
; -- 여기까지 했어요