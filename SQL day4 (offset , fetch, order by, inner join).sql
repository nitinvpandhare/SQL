select * from cust

update cust set cpass=null where cid=15
--is null
select * from cust where cpass is null

--is not null
select * from cust where cpass is not null

--order by

select * from cust order by cname
select * from cust order by cname desc

select * from cust order by cpass
select * from cust order by cpass, cname
select * from cust order by cpass ,cname desc
select * from cust order by cemail, cname

--offset 
select * from cust
order by cname
offset 4 rows
--fetch
fetch next 3row only

select * from cust
order by cpass desc
offset 1 rows
fetch next 3 rows only


--joins 
--innerjoins

select * from cust
select * from order1

select c.cage 'custmoer age', c.cemail, c.cname, c.country,c.oid
from cust c
inner join order1 o on o.oid=c.oid

select c.*,o.oname
from cust c
inner join order1 o on o.oid=c.oid

select c.cname, c.cemail, c.country
from cust c
inner join order1 o on o.oid=c.oid

select cust.cemail, cust.country,cust.oid
from cust
inner join order1 o on o.oid=cust.oid

select cust.country
from cust