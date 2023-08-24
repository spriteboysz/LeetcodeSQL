# coding=utf-8
# Author: Deean
# Date: 2023-08-24 00:00
# FileName: P1393.sql
# Description:1393. 股票的资本损益

create database P1393;
use P1393;

Create Table If Not Exists Stocks
(
    stock_name    varchar(15),
    operation     ENUM ('Sell', 'Buy'),
    operation_day int,
    price         int
);
Truncate table Stocks;
insert into Stocks (stock_name, operation, operation_day, price)
values ('Leetcode', 'Buy', '1', '1000');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Corona Masks', 'Buy', '2', '10');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Leetcode', 'Sell', '5', '9000');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Handbags', 'Buy', '17', '30000');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Corona Masks', 'Sell', '3', '1010');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Corona Masks', 'Buy', '4', '1000');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Corona Masks', 'Sell', '5', '500');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Corona Masks', 'Buy', '6', '1000');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Handbags', 'Sell', '29', '7000');
insert into Stocks (stock_name, operation, operation_day, price)
values ('Corona Masks', 'Sell', '10', '10000');

select *
from stocks;

select stock_name,
       sum(
               case operation
                   when 'Buy' then -price
                   when 'Sell' then price
                   end
           ) capital_gain_loss
from stocks
group by stock_name;