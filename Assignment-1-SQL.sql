#-------Assignment #1-------
#-------Creating datebase-------
create database school;
use school;
#-------Create Table-------
create table Students(
Roll_No int auto_increment primary key,
Student_Name varchar(50) not null,
Marks int check(Marks>=0),
Grade char(2) check (Grade in ('A1','A2','B1','B2','C1','C2')));
#-------Adding data to the table named 'Students'-------
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('101', 'Lasith Malinga', '90','A2');
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('102', 'Andre Reussel', '96','A1');
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('103', 'Bret Lee', '92','A1');
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('104', 'Sanju Samson', '98','A1');
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('105', 'Kane Williamson', '95','A1');
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('106', 'Quinton de Cock', '82','B2');
insert into Students(Roll_No, Student_Name, Marks, Grade)
values('107', 'Liton Das', '72','C2');
#-------Use SELECT command to see the contents-------
select* from Students;
#-------Adding a Column named 'Contact'-------
alter table Students add Contact int unique;
#-------Delete a Column named 'Grade'-------
alter table Students drop column Grade;
#-------Rename the table 'Students' to 'ClassTen'-------
#rename table Students to ClassTen
#-------Remove all the rows from the table--------
truncate table classten;
select* from classten;
#-------Remove the table from the database---------
drop table classten;