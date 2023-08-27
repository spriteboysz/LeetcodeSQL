# coding=utf-8
# Author: Deean
# Date: 2023-08-27 14:59
# FileName: P1045.sql
# Description:1045. 买下所有产品的客户

create database P1045;
use P1045;

Create table If Not Exists Customer (
    customer_id int,
    product_key int
);
Create table Product (
    product_key int
);
Truncate table Customer;
insert into Customer (customer_id, product_key)
values ('1', '5');
insert into Customer (customer_id, product_key)
values ('2', '6');
insert into Customer (customer_id, product_key)
values ('3', '5');
insert into Customer (customer_id, product_key)
values ('3', '6');
insert into Customer (customer_id, product_key)
values ('1', '6');
Truncate table Product;
insert into Product (product_key)
values ('5');
insert into Product (product_key)
values ('6');


select c.customer_id
from customer c
group by c.customer_id
having count(distinct c.product_key) = (select count(product_key)
                               from product)