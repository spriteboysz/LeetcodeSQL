# coding=utf-8
# Author: Deean
# Date: 2023-08-27 15:49
# FileName: P1280.sql
# Description:1280. 学生们参加各科测试的次数

create database P1280;
use P1280;

Create table If Not Exists Students (
    student_id   int,
    student_name varchar(20)
);
Create table If Not Exists Subjects (
    subject_name varchar(20)
);
Create table If Not Exists Examinations (
    student_id   int,
    subject_name varchar(20)
);
Truncate table Students;
insert into Students (student_id, student_name)
values ('1', 'Alice');
insert into Students (student_id, student_name)
values ('2', 'Bob');
insert into Students (student_id, student_name)
values ('13', 'John');
insert into Students (student_id, student_name)
values ('6', 'Alex');
Truncate table Subjects;
insert into Subjects (subject_name)
values ('Math');
insert into Subjects (subject_name)
values ('Physics');
insert into Subjects (subject_name)
values ('Programming');
Truncate table Examinations;
insert into Examinations (student_id, subject_name)
values ('1', 'Math');
insert into Examinations (student_id, subject_name)
values ('1', 'Physics');
insert into Examinations (student_id, subject_name)
values ('1', 'Programming');
insert into Examinations (student_id, subject_name)
values ('2', 'Programming');
insert into Examinations (student_id, subject_name)
values ('1', 'Physics');
insert into Examinations (student_id, subject_name)
values ('1', 'Math');
insert into Examinations (student_id, subject_name)
values ('13', 'Math');
insert into Examinations (student_id, subject_name)
values ('13', 'Programming');
insert into Examinations (student_id, subject_name)
values ('13', 'Physics');
insert into Examinations (student_id, subject_name)
values ('2', 'Math');
insert into Examinations (student_id, subject_name)
values ('1', 'Math');

select t1.student_id,
       t1.student_name,
       t1.subject_name,
       (IF(isnull(t2.cnt), 0, t2.cnt)) as attended_exams
from (select student_id, student_name, subject_name
      from students
               inner join subjects) as t1
         left join
     (select student_id, subject_name, count(subject_name) as cnt
      from examinations
      group by student_id, subject_name) as t2
     on t1.student_id = t2.student_id and t1.subject_name = t2.subject_name
order by student_id, subject_name;