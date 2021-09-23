--�Ĥ@�D
select getdate() as "�t�Τ��";

--�ĤG�D
select empno, ename, sal,round(sal*1.15,0) as 'New Salary'
from emp;

--�ĤT�D
select empno, ename, sal,round(sal*1.15,0) as 'New Salary',round((sal*1.15)-sal,0) as 'Increase'
from emp;

--�ĥ|�D
select ename, datediff(month,hiredate,getdate()) as 'months_worked'
from emp;

--�Ĥ��D
select convert(char(7),ename) + 'earns  ' + convert(char(9),sal) + 'monthly but wants  ' + convert(char(10),sal*3)
from emp;

--�ĤC�D
select ename, '$'+cast(sal as char(15)) 'SALARY'
from emp;

--�ĤK�D
select ename,
	iif((comm is null or comm = 0),'No Commision',cast(comm as char(10))) as COMMISION
from emp;

--�ĤE�D
select ename ,replicate('*',sal/100) as 'EMPLOYEE_AND_THEIR_SALARIES'
from emp
order by sal desc;

