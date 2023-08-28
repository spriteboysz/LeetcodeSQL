# coding=utf-8
# Author: Deean
# Date: 2023-08-27 20:09
# FileName: P1978.sql
# Description:1978. 上级经理已离职的公司员工

create database P1978;
use P1978;
Create table If Not Exists Employees (
    employee_id int,
    name        varchar(20),
    manager_id  int,
    salary      int
);
Truncate table Employees;
insert into Employees (employee_id, name, manager_id, salary)
values ('3', 'Mila', '9', '60301');
insert into Employees (employee_id, name, manager_id, salary)
values ('12', 'Antonella', null, '31000');
insert into Employees (employee_id, name, manager_id, salary)
values ('13', 'Emery', null, '67084');
insert into Employees (employee_id, name, manager_id, salary)
values ('1', 'Kale', '11', '21241');
insert into Employees (employee_id, name, manager_id, salary)
values ('9', 'Mikaela', null, '50937');
insert into Employees (employee_id, name, manager_id, salary)
values ('11', 'Josiah', '6', '28485');

select *
from employees;

select employee_id
from employees e
where e.manager_id not in (select employee_id
                           from employees)
  and e.salary < 30000
order by employee_id;