# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:00
# FileName: P0627.sql
# Description:627. 变更性别

create database P0627;
use P0627;

Create table If Not Exists Salary
(
    id     int,
    name   varchar(100),
    sex    char(1),
    salary int
);
Truncate table Salary;
insert into Salary (id, name, sex, salary)
values ('1', 'A', 'm', '2500');
insert into Salary (id, name, sex, salary)
values ('2', 'B', 'f', '1500');
insert into Salary (id, name, sex, salary)
values ('3', 'C', 'm', '5500');
insert into Salary (id, name, sex, salary)
values ('4', 'D', 'f', '500');

select *
from salary;

update salary
set sex = case sex
              when 'm' then 'f'
              when 'f' then 'm'
    end;
select * from salary;