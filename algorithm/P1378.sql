# coding=utf-8
# Author: Deean
# Date: 2023-08-23 23:54
# FileName: P1378.sql
# Description:1378. 使用唯一标识码替换员工ID

create database P1378;
use P1378;

Create table If Not Exists Employees
(
    id   int,
    name varchar(20)
);
Create table If Not Exists EmployeeUNI
(
    id        int,
    unique_id int
);
Truncate table Employees;
insert into Employees (id, name)
values ('1', 'Alice');
insert into Employees (id, name)
values ('7', 'Bob');
insert into Employees (id, name)
values ('11', 'Meir');
insert into Employees (id, name)
values ('90', 'Winston');
insert into Employees (id, name)
values ('3', 'Jonathan');
Truncate table EmployeeUNI;
insert into EmployeeUNI (id, unique_id)
values ('3', '1');
insert into EmployeeUNI (id, unique_id)
values ('11', '2');
insert into EmployeeUNI (id, unique_id)
values ('90', '3');

select *
from employees;
select *
from employeeuni;

select unique_id, name
from employees
         left join employeeuni
                   on Employees.id = EmployeeUNI.id;