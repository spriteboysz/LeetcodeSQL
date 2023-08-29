# coding=utf-8
# Author: Deean
# Date: 2023-08-27 20:58
# FileName: P1211.sql
# Description:1211. 查询结果的质量和占比

create database P1211;
use P1211;

Create table If Not Exists Queries (
    query_name varchar(30),
    result     varchar(50),
    position   int,
    rating     int
);
Truncate table Queries;
insert into Queries (query_name, result, position, rating)
values ('Dog', 'Golden Retriever', '1', '5');
insert into Queries (query_name, result, position, rating)
values ('Dog', 'German Shepherd', '2', '5');
insert into Queries (query_name, result, position, rating)
values ('Dog', 'Mule', '200', '1');
insert into Queries (query_name, result, position, rating)
values ('Cat', 'Shirazi', '5', '2');
insert into Queries (query_name, result, position, rating)
values ('Cat', 'Siamese', '3', '3');
insert into Queries (query_name, result, position, rating)
values ('Cat', 'Sphynx', '7', '4');

select *
from queries;

select query_name, round(avg(rating / position), 2) quality, round(avg(rating < 3) * 100, 2) poor_query_percentage
from queries
group by query_name;