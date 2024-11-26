-- Create Database
create database countrydata;
use countrydata;

-- Create Country table
create table Country (
  ID int primary key,
  Country_name varchar(50) not null,
  Population int not null,
  Area DECIMAL(10, 2)
);

-- Create Persons table
create table Persons (
  ID int primary key,
  Fname varchar(50) not null,
  Lname varchar(50) not null,
  Population int not null,
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
select * from Country;
-- Question 1
select substr(Country_name,1,3)
from Country;
-- Question 2
select concat(Fname, ' ', Lname)
from Persons;
-- Question 3
select count(distinct Country_name)
from Persons;
-- Question 4
select max(Population)
from Country;
-- Question 5
select min(Population)
from Country;
-- Question 6
-- Insert data into Persons table
insert into Persons (ID, Fname, Lname, Population, Rating, Country_Id, Country_name)
values
  (11, 'Christina', 'Evy', 1000, 4.0, 1, 'USA'),
  (12, 'Chen', 'Jung', 500, 4.2, 8, 'China');
select count(Lname) as count_lname
from Persons;
-- Question 7
select count(*)
from Persons;
-- Question 8
select Population
from Country
limit 3;
-- Question 9
select *
from Country
order by rand()
limit 3;
-- Question 10
select *
from Persons
order by Rating desc;
-- Question 11
select Country_name, sum(Population) as Total_population
from Persons
group by Country_name;
-- Question 12 (Total population greater than 2000 (in lakhs))
select Country_name,  sum(Population) as  Total_population
from Persons
group by Country_name
having Total_population >2000;
-- Question 13 (Two persons changed to One due to the kind of data I have created)
select 
  Country_name, 
  count(*) as total_persons, 
  avg(rating) as average_rating
from 
  Persons
group by 
  Country_name
having 
  count(*) > 1
order by 
  average_rating asc;
  ####################################