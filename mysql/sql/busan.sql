USE Incheon;

select
	a.seq
    ,a.ccgname
    ,b.seq
    ,b.ccname
from ccg a
left join cc b on b.seq = a.seq
;

-- 로그인
select*from member where id ="cjftn" and pwd ="qwer"
;


-- 회원가입
SELECT
	a.name
    ,a.id
    ,a.pwd
    ,a.gender
    ,a.email
    ,a.emailCode
    ,a.personalAgree 
    ,b.member_seq
    ,b.number
from member a
inner join memberPhone b on b.seq = a.seq
;


-- 쭉 다른 것들 생각해보자 ㅋ