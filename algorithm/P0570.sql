# coding=utf-8
# Author: Deean
# Date: 2023-08-26 23:15
# FileName: P0570.sql
# Description:570. 至少有5名直接下属的经理

create database P0570;
use P0570;

Create table If Not Exists Employee (
    id         int,
    name       varchar(255),
    department varchar(255),
    managerId  int
);
Truncate table Employee;
insert into Employee (id, name, department, managerId)
values ('101', 'John', 'A', null);
insert into Employee (id, name, department, managerId)
values ('102', 'Dan', 'A', '101');
insert into Employee (id, name, department, managerId)
values ('103', 'James', 'A', '101');
insert into Employee (id, name, department, managerId)
values ('104', 'Amy', 'A', '101');
insert into Employee (id, name, department, managerId)
values ('105', 'Anne', 'A', '101');
insert into Employee (id, name, department, managerId)
values ('106', 'Ron', 'B', '101');

select *
from employee;

select name
from employee
         inner join
     (select managerId
      from employee
      group by managerId
      having count(managerId) >= 5) as manager
     on id = manager.managerId;