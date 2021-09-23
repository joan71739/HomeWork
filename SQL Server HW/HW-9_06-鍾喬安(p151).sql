--�Ĥ@�D
insert into my_emp
values(1,'Patel','Ralph','rpatel',795);

--�ĤG�D
insert into my_emp(ID,LAST_NAME,FIRST_NAME,USERID,SALARY)
values(2,'Dancs','Betty','bdancs',860);

--�ĤT�D
insert into my_emp(ID,LAST_NAME,FIRST_NAME,USERID,SALARY)
values(3,'Biri','Ben','bbiri',1100),(4,'Newman','Chad','cnewman',750);

--�ĥ|�D
update my_emp
set LAST_NAME = 'Drexler'
where ID = 3;

--�Ĥ��D
update my_emp
set SALARY = 1000
where SALARY < 900;

--�Ĥ��D
begin transaction;
select * from my_emp;
commit;

--�ĤC�D
delete my_emp
where FIRST_NAME = 'Betty' and LAST_NAME = 'Dancs';

--�ĤK�D
begin transaction;
update my_emp set SALARY = SALARY * 1.1;
save transaction tr1;
delete my_emp;
select * from my_emp;
rollback tran tr1;
commit tran;