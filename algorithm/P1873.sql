# coding=utf-8
# Author: Deean
# Date: 2023-08-27 19:45
# FileName: P1873.sql
# Description:1873. 计算特殊奖金

create database P1873;
use P1873;

Create table If Not Exists Employees (
    employee_id int,
    name        varchar(30),
    salary      int
);
Truncate table Employees;
insert into Employees (employee_id, name, salary)
values ('2', 'Meir', '3000');
insert into Employees (employee_id, name, salary)
values ('3', 'Michael', '3800');
insert into Employees (employee_id, name, salary)
values ('7', 'Additively', '7400');
insert into Employees (employee_id, name, salary)
values ('8', 'Juan', '6100');
insert into Employees (employee_id, name, salary)
values ('9', 'Cannon', '7700');

select employee_id,
       (
           IF(employee_id % 2 = 0 or name like 'M%', 0, salary)
           ) as bonus
from employees
order by employee_id;