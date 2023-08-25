# coding=utf-8
# Author: Deean
# Date: 2023-08-23 22:57
# FileName: P0183.sql
# Description: 

create database P0183;
use P0183;

Create table If Not Exists Customers
(
    id   int primary key,
    name varchar(255)
);
Create table If Not Exists Orders
(
    id         int primary key,
    customerId int
);
Truncate table Customers;
insert into Customers (id, name)
values ('1', 'Joe');
insert into Customers (id, name)
values ('2', 'Henry');
insert into Customers (id, name)
values ('3', 'Sam');
insert into Customers (id, name)
values ('4', 'Max');
Truncate table Orders;
insert into Orders (id, customerId)
values ('1', '3');
insert into Orders (id, customerId)
values ('2', '1');

select * from customers;
select * from orders;

select name Customers
from customers c left join orders o
on c.id = o.customerId
where o.id is NULL;