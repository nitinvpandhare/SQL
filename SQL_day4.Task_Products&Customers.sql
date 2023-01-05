

create table products(
pro_id int primary key,
pro_name varchar (30),
pro_price int,

)

create table customerss(
cust_id int,
cust_name varchar(30) not null,
cust_city varchar(70) not null,
cust_country varchar(33) not null,
cust_postalcode int ,
constraint cutomers_pk primary key(cust_id),
pro_id int,
constraint fk_products foreign key(pro_id) references products(pro_id)
)

select * from products
select * from customers

--insert products data in table

insert into products(pro_id,pro_name,pro_price) values(101,'Laptop',25000),
(102,'Tablet',18000),
(103,'monitor',4500),
(104,'Printer',12500),
(105,'CPU',9999),
(106,'Mobile',22999),
(107,'Mouse',1999),
(108,'MacBook',159999),
(109,'Iphone',75499),
(110,'Bluetooth',999),
(111,'DigitalWatch',4599),
(112,'SmartWatch',10000)

--insert  customers data into table

insert into customers(cust_id,cust_name,cust_city,cust_country,cust_postalcode,pro_id) values(51,'SVERI','P.pur','India',413304,112),
(52,'Skn','P.pur','India',413304,111),
(53,'SKN','Solapur','India',413300,110),
(54,'IIT','lucknow','uk',222001,109),
(55,'Ajay','Bihar','USA',234987,108),
(100,'Rahul','UK','UK',876123,107),
(101,'Nitin','London','India',987654,106),
(102,'sagar','mumbai','japan',987678,105),
(103,'Ganesh','Hyderabad','chaina',726348,104),
(104,'Amit','Nasa','South Korea',12110,103),
(105,'Shiva','Berlin','Indonesia',790130,102),
(21,'Ananda','Agra','RUS',000123,101),
(22,'Vinay','Sangli','Qatar',134567,104),
(23,'SArang','Qulas','Turkey',120978,106),
(24,'Luxury','burma','Cyprus',567123,108),
(25,'PWD','Dubaiphata','dubai',098745,110),
(26,'SKF','AJnale','india',413306,112),
(27,'Fabtech','North','NorthKorea',980319,103),
(28,'vidyapit','south','South jorea',091273,107),
(29,'Arun','pune','Laos',543678,111)



--1.1.	Write a statement that will select the City column from the Customers table

select cust_city from customers

--2.	Select all the different values from the Country column in the Customers table.

select distinct cust_country from customers

--3.	Select all records where the City column has the value "London

select * from customers where cust_city='London'

--4.	Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customers where not cust_city='Berlin' 

--5.	Select all records where the CustomerID column has the value 23.
select * from customers where cust_id=23

--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customers where cust_city='Berlin' and cust_postalcode=790130

--7.	Select all records where the City column has the value 'Berlin' or 'London'.
select * from customers where cust_city='Berlin' or cust_city='London'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customers
order by cust_city

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customers
order by cust_city desc

--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customers
order by cust_country, cust_city

--11.	Select all records from the Customers where the PostalCode column is empty.
update customers set cust_postalcode=null where cust_id=52

select * from customers where cust_postalcode is null

--12.	Select all records from the Customers where the PostalCode column is NOT empty.
select * from customers where cust_postalcode is not null

--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customers set cust_city='Oslo' where cust_country='Uk'

--14.	Delete all the records from the Customers table where the Country value is 'Norway'.or japan
delete from customers where cust_country='japan'

--15.	Use the MIN function to select the record with the smallest value of the Price column.
select min(pro_price) as 'Min Price' from products

--16.	Use an SQL function to select the record with the highest value of the Price column.
select max(pro_price) as 'max Price' from products

--17.	Use the correct function to return the number of records that have the Price value set to 20
update products set pro_price=20 where pro_id=102

select count(*) from products where pro_price=20

--18.	Use an SQL function to calculate the average price of all products.
select avg(pro_price) as 'avg price all products' from products

--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(pro_price) as 'sum of price all product' from products

--20.	Select all records where the value of the City column starts with the letter "a".
select * from customers where cust_city like'a%'

--21.	Select all records where the value of the City column ends with the letter "a".
select * from customers where cust_city like '%a'


--22.	Select all records where the value of the City column contains the letter "a".
select *from customers where cust_city like '%a%'

--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customers where cust_city like 'a%' and cust_city like '%b'

--24.	Select all records where the value of the City column does NOT start with the letter "a".
select * from customers where cust_city not like 'a%'


--25.	Select all records where the second letter of the City is an "a".
select * from customers where cust_city like '_a%'

--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from customers where cust_city like 'a%' or cust_city like 'c%' or cust_city like 's%'

--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customers where cust_city like '[a-f]%'

--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customers where cust_city not like 'a%' or cust_city not like 'c%' or cust_city not like 'f%'

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customers where cust_country in ('india','uk')

--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customers where cust_country not in('india', 'uk')

--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from products where pro_price between 20 and 1999

--32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from products where pro_price not between  20 and 1999 

--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from products where pro_name between 'Iphone' and 'Laptop'


--34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select cust_postalcode as 'pno' from customers

--35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.



--36.	List the number of customers in each country.
select count(cust_id),cust_country 
from customers group by cust_country 
order by count(cust_id) desc

--37.	List the number of customers in each country, ordered by the country with the most customers first.

select products.pro_id, customers.cust_name
from products
inner join customers on products.pro_id=customers.cust_id 

--38.	Write the correct SQL statement to create a new database called testDB.
create DATABASE testDB

--39.	Write the correct SQL statement to delete a database named testDB

drop DATABASE testDB 

--40.	Add a column of type DATE called Birthday in Persons table


--41.	Delete the column Birthday from the Persons table

select * from products
select * from customers