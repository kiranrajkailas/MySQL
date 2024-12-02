-- Create Database
create database countrydata3;
use countrydata3;

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
select * from Persons;
-- Question 1
alter table Persons
add DOB date;
select * from Persons;
#Adding data
update Persons
set DOB = 
    case ID
        WHEN 1 THEN '1990-02-12'
        WHEN 2 THEN '1991-03-15'
        WHEN 3 THEN '1992-04-20'
        WHEN 4 THEN '1993-05-25'
        WHEN 5 THEN '1994-06-30'
        WHEN 6 THEN '1995-07-05'
        WHEN 7 THEN '1996-08-20'
        WHEN 8 THEN '1997-09-15'
        WHEN 9 THEN '1998-10-30'
        WHEN 10 THEN '1999-11-25'
    end
where ID between 1 and 10;
select * from Persons;
-- Question 2
delimiter $$
create function AgeCalculation1(DOB date)
returns int deterministic
begin
declare Age int;
set Age=timestampdiff(year,DOB, curdate());
return Age;
end $$
delimiter ;
select AgeCalculation1('1999-11-25') as date;
-- Question 3
select 
ID,
FName,
LName,
DOB,
AgeCalculation1(DOB) as Age
from 
Persons;
-- Question 4
select Country_name,
length(Country_name) as CountryNameLength
from Country;
-- Question 5
select Country_name,
substr(Country_name,1,3) as FirstThreeLetters
from Country;
-- Question 6
select Country_name, 
upper(Country_name) as CountryNameUpper, 
lower(Country_name) as CountryNameLower
from Country;