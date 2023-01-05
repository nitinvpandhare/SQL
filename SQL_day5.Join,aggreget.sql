--05/01/23 day 5

select * from cust
select * from order1

--inner join
select c.*, o.oname from cust c
inner join order1 o on o.oid=c.oid

--insert reco
insert into cust values(19,'raj','raj@gmail.com','r@3456',null),
(20,'tat','tat@gmail.com','t@3956',null)

select * from cust

--left join
select c.*, o.oname from cust c
left join order1 o on o.oid=c.oid

--right join
select c.*, o.oname from cust c
right join order1 o on o.oid=c.oid

--full/cross join
select c.*,o.oname from cust c
full join order1 o on o.oid=c.oid

----self join
alter table cust add managerid int

update cust set managerid=1 where cid in (11,12,13)
update cust set managerid=14 where cid in(15,16,17)
update cust set managerid=18 where cid in(19,20)

select ct.cname as 'customer', man.cname as 'manager'
from cust ct, cust man
where man.cid=ct.managerid

select * from cust

------------------------------------------------------------
--cross join

create table pro(
pro_id int,
pro_name varchar(30),
)
create table size(
s_id int,
s_name varchar(10),
)

create table color(
c_id int,
c_name varchar(20)
)

insert into color values(33,'red'),
(34,'yellow'),
(35,'green'),
(36,'blue'),
(37,'white')

insert into pro values(1,'T-shirt'),
(2,'Pant'),
(3,'shirt')

insert into size values(00110,'M'),
(00220,'XL'),
(00300,'XXl'),
(0040,'XXXL'),
(0045,'SM')

select * from pro
select * from size
select * from color

select * from pro cross join size cross join color

-- salary added
alter table cust add salary int

UPDATE cust SET salary = 50000 WHERE cid = 1;
UPDATE cust SET salary = 34000 WHERE cid = 11;
UPDATE cust SET salary = 20000 WHERE cid = 12;
UPDATE cust SET salary = 67000 WHERE cid = 13;
UPDATE cust SET salary = 10000 WHERE cid = 14;
UPDATE cust SET salary = 39000 WHERE cid = 15;
UPDATE cust SET salary = 80000 WHERE cid = 16;
UPDATE cust SET salary = 7000 WHERE cid = 17;
UPDATE cust SET salary = 15000 WHERE cid = 19;
UPDATE cust SET salary = 22000 WHERE cid = 20;



select sum(salary) as 'total salary' from cust

select min(salary) as 'min salary' from cust

select max(salary) as 'max salary' from cust

select avg(salary) as 'avg salary' from cust

select count(salary) as 'count salary' from cust

select count(*) as 'ALL records' from cust

select * from cust