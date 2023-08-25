# coding=utf-8
# Author: Deean
# Date: 2023-08-25 21:57
# FileName: P1789.sql
# Description: 

create database P1789;
use P1789;

Create table If Not Exists Employee (
    employee_id   int,
    department_id int,
    primary_flag  ENUM ('Y','N')
);
Truncate table Employee;
insert into Employee (employee_id, department_id, primary_flag)
values ('1', '1', 'N');
insert into Employee (employee_id, department_id, primary_flag)
values ('2', '1', 'Y');
insert into Employee (employee_id, department_id, primary_flag)
values ('2', '2', 'N');
insert into Employee (employee_id, department_id, primary_flag)
values ('3', '3', 'N');
insert into Employee (employee_id, department_id, primary_flag)
values ('4', '2', 'N');
insert into Employee (employee_id, department_id, primary_flag)
values ('4', '3', 'Y');
insert into Employee (employee_id, department_id, primary_flag)
values ('4', '4', 'N');

select *
from employee;

select employee_id, department_id
from employee
where primary_flag = 'Y'
   or employee_id in (select employee_id
                      from employee
                      group by employee_id
                      having count(employee_id) = 1);





