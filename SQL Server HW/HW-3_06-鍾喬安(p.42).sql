--第一題
select *
from dept;

--第二題
select empno, ename, job, hiredate
from emp;

--第三題
select distinct job 
from emp;

--第四題
select empno 'Emp#', ename 'Employee', job 'Job', hiredate 'Hire Date'
from emp;

--第五題
select ename + ' ,' + job 'Employee and Title'
from emp ;