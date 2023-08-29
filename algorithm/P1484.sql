# coding=utf-8
# Author: Deean
# Date: 2023-08-27 20:51
# FileName: P1484.sql
# Description:1484. 按日期分组销售产品

create database P1484;
use P1484;

Create table If Not Exists Activities (
    sell_date date,
    product   varchar(20)
);
Truncate table Activities;
insert into Activities (sell_date, product)
values ('2020-05-30', 'Headphone');
insert into Activities (sell_date, product)
values ('2020-06-01', 'Pencil');
insert into Activities (sell_date, product)
values ('2020-06-02', 'Mask');
insert into Activities (sell_date, product)
values ('2020-05-30', 'Basketball');
insert into Activities (sell_date, product)
values ('2020-06-01', 'Bible');
insert into Activities (sell_date, product)
values ('2020-06-02', 'Mask');
insert into Activities (sell_date, product)
values ('2020-05-30', 'T-Shirt');

select *
from activities;

select sell_date,
       count(distinct product)                                       as num_sold,
       group_concat(distinct product order by product separator ',') as products
from activities
group by sell_date
order by sell_date;