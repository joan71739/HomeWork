--第一題
insert into my_emp
values(1,'Patel','Ralph','rpatel',795);

--第二題
insert into my_emp(ID,LAST_NAME,FIRST_NAME,USERID,SALARY)
values(2,'Dancs','Betty','bdancs',860);

--第三題
insert into my_emp(ID,LAST_NAME,FIRST_NAME,USERID,SALARY)
values(3,'Biri','Ben','bbiri',1100),(4,'Newman','Chad','cnewman',750);

--第四題
update my_emp
set LAST_NAME = 'Drexler'
where ID = 3;

--第五題
update my_emp
set SALARY = 1000
where SALARY < 900;

--第六題
begin transaction;
select * from my_emp;
commit;

--第七題
delete my_emp
where FIRST_NAME = 'Betty' and LAST_NAME = 'Dancs';

--第八題
begin transaction;
update my_emp set SALARY = SALARY * 1.1;
save transaction tr1;
delete my_emp;
select * from my_emp;
rollback tran tr1;
commit tran;