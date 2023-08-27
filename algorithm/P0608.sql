# coding=utf-8
# Author: Deean
# Date: 2023-08-27 14:37
# FileName: P0608.sql
# Description:608. 树节点

create database P0608;
use P0608;

Create table If Not Exists Tree (
    id   int,
    p_id int
);
Truncate table Tree;
insert into Tree (id, p_id)
values ('1', NULL);
insert into Tree (id, p_id)
values ('2', '1');
insert into Tree (id, p_id)
values ('3', '1');
insert into Tree (id, p_id)
values ('4', '2');
insert into Tree (id, p_id)
values ('5', '2');

select *
from tree;


select distinct t1.id as id,
                (case
                     when t1.p_id is NULL then 'Root'
                     when t2.p_id is NULL then 'Leaf'
                     else 'Inner'
                    end
                    ) as type
from tree t1
         left join tree t2
                   on t1.id = t2.p_id;