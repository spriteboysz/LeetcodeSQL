# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:36
# FileName: P1795.sql
# Description:1795. 每个产品在不同商店的价格

create database P1795;
use P1795;

Create table If Not Exists Products
(
    product_id int,
    store1     int,
    store2     int,
    store3     int
);
Truncate table Products;
insert into Products (product_id, store1, store2, store3)
values ('0', '95', '100', '105');
insert into Products (product_id, store1, store2, store3)
values ('1', '70', null, '80');

select *
from products;

select product_id, 'store1' store, store1 price
from products
where store1 is not null
union all
select product_id, 'store2' store, store2 price
from products
where store2 is not null
union all
select product_id, 'store3' store, store3 price
from products
where store3 is not null;