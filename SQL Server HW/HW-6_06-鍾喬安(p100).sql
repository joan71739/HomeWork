--�Ĥ@�D
select round(max(sal),0) as 'Maximum', round(min(sal),0) as 'Minimum', round(sum(sal),0) as 'Sum', round(avg(sal),0) as 'Average'
from emp;

--�ĤG�D
select job, min(sal) as 'Minimum' , max(sal) as 'Maximum' , sum(sal) as 'Sum' , avg(sal) as 'Average'
from emp
group by job;

--�ĤT�D
select job, count(*)
from emp
group by job;

--�ĥ|�D
select job, count(*) as 'Number of Managers'
from emp
group by job
having job = 'MANAGER';

--�Ĥ��D
select max(sal)-min(sal) as 'DIFFERENCE'
from emp;

--�Ĥ��D
select mgr, min(sal)
from emp
where mgr is not null  
group by mgr
having min(sal) >= 1000 
order by min(sal) desc;

--�ĤC�D
select year(hiredate) as '��¾�~', count(hiredate) '�H��'
from emp
group by year(hiredate)
having year(hiredate) in (1980, 1981, 1982, 1983);