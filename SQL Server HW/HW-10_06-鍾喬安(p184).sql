CREATE TABLE s_dept
(
	deptno NUMERIC (2),
	dname NVARCHAR(14),
	loc NVARCHAR (13)
);

select *
from s_dept

--�Ĥ@�D
create table DEPARTMENT
(
id numeric (7) not null,
name varchar (24) not null
);

--�ĤG�D
insert into DEPARTMENT (id, name)
select deptno, dname
from dept;

--�ĤT�D
create table EMPLOYEE
(
id numeric (7) not null,
last_name varchar(24) not null,
first_name varchar(24),
dept_id numeric (7)
);

--�ĥ|�D
alter table EMPLOYEE
alter column last_name varchar(40) not null;

--�Ĥ��D
select empno, ename, deptno
into EMPLOYEE2
from emp
where 0=1;

exec sp_rename 'EMPLOYEE2.empno','ID','COLUMN';
exec sp_rename 'EMPLOYEE2.ename','LAST_NAME','COLUMN';
exec sp_rename 'EMPLOYEE2.deptno','DEPT_ID','COLUMN';

--�Ĥ��D
drop table EMPLOYEE;

--�ĤC�D
exec sp_rename 'EMPLOYEE2','EMPLOYEE';

--�ĤK�D
alter table EMPLOYEE
drop column LAST_NAME;

--�ĤE�D
alter table EMPLOYEE
add SALARY numeric(7);

--�ĤQ�D
alter table EMPLOYEE
add constraint EMPLOYEE_ID_pk primary key(ID);

--�ĤQ�@�D
alter table EMPLOYEE
add constraint EMPLOYEE_DEPT_ID_fk foreign key(DEPT_ID) references dept(deptno);