--�Ĥ@�D
select *
from dept;

--�ĤG�D
select empno, ename, job, hiredate
from emp;

--�ĤT�D
select distinct job 
from emp;

--�ĥ|�D
select empno 'Emp#', ename 'Employee', job 'Job', hiredate 'Hire Date'
from emp;

--�Ĥ��D
select ename + ' ,' + job 'Employee and Title'
from emp ;