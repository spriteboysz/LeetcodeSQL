# coding=utf-8
# Author: Deean
# Date: 2023-08-26 23:07
# FileName: P0180.sql
# Description:180. 连续出现的数字

create database P0180;
use P0180;

Create table If Not Exists Logs (
    id  int,
    num int
);
Truncate table Logs;
insert into Logs (id, num)
values ('1', '1');
insert into Logs (id, num)
values ('2', '1');
insert into Logs (id, num)
values ('3', '1');
insert into Logs (id, num)
values ('4', '2');
insert into Logs (id, num)
values ('5', '1');
insert into Logs (id, num)
values ('6', '2');
insert into Logs (id, num)
values ('7', '2');

select *
from logs;

select distinct l1.num ConsecutiveNums
from logs l1,
     logs l2,
     logs l3
where l1.id = l2.id - 1
  and l2.id = l3.id - 1
  and l1.num = l2.num
  and l2.num = l3.num;