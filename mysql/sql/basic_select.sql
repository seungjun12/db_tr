use Incheon;

SELECT*FROM member;
SELECT*FROM memberPhone;

SELECT 
	a.seq
    ,a.name
    ,a.id
    ,a.gender
    ,b.number
from member a
left join memberPhone b on b.seq = a.seq
;

-- 로그인


-- 회원가입

-- dfny 연습
SELECT
	a.seq
    ,a.name
    ,b.dfny
    ,b.number
FROM member a
JOIN memberPhone b on b.member_seq=a.seq
WHERE 1=1
-- AND dfny=1
;    

-- UNION
SELECT
	teamLogo
FROM teamLogo
UNION
SELECT
	dob
FROM games
;    

SELECT
	name
    ,id
    ,pwd
FROM member
UNION ALL
SELECT  
	registerNumber
    ,registerName
    ,dateUse
FROM registerConfirm
;	