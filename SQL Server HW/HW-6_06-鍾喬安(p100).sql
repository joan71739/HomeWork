--第一題
select round(max(sal),0) as 'Maximum', round(min(sal),0) as 'Minimum', round(sum(sal),0) as 'Sum', round(avg(sal),0) as 'Average'
from emp;

--第二題
select job, min(sal) as 'Minimum' , max(sal) as 'Maximum' , sum(sal) as 'Sum' , avg(sal) as 'Average'
from emp
group by job;

--第三題
select job, count(*)
from emp
group by job;

--第四題
select job, count(*) as 'Number of Managers'
from emp
group by job
having job = 'MANAGER';

--第五題
select max(sal)-min(sal) as 'DIFFERENCE'
from emp;

--第六題
select mgr, min(sal)
from emp
where mgr is not null  
group by mgr
having min(sal) >= 1000 
order by min(sal) desc;

--第七題
select year(hiredate) as '到職年', count(hiredate) '人數'
from emp
group by year(hiredate)
having year(hiredate) in (1980, 1981, 1982, 1983);