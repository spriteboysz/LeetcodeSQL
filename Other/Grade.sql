show databases;
create database grade;
use grade;
SET character_set_client = utf8mb4;
show tables;
create table students (
    stu_num      char(8)     not null primary key,
    stu_name     varchar(20) not null,
    stu_password varchar(20) not null
);

create table grades (
    gid     int auto_increment primary key,
    stu_num char(8) not null,
    cid     char(8) not null,
    score   int     not null
);

create table courses (
    cid   char(8)     not null primary key,
    cname varchar(20) not null
);

show tables;
select *
from students
where stu_password = '123456';

select s.stu_num sNum, stu_name sName, c.cid, c.cname cName, score
from students s
         join grade.grades g
         join grade.courses c
              on s.stu_num = g.stu_num and c.cid = g.cid
where s.stu_num = '20230001' and c.cid = '20231001';