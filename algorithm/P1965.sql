# coding=utf-8
# Author: Deean
# Date: 2023-08-27 19:57
# FileName: P1965.sql
# Description:1965. 丢失信息的雇员

create database P1965;
use P1965;

Create table If Not Exists Employees (
    employee_id int,
    name        varchar(30)
);
Create table If Not Exists Salaries (
    employee_id int,
    salary      int
);
Truncate table Employees;
insert into Employees (employee_id, name)
values ('2', 'Crew');
insert into Employees (employee_id, name)
values ('4', 'Haven');
insert into Employees (employee_id, name)
values ('5', 'Kristian');
Truncate table Salaries;
insert into Salaries (employee_id, salary)
values ('5', '76071');
insert into Salaries (employee_id, salary)
values ('1', '22517');
insert into Salaries (employee_id, salary)
values ('4', '63539');

select e.employee_id AS employee_id
from employees e
         left join salaries s
                   on e.employee_id = s.employee_id
where s.employee_id is null
union all
select s.employee_id AS employee_id
from salaries s
         left join employees e
                   on s.employee_id = e.employee_id
where e.employee_id is null
order by employee_id;