# coding=utf-8
# Author: Deean
# Date: 2023-08-25 22:24
# FileName: P0577.sql
# Description: 

create database P0577;
use P0577;

Create table If Not Exists Employee (
    empId      int,
    name       varchar(255),
    supervisor int,
    salary     int
);
Create table If Not Exists Bonus (
    empId int,
    bonus int
);
Truncate table Employee;
insert into Employee (empId, name, supervisor, salary)
values ('3', 'Brad', NULL, '4000');
insert into Employee (empId, name, supervisor, salary)
values ('1', 'John', '3', '1000');
insert into Employee (empId, name, supervisor, salary)
values ('2', 'Dan', '3', '2000');
insert into Employee (empId, name, supervisor, salary)
values ('4', 'Thomas', '3', '4000');
Truncate table Bonus;
insert into Bonus (empId, bonus)
values ('2', '500');
insert into Bonus (empId, bonus)
values ('4', '2000');

select e.name, b.bonus
from employee e
         left join bonus b
                   on e.empId = b.empId
where b.bonus < 1000
   or b.bonus is NULL;