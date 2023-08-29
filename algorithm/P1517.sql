# coding=utf-8
# Author: Deean
# Date: 2023-08-27 17:47
# FileName: P1517.sql
# Description:1517. 查找拥有有效邮箱的用户

create database P1517;
use P1517;

Create table If Not Exists Users (
    user_id int,
    name    varchar(30),
    mail    varchar(50)
);
Truncate table Users;
insert into Users (user_id, name, mail)
values ('1', 'Winston', 'winston@leetcode.com');
insert into Users (user_id, name, mail)
values ('2', 'Jonathan', 'jonathanisgreat');
insert into Users (user_id, name, mail)
values ('3', 'Annabelle', 'bella-@leetcode.com');
insert into Users (user_id, name, mail)
values ('4', 'Sally', 'sally.come@leetcode.com');
insert into Users (user_id, name, mail)
values ('5', 'Marwan', 'quarz#2020@leetcode.com');
insert into Users (user_id, name, mail)
values ('6', 'David', 'david69@gmail.com');
insert into Users (user_id, name, mail)
values ('7', 'Shapiro', '.shapo@leetcode.com');

select *
from users
where mail regexp '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$';