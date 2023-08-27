# coding=utf-8
# Author: Deean
# Date: 2023-08-25 22:39
# FileName: P0586.sql
# Description:586. 订单最多的客户

create database P0586;
use P0586;

Create table If Not Exists orders (
    order_number    int,
    customer_number int
);
Truncate table orders;
insert into orders (order_number, customer_number)
values ('1', '1');
insert into orders (order_number, customer_number)
values ('2', '2');
insert into orders (order_number, customer_number)
values ('3', '3');
insert into orders (order_number, customer_number)
values ('4', '3');

select *
from orders;

select customer_number
from orders
group by customer_number
order by count(customer_number) desc
limit 1;