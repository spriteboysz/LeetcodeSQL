# coding=utf-8
# Author: Deean
# Date: 2023-08-23 21:59
# FileName: algorithm
# Description:P0176.sql

create database p0176;
use p0176;
show tables;

Create table If Not Exists Employee
(
    id     int,
    salary int
);
Truncate table Employee;
insert into Employee (id, salary)
values ('1', '100');
insert into Employee (id, salary)
values ('2', '200');
insert into Employee (id, salary)
values ('3', '300');

select *
from employee;

select (select DISTINCT salary SecondHighestSalary
        from employee
        order by salary desc
        limit 1, 1) AS SecondHighestSalary;