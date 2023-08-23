# coding=utf-8
# Author: Deean
# Date: 2023-08-23 22:24
# FileName: P1683.sql
# Description:1683. 无效的推文

create database P1683;
use P1683;

Create table If Not Exists Tweets
(
    tweet_id int,
    content  varchar(50)
);
Truncate table Tweets;
insert into Tweets (tweet_id, content)
values ('1', 'Vote for Biden');
insert into Tweets (tweet_id, content)
values ('2', 'Let us make America great again!');

select *
from tweets;

select tweet_id
from tweets
where char_length(content) > 15;

