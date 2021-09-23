

--第一題
select e.ename, e.deptno, d.dname, d.loc
from emp as e join dept d on e.deptno = d.deptno;

--第二題
select e.ename, e.comm, e.deptno, d.loc
from emp as e join dept d on e.deptno = d.deptno
where comm is not null and comm > 0; 

--第三題
select e.ename, d.dname
from emp as e join dept d on e.deptno = d.deptno
where e.ename like '%A%';

--第四題
select e.ename, e.job, e.deptno, d.dname
from emp as e join dept as d on e.deptno = d.deptno
where d.loc = 'DALLAS';

--第五題
select e.ename 'Employee', e.empno 'Emp#', m.ename 'Manager', m.empno 'Mgr#'
from emp as e left outer join emp as m on e.mgr = m.empno;

--第六題
select e.ename, e.job, d.dname, e.sal, g.grade
from emp as e join dept d on e.deptno = d.deptno
			  join salgrade g on (e.sal between g.losal and g.hisal);

--第七題
select e.ename 'Employee', e.hiredate 'Emp Hiredate', m.ename 'Manager', m.hiredate 'Mgr Hiredate'
from emp as e join emp as m on e.mgr = m.empno
where m.hiredate > e.hiredate;

--第八題
select d.dname , d.loc, count(e.ename) 'Number of People', round(avg(e.sal),2) 'Salary'
from emp as e join dept d on d.deptno = e.deptno
group by d.dname, d.loc;