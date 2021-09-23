--�Ĥ@�D
create view EMP_VU
as 
	select empno , ename as EMPLOYEE, deptno
	from emp;

--�ĤG�D
select *
from EMP_VU;

--�ĤT�D
select EMPLOYEE, deptno
from EMP_VU;

--�ĥ|�D
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

--�Ĥ��D
select *
from DEPT20;

select *
from sys.views;

--�Ĥ��D
alter view DEPT20
as
	select empno EMPLOYEE_ID,ename EMPLOYEE,deptno DEPARTMENT_ID
	from emp
with check option;

update DEPT20
set DEPARTMENT_ID = 30
where EMPLOYEE = 'Smith';

--�ĤC�D
create view SALARY_VU
as 
	select e.ename Employee, d.dname Department, e.sal Salary, g.grade Grade
	from emp e left join dept d on e.deptno = d.deptno
	           left join salgrade g on e.sal between losal and hisal;

--�ĤK�D
create nonclustered index emp_deptno_idx
on emp(deptno);

--�ĤE�D
create sequence DEPT_ID_SEQ
as int
start with 60
increment by 10
maxvalue 200
no cache
no cycle;

--�ĤQ�D
insert into dept
values (next value for DEPT_ID_SEQ,'Education',null),
	   (next value for DEPT_ID_SEQ,'Administration',null);