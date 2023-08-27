# coding=utf-8
# Author: Deean
# Date: 2023-08-27 15:12
# FileName: P1084.sql
# Description: 1084. 销售分析III

create database P1084;
use P1084;

Create table If Not Exists Product (
    product_id   int,
    product_name varchar(10),
    unit_price   int
);
Create table If Not Exists Sales (
    seller_id  int,
    product_id int,
    buyer_id   int,
    sale_date  date,
    quantity   int,
    price      int
);
Truncate table Product;
insert into Product (product_id, product_name, unit_price)
values ('1', 'S8', '1000');
insert into Product (product_id, product_name, unit_price)
values ('2', 'G4', '800');
insert into Product (product_id, product_name, unit_price)
values ('3', 'iPhone', '1400');
Truncate table Sales;
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price)
values ('1', '1', '1', '2019-01-21', '2', '2000');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price)
values ('1', '2', '2', '2019-02-17', '1', '800');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price)
values ('2', '2', '3', '2019-06-02', '1', '800');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price)
values ('3', '3', '4', '2019-05-13', '2', '2800');

select p.product_id, p.product_name
from product p
         left join(select product_id, month(sale_date) as month
                   from sales
                   where year(sale_date) <> '2019'
                      or month(sale_date) not between 1 and 3) as t
                  on p.product_id = t.product_id
where t.month is null
  and p.product_id in (select product_id from sales);

