# coding=utf-8
# Author: Deean
# Date: 2023-08-27 14:53
# FileName: P0619.sql
# Description:619. 只出现一次的最大数字

create database P0619;
use P0619;

Create table If Not Exists MyNumbers (
    num int
);
Truncate table MyNumbers;
insert into MyNumbers (num)
values ('8');
insert into MyNumbers (num)
values ('8');
insert into MyNumbers (num)
values ('3');
insert into MyNumbers (num)
values ('3');
insert into MyNumbers (num)
values ('1');
insert into MyNumbers (num)
values ('4');
insert into MyNumbers (num)
values ('5');
insert into MyNumbers (num)
values ('6');

select max(num) as num
from (select num
      from mynumbers
      group by num
      having count(num) = 1) as t;