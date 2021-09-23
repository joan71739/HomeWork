--第一題
select *
from emp
where sal > 2850;

--第二題
select ename, deptno
from emp
where empno ='7566';

--第三題
select ename, sal
from emp
where sal not between 1500 and 2850;

--第四題
select ename, job, hiredate
from emp
where hiredate between '19810220' and '19810501'
order by hiredate;

--第五題
select ename, deptno
from emp
where deptno in (10,30)
order by ename;

--第六題
select ename 'Employee', sal 'Monthly Salary'
from emp
where sal > 1500 and deptno in (10,30);

--第七題
select ename, job, hiredate
from emp
where hiredate between '19820101' and '19821231';

--第八題
select ename, job
from emp
where mgr is null;

--第九題
select ename, sal, comm
from emp
where comm > 0
order by sal desc, comm desc;

--第十題
select ename, job
from emp
where ename like '__A%';

--第十一題
select ename, mgr, deptno
from emp
where ename like '%LL%' and ( deptno = '30' or mgr = '7782');

--第十二題
select ename, job, sal
from emp
where (job = 'CLERK' or job = 'ANALYST') and sal not in (1000,3000,5000);

--第十三題
select ename, sal, comm
from emp
where comm > sal*1.1;