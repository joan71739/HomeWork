CREATE TABLE s_dept
(
	deptno NUMERIC (2),
	dname NVARCHAR(14),
	loc NVARCHAR (13)
);

select *
from s_dept

--第一題
create table DEPARTMENT
(
id numeric (7) not null,
name varchar (24) not null
);

--第二題
insert into DEPARTMENT (id, name)
select deptno, dname
from dept;

--第三題
create table EMPLOYEE
(
id numeric (7) not null,
last_name varchar(24) not null,
first_name varchar(24),
dept_id numeric (7)
);

--第四題
alter table EMPLOYEE
alter column last_name varchar(40) not null;

--第五題
select empno, ename, deptno
into EMPLOYEE2
from emp
where 0=1;

exec sp_rename 'EMPLOYEE2.empno','ID','COLUMN';
exec sp_rename 'EMPLOYEE2.ename','LAST_NAME','COLUMN';
exec sp_rename 'EMPLOYEE2.deptno','DEPT_ID','COLUMN';

--第六題
drop table EMPLOYEE;

--第七題
exec sp_rename 'EMPLOYEE2','EMPLOYEE';

--第八題
alter table EMPLOYEE
drop column LAST_NAME;

--第九題
alter table EMPLOYEE
add SALARY numeric(7);

--第十題
alter table EMPLOYEE
add constraint EMPLOYEE_ID_pk primary key(ID);

--第十一題
alter table EMPLOYEE
add constraint EMPLOYEE_DEPT_ID_fk foreign key(DEPT_ID) references dept(deptno);