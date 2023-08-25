# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:22
# FileName: P0182.sql
# Description:182. 查找重复的电子邮箱

create database P0182;
use P0182;

Create table If Not Exists Person (id int, email varchar(255));
Truncate table Person;
insert into Person (id, email) values ('1', 'a@b.com');
insert into Person (id, email) values ('2', 'c@d.com');
insert into Person (id, email) values ('3', 'a@b.com');

select * from person;

select Email
from person
group by email
having Count(email) > 1;