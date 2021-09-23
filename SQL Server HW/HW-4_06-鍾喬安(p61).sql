--�Ĥ@�D
select *
from emp
where sal > 2850;

--�ĤG�D
select ename, deptno
from emp
where empno ='7566';

--�ĤT�D
select ename, sal
from emp
where sal not between 1500 and 2850;

--�ĥ|�D
select ename, job, hiredate
from emp
where hiredate between '19810220' and '19810501'
order by hiredate;

--�Ĥ��D
select ename, deptno
from emp
where deptno in (10,30)
order by ename;

--�Ĥ��D
select ename 'Employee', sal 'Monthly Salary'
from emp
where sal > 1500 and deptno in (10,30);

--�ĤC�D
select ename, job, hiredate
from emp
where hiredate between '19820101' and '19821231';

--�ĤK�D
select ename, job
from emp
where mgr is null;

--�ĤE�D
select ename, sal, comm
from emp
where comm > 0
order by sal desc, comm desc;

--�ĤQ�D
select ename, job
from emp
where ename like '__A%';

--�ĤQ�@�D
select ename, mgr, deptno
from emp
where ename like '%LL%' and ( deptno = '30' or mgr = '7782');

--�ĤQ�G�D
select ename, job, sal
from emp
where (job = 'CLERK' or job = 'ANALYST') and sal not in (1000,3000,5000);

--�ĤQ�T�D
select ename, sal, comm
from emp
where comm > sal*1.1;