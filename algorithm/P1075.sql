# coding=utf-8
# Author: Deean
# Date: 2023-08-25 22:31
# FileName: P1075.sql
# Description: 

create database P1075;
use P1075;

Create table If Not Exists Project (
    project_id  int,
    employee_id int
);
Create table If Not Exists Employee (
    employee_id      int,
    name             varchar(10),
    experience_years int
);
Truncate table Project;
insert into Project (project_id, employee_id)
values ('1', '1');
insert into Project (project_id, employee_id)
values ('1', '2');
insert into Project (project_id, employee_id)
values ('1', '3');
insert into Project (project_id, employee_id)
values ('2', '1');
insert into Project (project_id, employee_id)
values ('2', '4');
Truncate table Employee;
insert into Employee (employee_id, name, experience_years)
values ('1', 'Khaled', '3');
insert into Employee (employee_id, name, experience_years)
values ('2', 'Ali', '2');
insert into Employee (employee_id, name, experience_years)
values ('3', 'John', '1');
insert into Employee (employee_id, name, experience_years)
values ('4', 'Doe', '2');

select p.project_id, round(avg(e.experience_years), 2) average_years
from project p
         inner join employee e
                    on p.employee_id = e.employee_id
group by p.project_id;
