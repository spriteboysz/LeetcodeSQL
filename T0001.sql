show databases;
create database test;
show databases;
use test;
create table students(
    stu_id char(8) primary key,
    stu_name varchar(20) not null,
    stu_sex char(1) not null,
    stu_age int not null,
    stu_desc varchar(100)
);
desc students;
select * from students;
insert into students(stu_id, stu_name, stu_sex, stu_age, stu_desc)
values ('20230102', 'May', 'M', '22', 'See');
select * from students;
select stu_name as name from students where stu_id = '20230101';
desc students;
desc students;