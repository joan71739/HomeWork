--第一題
create view EMP_VU
as 
	select empno , ename as EMPLOYEE, deptno
	from emp;

--第二題
select *
from EMP_VU;

--第三題
select EMPLOYEE, deptno
from EMP_VU;

--第四題
create view DEPT20(EMPLOYEE_ID,EMPLOYEE,DEPARTMENT_ID)
as
	select empno, ename, deptno
	from emp
	where deptno = 20;

alter view DEPT20
as
	select empno EMPLOYEE_ID,ename EMPLOYEE,deptno DEPARTMENT_ID
	from emp
	where deptno = 20
with check option;

--第五題
select *
from DEPT20;

select *
from sys.views;

--第六題
alter view DEPT20
as
	select empno EMPLOYEE_ID,ename EMPLOYEE,deptno DEPARTMENT_ID
	from emp
with check option;

update DEPT20
set DEPARTMENT_ID = 30
where EMPLOYEE = 'Smith';

--第七題
create view SALARY_VU
as 
	select e.ename Employee, d.dname Department, e.sal Salary, g.grade Grade
	from emp e left join dept d on e.deptno = d.deptno
	           left join salgrade g on e.sal between losal and hisal;

--第八題
create nonclustered index emp_deptno_idx
on emp(deptno);

--第九題
create sequence DEPT_ID_SEQ
as int
start with 60
increment by 10
maxvalue 200
no cache
no cycle;

--第十題
insert into dept
values (next value for DEPT_ID_SEQ,'Education',null),
	   (next value for DEPT_ID_SEQ,'Administration',null);