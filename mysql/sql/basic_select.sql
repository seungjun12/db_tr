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

