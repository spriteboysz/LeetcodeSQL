# coding=utf-8
# Author: Deean
# Date: 2023-08-27 21:10
# FileName: P1907.sql
# Description: 

create database P1907;
use P1907;

Create table If Not Exists Accounts (
    account_id int,
    income     int
);
Truncate table Accounts;
insert into Accounts (account_id, income)
values ('3', '108939');
insert into Accounts (account_id, income)
values ('2', '12747');
insert into Accounts (account_id, income)
values ('8', '87709');
insert into Accounts (account_id, income)
values ('6', '91796');

select *
from accounts;

select 'Low Salary' category,
       sum(
               IF(income < 20000, 1, 0)
           ) as     accounts_count
from accounts
union all
select 'Average Salary' category,
       sum(
               IF(income between 20000 and 50000, 1, 0)
           ) as         accounts_count
from accounts
union all
select 'High Salary' category,
       sum(
               IF(income > 50000, 1, 0)
           ) as      accounts_count
from accounts;