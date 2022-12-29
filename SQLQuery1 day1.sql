--create employee table empid, empname, salary, age, deptname.
--create
create table Employee2(
empid int,
empname varchar(20),
salary numeric(6,2),
age int,
depatname varchar(30)
)

--alter
alter table Employee2 alter column empname varchar(40)
--rename column
sp_rename 'Employee2.empname','ename'

--drop column
alter table Employee2 drop column ename

--add new column
alter table Employee2 add empname varchar(20)

--delete table cmd
--DROP TABLE table_name
DROP TABLE Employee

sp_help Employee2

--employee and department example

create table Dept(
deptid int primary key,
deptname varchar(20) not null,

)

create table Employee4(
eid int primary key,
ename varchar(10) not null,
eage int check(eage>=18),
email varchar(40) unique,
country varchar(20) default 'Test',
deptid int,
constraint fk_employee4 foreign key(deptid) references dept(deptid),

)

sp_help dept
sp_help employee4

--Customer Example assignment

create table Customer(
customerid int primary key,
customername varchar(20) not null,
age int check(age>=18),
country varchar(20) default 'India',
)

create table Orders(
orderid int primary key,
itemname varchar(20) not null,
amount numeric(4,2) not null,
customerid int  foreign key references customer(customerid),
)

alter table orders alter column orderid int not 
-- alter table orders add constraint pk_orders primary key(orderid)

sp_help orders