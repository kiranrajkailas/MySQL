#Creating the database
create database Sales;
use Sales; 
create table Orders(
Order_ID int primary key unique not null,
Customer_Name varchar(50) not null,
Product_Category varchar(50),
Ordered_Item varchar(50),
Contact_No char(10) unique);
#Add a new column
alter table orders add Order_Quantity int;
#Rename table
rename table orders to sales_order;
#Insert values into the table
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('12456','John','Office Supplies','Printer','9874568790','2');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('35897','Mary','Electronics','Laptop','9954878965','3');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('36987','Alice','Cosmetics','Sunscreen','9462489752','5');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('64789','Jacob','Food supplies','Oats','9412387945','5');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('74562','Neha','Cosmetics','Face wash','9147898564','4');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('87412','Reddy','Office Supplies','Keyboard','8754269874','4');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('34571','Anjali','Electronics','TV','7045987451','3');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('74123','Roshan','Cosmetics','Hair Serum','9974123547','4');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('41245','Rahul','Food supplies','Noodles','9741265478','6');
insert into sales_order (Order_ID, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity)
values('14897','Muhammed','Cosmetics','Face wash','6547897456','2');
select* from sales_order;

select Customer_Name, Ordered_Item from sales_order;

update sales_order 
set Ordered_Item= 'Protein powder'
where Customer_Name='Rahul';
select* from sales_order;
drop table sales_order;