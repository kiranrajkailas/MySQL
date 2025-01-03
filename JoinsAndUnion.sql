-- Create Database
create database countrydata2;
use countrydata2;

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
select * from Persons;
-- Question 1
#Inner Join
select Country.ID, Persons.Fname, Persons.Lname, Persons.Rating from
Persons inner join Country on
Persons.ID=Country.ID;
#Left Join
select Country.ID, Country.Country_name, Persons.Fname, Persons.Lname, Persons.Rating, Persons.Country_ID from
Persons left join Country on
Persons.ID=Country.ID;
#Right Join
select Country.ID, Country.Country_name, Persons.Fname, Persons.Lname, Persons.Rating, Persons.Country_ID from
Persons right join Country on
Persons.ID=Country.ID;
-- Question 2
select distinct Country_name
from (
  select Country_name from Country
  union
  select Country_name from Persons
) as Distinct_country;
-- Question 3
select Country_name 
from Country
union all
select Country_name 
from Persons;
-- Question 4
select round(Rating) as Rating_rounded
from Persons;