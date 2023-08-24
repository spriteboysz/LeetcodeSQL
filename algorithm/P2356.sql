# coding=utf-8
# Author: Deean
# Date: 2023-08-23 23:07
# FileName: P2356.sql
# Description: 

create database P2356;
use P2356;

Create table If Not Exists Teacher
(
    teacher_id int,
    subject_id int,
    dept_id    int
);
Truncate table Teacher;
insert into Teacher (teacher_id, subject_id, dept_id)
values ('1', '2', '3');
insert into Teacher (teacher_id, subject_id, dept_id)
values ('1', '2', '4');
insert into Teacher (teacher_id, subject_id, dept_id)
values ('1', '3', '3');
insert into Teacher (teacher_id, subject_id, dept_id)
values ('2', '1', '1');
insert into Teacher (teacher_id, subject_id, dept_id)
values ('2', '2', '1');
insert into Teacher (teacher_id, subject_id, dept_id)
values ('2', '3', '1');
insert into Teacher (teacher_id, subject_id, dept_id)
values ('2', '4', '1');

select *
from teacher;

select teacher_id, count(distinct subject_id) cnt
from teacher
group by teacher_id;