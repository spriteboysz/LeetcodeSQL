# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:49
# FileName: P1050.sql
# Description:1050. 合作过至少三次的演员和导演

create database P1050;
use P1050;

Create table If Not Exists ActorDirector (actor_id int, director_id int, timestamp int);
Truncate table ActorDirector;
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '0');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '1');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '2');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '3');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '4');
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '5');
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '6');

select * from actordirector;

select actor_id, director_id
from actordirector
group by actor_id, director_id
having count(actor_id) >= 3;