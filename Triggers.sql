create database TeachersData;
use TeachersData;
drop database Teachers;
-- Question 1
CREATE TABLE teachers (
  T_ID INT PRIMARY KEY,
  T_name VARCHAR(25),
  T_subject VARCHAR(25),
  Experience INT,
  Salary DECIMAL(10, 2)
);

INSERT INTO teachers (T_ID, T_name, T_subject, Experience, Salary)
VALUES
  (1, 'John Smith', 'Mathematics', 10, 50000.00),
  (2, 'Jane Doe', 'Science', 8, 45000.00),
  (3, 'Bob Johnson', 'English', 12, 55000.00),
  (4, 'Maria Rodriguez', 'History', 9, 48000.00),
  (5, 'David Lee', 'Computer Science', 11, 52000.00),
  (6, 'Emily Chen', 'Biology', 7, 42000.00),
  (7, 'Kevin White', 'Physics', 13, 58000.00),
  (8, 'Sarah Taylor', 'Chemistry', 10, 50000.00);
select * from teachers;
-- Question 2 
delimiter $$ 
create trigger before_insert_teacher
before insert on teachers for each row
begin
    if new.Salary < 0 then
        signal sqlstate '45000' set message_text = 'Salary cannot be negative';
    end if;
end$$
delimiter ;
-- Question 3
CREATE TABLE teacher_log (
  teacher_id INT,
  action VARCHAR(50),
  timestamp TIMESTAMP
);
create trigger after_insert_teacher
after insert on teachers
for each row
insert into teacher_log (teacher_id, action, timestamp)
values (new.T_ID, 'INSERT', NOW());
-- Question 4
-- before delete trigger
delimiter $$
create trigger before_delete_teacher
before delete on teachers for each row
begin
    if old.experience > 10 then
        signal sqlstate '45000'
        set message_text = 'Cannot delete teacher with experience greater than 10 years';
    end if;
end$$
delimiter ;

-- after delete trigger
delimiter $$
create trigger after_delete_teacher
after delete on teachers
for each row
begin
    insert into teacher_log (teacher_id, action, timestamp)
    values (old.T_ID, 'deleted', current_timestamp);
end$$
delimiter ;