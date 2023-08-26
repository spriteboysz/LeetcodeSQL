# coding=utf-8
# Author: Deean
# Date: 2023-08-25 23:24
# FileName: P0626.sql
# Description: 

create database P0626;
use P0626;

Create table If Not Exists Seat (
    id      int,
    student varchar(255)
);
Truncate table Seat;
insert into Seat (id, student)
values ('1', 'Abbot');
insert into Seat (id, student)
values ('2', 'Doris');
insert into Seat (id, student)
values ('3', 'Emerson');
insert into Seat (id, student)
values ('4', 'Green');
insert into Seat (id, student)
values ('5', 'James');

select *
from seat;

SELECT s1.id, COALESCE(s2.student, s1.student) AS student
FROM seat s1
         LEFT JOIN seat s2 ON (s1.id + 1) ^ 1 - 1 = s2.id
ORDER BY s1.id;