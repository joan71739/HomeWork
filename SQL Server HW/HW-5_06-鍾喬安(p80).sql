--第一題
select getdate() as "系統日期";

--第二題
select empno, ename, sal,round(sal*1.15,0) as 'New Salary'
from emp;

--第三題
select empno, ename, sal,round(sal*1.15,0) as 'New Salary',round((sal*1.15)-sal,0) as 'Increase'
from emp;

--第四題
select ename, datediff(month,hiredate,getdate()) as 'months_worked'
from emp;

--第五題
select convert(char(7),ename) + 'earns  ' + convert(char(9),sal) + 'monthly but wants  ' + convert(char(10),sal*3)
from emp;

--第七題
select ename, '$'+cast(sal as char(15)) 'SALARY'
from emp;

--第八題
select ename,
	iif((comm is null or comm = 0),'No Commision',cast(comm as char(10))) as COMMISION
from emp;

--第九題
select ename ,replicate('*',sal/100) as 'EMPLOYEE_AND_THEIR_SALARIES'
from emp
order by sal desc;

