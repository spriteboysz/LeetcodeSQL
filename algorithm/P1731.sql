# coding=utf-8
# Author: Deean
# Date: 2023-08-27 19:37
# FileName: P1731.sql
# Description:1731. 每位经理的下属员工数量

create database P1731;
use P1731;

Create table If Not Exists Employees (
    employee_id int,
    name        varchar(20),
    reports_to  int,
    age         int
);
Truncate table Employees;
insert into Employees (employee_id, name, reports_to, age)
values ('9', 'Mercy', null, '43');
insert into Employees (employee_id, name, reports_to, age)
values ('6', 'Alice', '9', '41');
insert into Employees (employee_id, name, reports_to, age)
values ('4', 'Bob', '9', '36');
insert into Employees (employee_id, name, reports_to, age)
values ('2', 'Winston', null, '37');

select e.employee_id, e.name, count(e.employee_id) as reports_count, round(avg(m.age), 0) as average_age
from employees e
         inner join employees m
                    on m.reports_to = e.employee_id
group by e.employee_id, e.name
order by e.employee_id;