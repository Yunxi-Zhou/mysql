-- 1. select columns from the table
drop table if exists `Customer`;
create table `Customer` (
    `CustomerID` int(10) unsigned not null,
    `CustomerName` varchar(32) not null,
    `City` varchar(32) not null
);
select CustomerName, City from Customer;
-- 2. select all columns from the table
select * from Customer;
-- 3. select s.id from station s, id = 13 or 14, not = 4
drop table if exists `station`;
create table `station` (
    `id` int(100) unsigned not null
);
insert into station (id) values
(4), (13), (14), (15);
select s.id 
from station s 
where s.id in (13,14) and s.id not in (4);
select * from station;