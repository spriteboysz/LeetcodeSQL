# coding=utf-8
# Author: Deean
# Date: 2023-08-23 23:46
# FileName: P1741.sql
# Description:1741. 查找每个员工花费的总时间

create database P1741;
use P1741;

Create table If Not Exists Employees
(
    emp_id    int,
    event_day date,
    in_time   int,
    out_time  int
);
Truncate table Employees;
insert into Employees (emp_id, event_day, in_time, out_time)
values ('1', '2020-11-28', '4', '32');
insert into Employees (emp_id, event_day, in_time, out_time)
values ('1', '2020-11-28', '55', '200');
insert into Employees (emp_id, event_day, in_time, out_time)
values ('1', '2020-12-3', '1', '42');
insert into Employees (emp_id, event_day, in_time, out_time)
values ('2', '2020-11-28', '3', '33');
insert into Employees (emp_id, event_day, in_time, out_time)
values ('2', '2020-12-9', '47', '74');

select * from employees;

select event_day day, emp_id, sum(out_time - in_time) total_time
from employees
group by event_day, emp_id;
