# coding=utf-8
# Author: Deean
# Date: 2023-08-27 17:24
# FileName: P1407.sql
# Description:1407. 排名靠前的旅行者

create database P1407;
use P1407;

Create Table If Not Exists Users (
    id   int,
    name varchar(30)
);
Create Table If Not Exists Rides (
    id       int,
    user_id  int,
    distance int
);
Truncate table Users;
insert into Users (id, name)
values ('1', 'Alice');
insert into Users (id, name)
values ('2', 'Bob');
insert into Users (id, name)
values ('3', 'Alex');
insert into Users (id, name)
values ('4', 'Donald');
insert into Users (id, name)
values ('7', 'Lee');
insert into Users (id, name)
values ('13', 'Jonathan');
insert into Users (id, name)
values ('19', 'Elvis');
Truncate table Rides;
insert into Rides (id, user_id, distance)
values ('1', '1', '120');
insert into Rides (id, user_id, distance)
values ('2', '2', '317');
insert into Rides (id, user_id, distance)
values ('3', '3', '222');
insert into Rides (id, user_id, distance)
values ('4', '7', '100');
insert into Rides (id, user_id, distance)
values ('5', '13', '312');
insert into Rides (id, user_id, distance)
values ('6', '19', '50');
insert into Rides (id, user_id, distance)
values ('7', '7', '120');
insert into Rides (id, user_id, distance)
values ('8', '19', '400');
insert into Rides (id, user_id, distance)
values ('9', '7', '230');

select u.name, t.travelled_distance
from users u
         inner join
     (select u.id, ifnull(sum(distance), 0) as travelled_distance
      from users u
               left join rides r on u.id = r.user_id
      group by u.id) as t
     on u.id = t.id
order by t.travelled_distance desc, u.name;




