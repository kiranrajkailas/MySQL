-- ---------------------------LIBRARY MANAGEMENT SYSTEM-----------------------------
-- Creating the database
create database library;
use library;
-- Creating tables
create table branch (
  branch_no int primary key,
  manager_id int,
  branch_address varchar(100),
  contact_no varchar(20)
);
insert into branch (branch_no, manager_id, branch_address, contact_no)
values
(1, 101, '123 Main St, Anytown, USA', '555-1234'),
(2, 102, '456 Elm St, Othertown, USA', '555-5678'),
(3, 103, '789 Oak St, Thistown, USA', '555-9012'),
(4, 104, '321 Pine St, Thatville, USA', '555-1111'),
(5, 105, '901 Maple St, Thisville, USA', '555-1314'),
(6, 106, '234 Cedar St, Another town, USA', '555-1516'),
(7, 107, '567 Cypress St, Some town, USA', '555-1718'),
(8, 108, '890 Walnut St, Else town, USA', '555-1920'),
(9, 109, '345 Spruce St, More town, USA', '555-2122'),
(10, 110, '678 Fir St, New town, USA', '555-2324'),
(11, 111, '901 Ash St, Old town, USA', '555-2526'),
(12, 112, '234 Beech St, Large town, USA', '555-2728'),
(13, 113, '567 Birch St, Small town, USA', '555-2930'),
(14, 114, '890 Cherry St, Town ville, USA', '555-3132'),
(15, 115, '345 Chestnut St, Village town, USA', '555-3334'),
(16, 116, '678 Cottonwood St, City town, USA', '555-3536'),
(17, 117, '901 Dogwood St, Metro town, USA', '555-3738'),
(18, 118, '234 Ebony St, Urban town, USA', '555-3940'),
(19, 119, '567 Fig St, Rural town, USA', '555-4142'),
(20, 120, '890 Gum St, Suburbs town, USA', '555-4344');
select * from branch;
create table employee (
  emp_id int primary key,
  emp_name varchar(50),
  position varchar(50),
  salary decimal(10, 2),
  branch_no int, foreign key (branch_no) references branch(branch_no)
);
insert into employee (emp_id, emp_name, position, salary, branch_no)
values
(1, 'John Doe', 'Manager', 50000.00, 1),
(2, 'Jane Smith', 'Assistant Manager', 40000.00, 1),
(3, 'Bob Johnson', 'Sales Representative', 30000.00, 2),
(4, 'Alice Williams', 'Marketing Manager', 45000.00, 3),
(5, 'Michael Davis', 'IT Specialist', 35000.00, 1),
(6, 'Emily Taylor', 'HR Generalist', 32000.00, 2),
(7, 'Kevin White', 'Accountant', 38000.00, 3),
(8, 'Sarah Lee', 'Customer Service Representative', 28000.00, 1),
(9, 'David Hall', 'Operations Manager', 42000.00, 2),
(10, 'Rebecca Martin', 'Graphic Designer', 30000.00, 3),
(11, 'James Thompson', 'Software Engineer', 40000.00, 1),
(12, 'Laura Garcia', 'Data Analyst', 34000.00, 2),
(13, 'Daniel Harris', 'Business Development Manager', 48000.00, 3),
(14, 'Lisa Nguyen', 'Executive Assistant', 36000.00, 1),
(15, 'Matthew Rodriguez', 'Network Administrator', 38000.00, 2),
(16, 'Amy Patel', 'Financial Analyst', 32000.00, 3),
(17, 'Brian Kim', 'Sales Manager', 44000.00, 1),
(18, 'Christina Brown', 'Marketing Coordinator', 30000.00, 2),
(19, 'David Chen', 'IT Project Manager', 46000.00, 3),
(20, 'Elizabeth Jenkins', 'Human Resources Manager', 42000.00, 1);
select * from employee;
create table books (
  isbn varchar(20) primary key,
  book_title varchar(200),
  category varchar(50),
  rental_price decimal(10, 2),
  status varchar(10) check(status in ('yes', 'no')),
  author varchar(100),
  publisher varchar(100)
);
insert into books (isbn, book_title, category, rental_price, status, author, publisher)
values
('978-3-16-148410-0', 'To Kill a Mockingbird', 'Fiction', 5.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-1-43-567619-5', '1984', 'Dystopian', 4.50, 'no', 'George Orwell', 'Secker & Warburg'),
('978-0-14-243723-0', 'Pride and Prejudice', 'Romance', 4.00, 'yes', 'Jane Austen', 'T. Egerton'),
('978-0-451-21929-6', 'The Great Gatsby', 'Classic', 5.50, 'no', 'F. Scott Fitzgerald', 'Charles Scribner''s Sons'),
('978-1-50-326791-3', 'The Catcher in the Rye', 'Young Adult', 4.25, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-7432-7354-7', 'The Hitchhiker''s Guide to the Galaxy', 'Science Fiction', 5.25, 'no', 'Douglas Adams', 'Pan Books'),
('978-0-375-82696-8', 'The Handmaid''s Tale', 'Dystopian', 5.75, 'yes', 'Margaret Atwood', 'McClelland and Stewart'),
('978-1-50-116337-4', 'The Nightingale', 'Historical Fiction', 6.00, 'no', 'Kristin Hannah', 'St. Martin''s Press'),
('978-0-316-16030-6', 'The Hate U Give', 'Young Adult', 5.50, 'yes', 'Angie Thomas', 'Balzer + Bray'),
('978-1-44-242977-7', 'The Giver', 'Dystopian', 4.75, 'no', 'Lois Lowry', 'Houghton Mifflin'),
('978-0-06-112009-4', 'The Book Thief', 'Historical Fiction', 6.25, 'yes', 'Markus Zusak', 'E.P. Dutton'),
('978-1-50-119066-8', 'The Power', 'Science Fiction', 6.50, 'no', 'Naomi Alderman', 'Little, Brown and Company'),
('978-0-316-14365-1', 'The Song of Achilles', 'Historical Fiction', 6.75, 'yes', 'Madeline Miller', 'Ecco'),
('978-0-06-243959-4', 'The Seven Husbands of Evelyn Hugo', 'Contemporary', 7.00, 'no', 'Taylor Jenkins Reid', 'Algonquin Books'),
('978-1-50-114579-5', 'The Silent Patient', 'Mystery', 7.25, 'yes', 'Alex Michaelides', 'Celadon Books'),
('978-0-316-22292-6', 'The Devil in the White City', 'Historical Non-Fiction', 7.50, 'no', 'Erik Larson', 'Crown Publishers'),
('978-0-06-247607-5', 'The Immortal Life of Henrietta Lacks', 'Non-Fiction', 7.75, 'yes', 'Rebecca Skloot', 'Crown Publishers'),
('978-1-50-118932-9', 'The Poppy War', 'Fantasy', 8.00, 'no', 'R.F. Kuang', 'Harper Voyager'),
('978-0-316-22804-4', 'The Fifth Season', 'Fantasy', 8.25, 'yes', 'N.K. Jemisin', 'Orbit Books');
select * from books;
create table customer (
  customer_id int primary key,
  customer_name varchar(50),
  customer_address varchar(100),
  reg_date date
);
insert into customer (customer_id, customer_name, customer_address, reg_date)
values
(1, 'John Smith', '123 Main St, New York, NY 10001', '2020-01-01'),
(2, 'Emily Johnson', '456 Elm St, Los Angeles, CA 90001', '2020-02-01'),
(3, 'Michael Brown', '789 Oak St, Chicago, IL 60601', '2020-03-01'),
(4, 'Sarah Taylor', '901 Maple St, Houston, TX 77001', '2020-04-01'),
(5, 'David White', '234 Pine St, Phoenix, AZ 85001', '2020-05-01'),
(6, 'Jennifer Martin', '567 Cedar St, Philadelphia, PA 19101', '2020-06-01'),
(7, 'Kevin Harris', '890 Walnut St, San Antonio, TX 78201', '2020-07-01'),
(8, 'Lisa Thompson', '345 Spruce St, San Diego, CA 92101', '2020-08-01'),
(9, 'Brian Walker', '678 Fir St, Dallas, TX 75201', '2020-09-01'),
(10, 'Amy Jackson', '901 Ash St, San Jose, CA 95101', '2020-10-01'),
(11, 'James Davis', '234 Beech St, Austin, TX 78701', '2020-11-01'),
(12, 'Rebecca Miller', '567 Cherry St, Jacksonville, FL 32201', '2020-12-01'),
(13, 'Matthew Rodriguez', '890 Cypress St, San Francisco, CA 94101', '2021-01-01'),
(14, 'Melissa Garcia', '345 Hickory St, Indianapolis, IN 46201', '2021-02-01'),
(15, 'William Lee', '678 Gum St, Columbus, OH 43201', '2021-03-01'),
(16, 'Jessica Hall', '901 Sycamore St, Fort Worth, TX 76101', '2021-04-01'),
(17, 'Joseph Brooks', '234 Poplar St, Charlotte, NC 28201', '2021-05-01'),
(18, 'Laura Jenkins', '567 Oakwood St, Memphis, TN 38101', '2021-06-01'),
(19, 'Richard Lewis', '890 Cedarwood St, Boston, MA 02101', '2021-07-01'),
(20, 'Nicole Mitchell', '345 Walnutwood St, Detroit, MI 48201', '2021-08-01');
select * from customer;
create table issuestatus (
  issue_id int primary key,
  issued_cust int,
  issued_book_name varchar(100),
  issue_date date,
  isbn_book varchar(50),
  foreign key (issued_cust) references customer(customer_id),
  foreign key (isbn_book) references books(isbn)
);
insert into issuestatus (issue_id, issued_cust, issued_book_name, issue_date, isbn_book)
values
(1, 1, 'To Kill a Mockingbird', '2022-01-01', '978-3-16-148410-0'),
(2, 2, '1984', '2022-01-05', '978-1-43-567619-5'),
(3, 3, 'Pride and Prejudice', '2022-01-10', '978-0-14-243723-0'),
(4, 4, 'The Great Gatsby', '2022-01-15', '978-0-451-21929-6'),
(5, 5, 'The Catcher in the Rye', '2022-01-20', '978-1-50-326791-3'),
(6, 6, 'The Hitchhiker''s Guide to the Galaxy', '2022-01-25', '978-0-7432-7354-7'),
(7, 7, 'The Handmaid''s Tale', '2022-01-30', '978-0-375-82696-8'),
(8, 8, 'The Nightingale', '2022-02-01', '978-1-50-116337-4'),
(9, 9, 'The Hate U Give', '2022-02-05', '978-0-316-16030-6'),
(10, 10, 'The Giver', '2022-02-10', '978-1-44-242977-7'),
(11, 11, 'The Book Thief', '2022-02-15', '978-0-06-112009-4'),
(12, 12, 'The Power', '2022-02-20', '978-1-50-119066-8'),
(13, 13, 'The Song of Achilles', '2022-02-25', '978-0-316-14365-1'),
(14, 14, 'The Seven Husbands of Evelyn Hugo', '2022-03-01', '978-0-06-243959-4'),
(15, 15, 'The Silent Patient', '2022-03-05', '978-1-50-114579-5'),
(16, 16, 'The Devil in the White City', '2022-03-10', '978-0-316-22292-6'),
(17, 17, 'The Immortal Life of Henrietta Lacks', '2022-03-15', '978-0-06-247607-5'),
(18, 18, 'The Poppy War', '2022-03-20', '978-1-50-118932-9'),
(19, 19, 'The Fifth Season', '2022-03-25', '978-0-316-22804-4'),
(20, 20, 'To Kill a Mockingbird', '2022-03-30', '978-3-16-148410-0');
select * from issuestatus;
create table returnstatus (
  return_id int primary key,
  return_cust int,
  return_book_name varchar(100),
  return_date date,
  isbn_book2 varchar(50),
  foreign key (return_cust) references customer(customer_id),
  foreign key (isbn_book2) references books(isbn)
);	
insert into returnstatus (return_id, return_cust, return_book_name, return_date, isbn_book2)
values
(1, 1, 'To Kill a Mockingbird', '2022-01-15', '978-3-16-148410-0'),
(2, 2, '1984', '2022-02-20', '978-1-43-567619-5'),
(3, 3, 'Pride and Prejudice', '2022-03-10', '978-0-14-243723-0'),
(4, 4, 'The Great Gatsby', '2022-04-05', '978-0-451-21929-6'),
(5, 5, 'The Catcher in the Rye', '2022-05-01', '978-1-50-326791-3'),
(6, 6, 'The Hitchhiker''s Guide to the Galaxy', '2022-06-15', '978-0-7432-7354-7'),
(7, 7, 'The Handmaid''s Tale', '2022-07-10', '978-0-375-82696-8'),
(8, 8, 'The Nightingale', '2022-08-05', '978-1-50-116337-4'),
(9, 9, 'The Hate U Give', '2022-09-01', '978-0-316-16030-6'),
(10, 10, 'The Giver', '2022-10-15', '978-1-44-242977-7'),
(11, 11, 'The Book Thief', '2022-11-10', '978-0-06-112009-4'),
(12, 12, 'The Power', '2022-12-05', '978-1-50-119066-8'),
(13, 13, 'The Song of Achilles', '2023-01-01', '978-0-316-14365-1'),
(14, 14, 'The Seven Husbands of Evelyn Hugo', '2023-02-15', '978-0-06-243959-4'),
(15, 15, 'The Silent Patient', '2023-03-10', '978-1-50-114579-5'),
(16, 16, 'The Devil in the White City', '2023-04-05', '978-0-316-22292-6'),
(17, 17, 'The Immortal Life of Henrietta Lacks', '2023-05-01', '978-0-06-247607-5'),
(18, 18, 'The Poppy War', '2023-06-15', '978-1-50-118932-9'),
(19, 19, 'The Fifth Season', '2023-07-10', '978-0-316-22804-4'),
(20, 20, 'To Kill a Mockingbird', '2023-08-05', '978-3-16-148410-0');
select * from returnstatus;
-- Question 1
select book_title, category, rental_price
from books
where status = 'yes';
-- Question 2
select emp_name, salary 
from employee 
order by salary desc;
-- Question 3
select t1.book_title, t2.issued_cust 
from books t1 
inner join issuestatus t2 
on t1.isbn = t2.isbn_book;
-- Question 4
select category, count(*) as total_books
from books
group by category;
-- Question 5 (Correction: Salary > 5000)
select emp_name, position 
from employee 
where salary > 5000;
-- Question 6
select c.customer_name
from customer c
left join issuestatus i on c.customer_id = i.issued_cust
where c.reg_date < '2022-01-01' and i.issued_cust is null;
-- Question 7
select branch_no, count(emp_id) 
from employee 
group by branch_no;
-- Question 8
select c.customer_name 
from customer c 
join issuestatus i 
on c.customer_id = i.issued_cust 
where extract(month from i.issue_date) = 6 
and extract(year from i.issue_date) = 2023;
-- Question 9
select book_title 
from books 
where book_title like '%Devil%';
-- Question 10
select branch_no, count(*) 
from employee 
group by branch_no 
having count(*) > 5;
-- Question 11
select e.emp_name, b.branch_address
from employee e
join branch b on e.emp_id = b.manager_id;
-- Question 12
select distinct t1.customer_name 
from customer t1 
inner join issuestatus t2 
on t1.customer_id = t2.issued_cust 
inner join books t3 
on t2.isbn_book = t3.isbn 
where t3.rental_price > 5;