---ASSI-2--
--SOLVED-QUERIES--
--(customer table)--
Create Table Customer2
(Id int primary key not null,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Fax_num int
);
--inserting record in customer table--
Insert into Customer2 values(1,'sachin','kolhe','nashik','india',+-9163782987)
Insert into Customer2 values(2,'rutuja','jadhav','satana','india',9953567822)
Insert into Customer2 values(3,'kalpesh','naik','nashik','germany',4563453217)
Insert into Customer2 values(4,'akshay','jadhav','amlner','nepal',9934567823)
Insert into Customer2 values(5,'bhushan','pawar','dhule','',9923456789)
--queries--
select * from Customer2
select *from Customer2 where Country = 'germany'
select *from Customer2 where Fax_num ='+-91'
select* from Customer2 where FirstName Like '_U%'

---Product Table--

Create Table Product
(
Id int primary key not null,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
Isdiscontinued bit
);
-----inserting records into Product table-----
Insert Into Product Values(1,'laptop','1544.66','10.88',1)
select * from Product
Insert Into Product Values(2,'tab','44.66','8.88',1)
Insert Into Product Values(4,'watch','14.66','7.88',1)
Insert Into Product Values(1,'exotic liquid','1544.66','10.88',1)
select * from Product where UnitPrice>10 and UnitPrice<20;
select * from Product;
select ProductName from Product where ProductName = 'exotic liquid'

--order_customer table--
Create Table Order_Customer
(Id int,
Order_Id int primary key,
OrderDate DateTime not null,
CustomerId int,
TotalAmount Decimal(12,2)
);
--inserting records in order_customer table--
insert into Order_Customer values(1,'56789','14-10-2022',9,345.0)
insert into Order_Customer values(2,'0089','15-11-2022',10,305.0)
insert into Order_Customer values(3,'01789','16-12-2022',78,45.0)
--queries--
select * from Order_Customer
select OrderDate from Order_Customer group by OrderDate;
select * from Order_Customer where OrderDate Between 14-10-2022 and 16-12-2022;

--orderitem table--
Create table OrderItem
(Id int primary key,
OrderId1 int,
ProductId int,
UnitPrice Decimal(12,2),
Quantity int,
ProductName nvarchar(20),
categoryName nvarchar (30),
DiscountPrice decimal(20,3),
bill_id int,
);
--inserting records in OrderItem table--
insert into OrderItem values(1,11,234,10.44,5);
insert into OrderItem values(2,10,238,00.44,7);
insert into OrderItem values(3,33,546,30.44,4);
insert into OrderItem values(4,56,234,80.44,6);
--solved queries--
select * from OrderItem;
select * from OrderItem where UnitPrice>10 and UnitPrice<20;
select Avg (Quantity) from OrderItem;
--inserting recotds for orderitem--
insert into OrderItem values (8,67,456,90.56,'laptop','accessories','340000','34');
select bill_id from OrderItem where ProductName Like 'laptop' and CategoryName ,DiscountPrice and Bill_id Like 'laptop''accesories''340000''34';
--employee table--
Create table employee
(emp_Id int primary key not null,
emp_name nvarchar(20),
manager_name nvarchar (30),
company_name nvarchar (30),
);
--inserting records in employee table--
insert into employee values (1567,'rutuja','shilpa','capgemini');
insert into employee values (3456,'jadhav','snehal','wipro');
insert into employee values (3456,'deore','mrunal','sealinks');
insert into employee values (3456,'bhamare','tejas','sea bear shipping');
insert into employee values (3456,'jadhav','apurva','seaborne freight');
insert into employee values (3456,'pawar','sejal','sharkey');
----queries---
select * from employee;
select * from employee where emp_name Like 'jadhav' and  manager_name Like'snehal';
select * from employee where Company_name Like 'shipping';