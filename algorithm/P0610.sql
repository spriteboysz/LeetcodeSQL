# coding=utf-8
# Author: Deean
# Date: 2023-08-27 14:49
# FileName: P0610.sql
# Description:610. 判断三角形

create database P0610;
use P0610;

Create table If Not Exists Triangle (
    x int,
    y int,
    z int
);
Truncate table Triangle;
insert into Triangle (x, y, z)
values ('13', '15', '30');
insert into Triangle (x, y, z)
values ('10', '20', '15');

select x,
       y,
       z,
       (
           IF(x + y > z and x + z > y and z + y > x, 'Yes', 'No')
           ) as triangle
from triangle;