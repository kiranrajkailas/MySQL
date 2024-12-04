-- Create Database
create database countrydata4;
use countrydata4;

-- Create Country table
create table Country (
  ID int primary key,
  Country_name varchar(50) not null,
  Population int not null,
  Area DECIMAL(10, 2)
);

-- Create Persons table
create table Persons (
  ID int primary key auto_increment,
  Fname varchar(50),
  Lname varchar(50),
  Population int,
  Rating decimal(3,1),
  Country_ID int,
  Country_name varchar(50),
  FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

-- Insert data into Country table
insert into Country (ID, Country_name, Population, Area)
values
  (1, 'USA', 331449281, 9833520.00),
  (2, 'Canada', 37742154, 9984670.00),
  (3, 'Mexico', 127575529, 1964375.00),
  (4, 'UK', 67081000, 243610.00),
  (5, 'Germany', 83149300, 357021.00),
  (6, 'Australia', 25952100, 7692024.00),
  (7, 'India', 1380004385, 3287590.00),
  (8, 'China', 1439323776, 9596961.00),
  (9, 'Japan', 127103388, 377944.00),
  (10, 'France', 65273511, 551695.00);

-- Insert data into Persons table
insert into Persons (ID, Fname, Lname, Population, Rating, Country_Id, Country_name)
values
  (1, 'John', 'Doe', 1000, 4.6, 1, 'USA'),
  (2, 'Emily', 'Chen', 500, 4.2, 8, 'China'),
  (3, 'Michael', 'Lopez', 2000, 4.8, 3, 'Mexico'),
  (4, 'Olivia', 'Brown', 1500, 4.6, 4, NULL),
  (5, 'David', 'Müller', 1200, 4.1, 5, 'Germany'),
  (6, 'Sophia', 'Patel', 1800, 4.9, 6, 'Australia'),
  (7, 'William', 'Sharma', 2500, 4.7, 7, 'India'),
  (8, 'Ava', 'Wang', 3000, 4.3, 8, 'China'),
  (9, 'James', 'Tanaka', 2200, 4.4, 9, 'Japan'),
  (10, 'Isabella', 'Dupont', 2800, 4.0, 10, 'France');
  -- Question 1
select 
	Country_name, 
    count(*) as num_of_people
from 
	Persons
group by
	Country_name;
-- Question 2
select 
	Country_name, 
    count(*) as num_of_people
from 
	Persons
group by
	Country_name
order by 
	num_of_people desc;
-- Question 3
select 
	Country_name,
    avg(Rating) as Avg_Rating
from 
	Persons
group by
	Country_name
having 
	Avg_Rating >3.0
order by
	Avg_Rating desc;
-- Question 4
select 
	Country_name,
	AVG(Rating) as Avg_Rating
from
	Persons
group by
	Country_name
having
	AVG(Rating)=(
		select
			AVG(Rating)
		from
			Persons
		where 
			Country_name='USA'
);
-- Question 5
select
	Country_name,
    Population
from 
	Country
where
	Population >(
		select
			AVG(Population)
		from
			Country 
);
#----------------------------------#
#---------Product Database---------#    
#----------------------------------#
create database Product;
use Product;
-- Creating table
create table Customer(
Customer_ID int primary key,
First_name varchar(50),
Last_name varchar(50),
Email varchar(50), 
Phone_number varchar(10), 
Address varchar(100), 
City varchar(25), 
State varchar(25), 
Zip_code varchar(10), 
Country varchar(25)
);
-- Insert into the Product Table
insert into Customer (Customer_ID,First_name,
Last_name,Email,Phone_number,Address,
City,State,Zip_code,Country)
values
	(1,'Rohan','Sharma','rohan@gmail.com','9988776655','123 Main St','Mumbai','MH','400101','India'),
	(2,'Priya','Patel','priya@yahoo.com','9876543210','456 Park Ave','Ahmedabad','GJ','380052','India'),
	(3,'David','Lee','david@hotmail.com','1234567890','789 Elm St','New York','NY','10001','USA'),
	(4,'Sophia','Rodriguez','sophia@gmail.com','5551234567','321 Oak St','Los Angeles','CA','90001','USA'),
	(5,'Ethan','Kim','ethan@yahoo.com','9012345678','901 Maple St','Mapo','Seoul','100000','South Korea'),
	(6,'Emily','Tan','emily@hotmail.com','1112223333','111 River Rd','Singapore','Singapore','123456','Singapore'),
	(7,'Liam','Wong','liam@gmail.com','4445556666','444 Hill St','Kowloon','Kowloon Peninsula','999077','Hong Kong'),
	(8,'Ava','Brown','ava@yahoo.com','7778889999','777 Lake Dr','London','England','EC1A 1BB','UK'),
	(9,'Noah','Davis','noah@hotmail.com','3334445555','333 Park Blvd','Sydney','NSW','2000','Australia'),
	(10,'Mia','Martin','mia@gmail.com','6667778888','666 Main Rd','Melbourne','VIC','3000','Australia');
select * from Customer;
-- Question 1
create view Customer_info as
select
    concat(First_name, ' ', Last_name) as Full_name,
    Email
from 
    Customer;
-- Perform the SELECT operation
select * from Customer_info;
-- Question 2
create view US_Customers as
select * from Customer
where Country='USA';
select * from US_Customers;
-- Question 3
create view Customer_Details as
select 
	concat(First_name, ' ', Last_name) as Full_name,
	Email, Phone_number, State
from Customer;
select * from Customer_Details;
-- Question 4
update Customer
set Phone_number='2345678910'
where State='CA';
select * from Customer_Details
where State='CA';
-- Question 5
select 
	State,
    count(*) as Num_Of_Customers
from 
	Customer
group by 
	State
having 
	count(*)>5;
		-- No repeated entries exist in this case
-- Question 6
select 
	State,
    count(*) as Num_Of_Customers
from 
	Customer_details
group by 
	State;
 -- Question 7
select 
	*
from 
	Customer_details
order by 
	State asc;
#----------------------------------------------------------------
