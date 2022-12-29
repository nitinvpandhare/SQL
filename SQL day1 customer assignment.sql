--customers examaple
create table order1(
oid int primary key, 
oname varchar(35) not null,
oaddress varchar(250) not null,
)

create table cust(
cid int,
cname varchar(25) not null,
cage int check(cage>=18),
cemail varchar(35) unique,
cpass varchar (10) unique,
country varchar(10) default 'INdia',
cno int,
oid int,          -- foreign key references cust(custid),
constraint fk_cust foreign key(oid) references order1(oid)
)
alter table cust drop column cno

--alter table cust add constraint custno numeric(20)
--alter table cust add constraint chk_age check (age>=18)
--alter table cust alter column price numeric(8,2)

alter table cust alter column cid int not null
alter table cust add constraint pk_cust primary key(cid)

--apply fk constraint on cust table for oid
alter table cust add constraint fk_custorder1 foreign key(oid) references order1(oid)

--remove foreign key constraint
alter table cust drop constraint fk_custorder1

sp_help order1
sp_help cust

select * from cust
select * from order1

insert into order1 values(1,'mounse', 'pune')
insert into order1 values(2,'computer', 'pune')
insert into order1 values(3,'keyboard', 'pune')
insert into order1 values(4,'cable', 'pune')

insert into cust values(1,'sarang',18,'sarang@gmail.com','s@123','uk',1)
insert into cust values(11,'ajay',20,'ajay@gmail.com','a@1','sp',2)
insert into cust values(12,'kajal',30,'kajal@gmail.com','k@13','hk',3)
insert into cust values(13,'patil',27,'patil@gmail.com','p@1234','sk',4)
insert into cust values(14,'shiva',25,'shiva@gmail.com','sh@12','us',1)
insert into cust values(15,'ganesh',20,'ganesh@gmail.com','g@1235','np',2)
insert into cust values(16,'pandu',32,'pandu@gmail.com','p@000','kp',3)
insert into cust values(17,'bande',24,'bande@gmail.com','b@0','mp',4)


--DQL

select cname, cemail,cpass from cust

select * from cust where cid=15
select * from cust where cid=1
select * from cust where cid=12

select * from cust where oid=3

--DMl
update cust set cage=19 where cid=12
update cust set cage=19 where cid=16

delete from cust where cid=14

delete from cust where oid=4

select * from cust