create database workersdata;
use workersdata;

create table worker(
Worker_ID int,
First_Name char(25),
Last_Name char(25),
Salary int,
Joining_Date datetime,
Department char(25)
);

insert into Worker (Worker_ID, First_Name, Last_Name, Salary, Joining_Date, Department)
values
  (1, 'Rahul', 'Sharma', 100000, '2020-01-01', 'HR'),
  (2, 'Rohit', 'Kumar', 80000, '2019-06-01', 'Marketing'),
  (3, 'Priyanka', 'Chopra', 90000, '2018-03-01', 'Finance'),
  (4, 'Sachin', 'Tendulkar', 120000, '2017-09-01', 'Operations'),
  (5, 'Amitabh', 'Bachchan', 150000, '2016-01-01', 'Management'),
  (6, 'Ranveer', 'Singh', 110000, '2020-07-01', 'Sales'),
  (7, 'Alia', 'Bhatt', 130000, '2019-11-01', 'IT'),
  (8, 'Kareena', 'Kapoor', 140000, '2018-05-01', 'Admin'),
  (9, 'Virat', 'Kohli', 160000, '2017-01-01', 'Business Development'),
  (10, 'Shahrukh', 'Khan', 170000, '2016-06-01', 'Research'),
  (11, 'Deepika', 'Padukone', 180000, '2020-03-01', 'Product Management'),
  (12, 'Salman', 'Khan', 190000, '2019-09-01', 'Customer Support'),
  (13, 'Aishwarya', 'Rai', 200000, '2018-10-01', 'Data Analytics'),
  (14, 'Hrithik', 'Roshan', 210000, '2017-04-01', 'Digital Marketing'),
  (15, 'Katrina', 'Kaif', 220000, '2016-09-01', 'Public Relations');
  -- Question 1 Stored Procedure with IN parameter
select * from worker;
delimiter $$
create procedure AddWorker(in WorkerID int)
begin
	select * from worker where Worker_ID=WorkerID;
end $$
delimiter ;
-- Procedure Call
call Addworker(6);
-- Question 2
delimiter $$

create procedure GetWorkerSalary(
  in p_WorkerID int,
  out p_Salary int
)
begin
  select Salary into p_Salary
  from Worker
  where Worker_ID = p_WorkerID;
end$$

delimiter ;
call GetWorkerSalary(5, @Salary);
select @Salary as Salary;
-- Question 3
DELIMITER $$
create procedure UpdateDepartment(
  in p_Worker_ID int,
  in p_Department char(25)
)
begin
  update Worker
  set Department = p_Department
  where Worker_ID = p_Worker_ID;
end $$
delimiter ;

-- Procedure Call
call UpdateDepartment(6, 'HR');
-- Question 4
delimiter $$
create procedure get_worker_count(
  in p_department varchar(25),
  out p_workerCount int
)
begin
  select count(worker_id) into p_workerCount
  from worker
  where department = p_department;
end $$
delimiter ;
-- procedure call
call get_worker_count('HR', @worker_count);
select @worker_count;
-- Question 5
delimiter $$
create procedure get_average_salary(
    in p_department varchar(255),
    out p_avgSalary decimal(10, 2)
)
begin
    select avg(salary) into p_avgSalary
    from worker
    where department = p_department;
end $$
delimiter ;
-- Procedure call
call get_average_salary('HR', @avg_salary);
select @avg_salary as average_salary;



