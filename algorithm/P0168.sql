# coding=utf-8
# Author: Deean
# Date: 2023-08-23 22:13
# FileName: P0168.sql
# Description: 

create database P0168;
use P0168;

Create table If Not Exists Sales
(
    sale_id    int,
    product_id int,
    year       int,
    quantity   int,
    price      int
);
Create table If Not Exists Product
(
    product_id   int,
    product_name varchar(10)
);
Truncate table Sales;
insert into Sales (sale_id, product_id, year, quantity, price)
values ('1', '100', '2008', '10', '5000');
insert into Sales (sale_id, product_id, year, quantity, price)
values ('2', '100', '2009', '12', '5000');
insert into Sales (sale_id, product_id, year, quantity, price)
values ('7', '200', '2011', '15', '9000');
Truncate table Product;
insert into Product (product_id, product_name)
values ('100', 'Nokia');
insert into Product (product_id, product_name)
values ('200', 'Apple');
insert into Product (product_id, product_name)
values ('300', 'Samsung');

select *
from sales;
select *
from product;

select product_name, year, price
from sales s
         inner join Product p
                    on s.product_id = p.product_id;