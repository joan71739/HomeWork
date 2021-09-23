--�Ĥ@�D
select ename, hiredate
from emp
where deptno =(select deptno
			   from emp
			   where ename = 'blake');

--�ĤG�D
select ename, hiredate
from emp
where hiredate > (select hiredate
				  from emp
				  where ename ='blake');

--�ĤT�D
select empno, ename, sal
from emp
where sal > (select avg(sal)
			 from emp)
order by sal desc;

--�ĥ|�D
select empno, ename
from emp
where deptno in  (select deptno
				from emp
				where ename like '%T%');

--�Ĥ��D
select ename, deptno, job
from emp 
where deptno = (select deptno
				from dept 
				where loc = 'Dallas');

--�Ĥ��D
select ename, sal
from emp 
where mgr = (select empno
			 from emp
			 where ename = 'King');

--�ĤC�D
select deptno, ename, job
from emp
where deptno = (select deptno
				from dept
				where dname = 'Sales');

--�ĤK�D
select empno, ename, sal
from emp
where sal > (select avg(sal) from emp)
	  and
	  deptno in (select deptno from emp where ename like '%T%');
				
--�ĤE�D
select e.ename, e.deptno, e.sal
from emp e join (select sal,deptno, ename from emp where comm > 0 ) o on e.deptno = o.deptno and e.sal = o.sal
where e.ename <> o.ename;

--�ĤQ�D
select e.ename, e.deptno, e.sal, e.comm
from emp e  join emp o on e.sal = o.sal and isnull(e.comm,1) = isnull(o.comm,1)
where e.deptno = (select deptno
				from dept
				where loc = 'Dallas')
and   e.ename <> o.ename;

--�ĤQ�@�D
select ename, hiredate, sal
from emp
where sal = (select sal
			 from emp
			 where ename = 'Scott')
and   isnull(comm,1) = (select isnull(comm,1)
			 from emp
			 where ename = 'Scott')
and   ename <> 'Scott';

--�ĤQ�G�D
select ename, hiredate, sal
from emp
where sal > all (select sal
			 from emp
			 where job = 'Clerk')
order by sal desc;