# coding=utf-8
# Author: Deean
# Date: 2023-08-27 18:03
# FileName: P1729.sql
# Description:1729. 求关注者的数量

create database P1729;
use P1729;

Create table If Not Exists Followers(user_id int, follower_id int);
Truncate table Followers;
insert into Followers (user_id, follower_id) values ('0', '1');
insert into Followers (user_id, follower_id) values ('1', '0');
insert into Followers (user_id, follower_id) values ('2', '0');
insert into Followers (user_id, follower_id) values ('2', '1');

select user_id, count(user_id) as followers_count
from followers
group by user_id
order by user_id;