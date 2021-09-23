

--�Ĥ@�D
select e.ename, e.deptno, d.dname, d.loc
from emp as e join dept d on e.deptno = d.deptno;

--�ĤG�D
select e.ename, e.comm, e.deptno, d.loc
from emp as e join dept d on e.deptno = d.deptno
where comm is not null and comm > 0; 

--�ĤT�D
select e.ename, d.dname
from emp as e join dept d on e.deptno = d.deptno
where e.ename like '%A%';

--�ĥ|�D
select e.ename, e.job, e.deptno, d.dname
from emp as e join dept as d on e.deptno = d.deptno
where d.loc = 'DALLAS';

--�Ĥ��D
select e.ename 'Employee', e.empno 'Emp#', m.ename 'Manager', m.empno 'Mgr#'
from emp as e left outer join emp as m on e.mgr = m.empno;

--�Ĥ��D
select e.ename, e.job, d.dname, e.sal, g.grade
from emp as e join dept d on e.deptno = d.deptno
			  join salgrade g on (e.sal between g.losal and g.hisal);

--�ĤC�D
select e.ename 'Employee', e.hiredate 'Emp Hiredate', m.ename 'Manager', m.hiredate 'Mgr Hiredate'
from emp as e join emp as m on e.mgr = m.empno
where m.hiredate > e.hiredate;

--�ĤK�D
select d.dname , d.loc, count(e.ename) 'Number of People', round(avg(e.sal),2) 'Salary'
from emp as e join dept d on d.deptno = e.deptno
group by d.dname, d.loc;