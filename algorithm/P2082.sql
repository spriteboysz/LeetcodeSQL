# coding=utf-8
# Author: Deean
# Date: 2023-08-23 22:37
# FileName: P2082.sql
# Description: 

create database P2082;
use P2082;

Create table If Not Exists Store
(
    bill_id     int,
    customer_id int,
    amount      int
);
Truncate table Store;
insert into Store (bill_id, customer_id, amount)
values ('6', '1', '549');
insert into Store (bill_id, customer_id, amount)
values ('8', '1', '834');
insert into Store (bill_id, customer_id, amount)
values ('4', '2', '394');
insert into Store (bill_id, customer_id, amount)
values ('11', '3', '657');
insert into Store (bill_id, customer_id, amount)
values ('13', '3', '257');

select *
from store;

select count(distinct (customer_id)) rich_count
from store
where amount > 500;