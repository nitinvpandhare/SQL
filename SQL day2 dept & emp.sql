create table Deptm(
deptid int primary key,
deptname varchar (30),
deptwork varchar (150),
)

create table Emp(
eid int primary key,
ename varchar(30),
eemail varchar(50) unique,
eage int check(eage>=18),
country varchar(20) default 'UK',
deptid int foreign key references Deptm(deptid)
)

alter table Emp add constraint fk_Emp foreign key (deptid) references deptm(deptid)

alter table Emp add salary decimal
sp_help Emp

select * from Emp
select * from Deptm

--insert

insert into Deptm values(1,'hr','office')
insert into Deptm values(2,'Manager','Devide task')
insert into Deptm values(3,'Testing', 'attend meeting')
insert into Deptm values(4,'development','office')
insert into Deptm values(5,'Ai','anyalitics')
insert into Deptm values(6,'ML','support')
--

insert into Emp values(1,'nitin','nitin@gmail.com',20,'india',1)
insert into Emp values(2,'arun','arun@gmail.com',20,'SAA',2)

insert into Emp values(3,'tejas','tejas@gmail.com',25,'USA',3)
insert into Emp values(4,'ajay','ajay@gmail.com',29,'NY',3)
insert into Emp values(5,'kajal','kajal@gmail.com',25,'Test',6)
insert into Emp values(6,'sagar','sagar@gmail.com',21,'City',4)
insert into Emp values(7,'akshay','akshay@gmail.com',24,'NTY',3)
insert into Emp values(8,'gorkha','gorkha@gmail.com',27,'SA',5)
insert into Emp values(9,'manthan','manthan@gmail.com',20,'HTML',6)
insert into Emp values(10,'MMMM','mmm@gmail.com',20,'CSS',5)
insert into Emp(eid,ename,eemail,eage,country,deptid) values(11,'MN','mn@gmail.com',24,'JS',4)
insert into Emp(eid,ename,eemail,eage,deptid) values(12,'NM','nm@gmail.com',24,1)

--DML

--update
update Emp set eage=18 where eid=1
update Emp set eage=19 where eid=4
update Emp set eage=22 where eid=9

--delete
delete from Emp where eid=8
delete from Emp where eid=3

--delete from deptid
delete from Emp where deptid=6

--DQL
--singal record
select * from Emp where eid=1
select * from Emp where eid=4

select * from Emp where eage>=20

select * from Emp where eage between 18 and 20

select * from Emp