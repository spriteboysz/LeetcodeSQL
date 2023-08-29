# coding=utf-8
# Author: Deean
# Date: 2023-08-27 21:04
# FileName: P0584.sql
# Description:584. 寻找用户推荐人

create database P0584;
use P0584;

Create table If Not Exists Customer (
    id         int,
    name       varchar(25),
    referee_id int
);
Truncate table Customer;
insert into Customer (id, name, referee_id)
values ('1', 'Will', null);
insert into Customer (id, name, referee_id)
values ('2', 'Jane', null);
insert into Customer (id, name, referee_id)
values ('3', 'Alex', '2');
insert into Customer (id, name, referee_id)
values ('4', 'Bill', null);
insert into Customer (id, name, referee_id)
values ('5', 'Zack', '1');
insert into Customer (id, name, referee_id)
values ('6', 'Mark', '2');

select name
from Customer
where referee_id <> 2
   or referee_id is NULL;