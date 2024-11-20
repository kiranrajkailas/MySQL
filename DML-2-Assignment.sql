create database ManagersList;
use managerslist;
create table Managers(
Manager_ID int  primary key,
First_Name varchar(50) not null,
Last_Name varchar(50) not null,
DOB varchar(10),
Age int check(Age>25),
Last_Update varchar(10) not null,
Gender char(1) not null check (Gender in ('M','F')),
Department varchar(10) not null check(Department in ('HR','Marketing','Sales','Finance','Operations','IT')),
Salary decimal(10,2) check(Salary>0));

insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('1','Emily','Patel','12/05/85','39','01/01/22','F','HR','50000');

insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('2','Ryan','Thompson','25/08/90','34','15/06/23','M','Marketing','45000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('3','Olivia','Lee','10/02/95','29','01/03/24','F','IT','12000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('4','David','Kim','20/05/80','44','01/09/22','M','Finance','75000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('5','Aaliya','Bhatt','15/01/92','32','01/02/22','F','Sales','20000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('6','Ethan','Hall','01/06/88','36','01/05/22','M','IT','30000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('7','Lily','Chen','12/09/96','28','01/09/23','F','HR','30000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('8','Logan','Brooks','05/11/89','35','11/05/22','M','Operations','35000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('9','Sopfia','Martin','25/04/94','30','15/07/23','F','HR','34000');
insert into Managers(Manager_ID,First_Name,Last_Name,DOB,Age,Last_Update,Gender,Department,Salary)
values('10','Jackson','David','15/07/87','37','01/08/22','M','IT','38000');
-- Question 1
select * from managers;
-- Question 2
select  First_Name, Last_Name, DOB 
from Managers
where Manager_ID=1;

select Manager_ID, First_Name, Last_Name, Salary * 12 AS Annual_Income
from Managers
where Manager_ID is not null;
-- Question 4
select *
from Managers
where First_Name != 'Aaliya' and Manager_ID is not null;
-- Question 5
select *
from Managers
where Department = 'IT' and Salary > 25000;
-- Question 6
select *
from Managers
where Salary between 10000 and 35000;