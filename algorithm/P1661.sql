# coding=utf-8
# Author: Deean
# Date: 2023-08-27 20:36
# FileName: P1661.sql
# Description:1661. 每台机器的进程平均运行时间

create database P1661;
use P1661;

Create table If Not Exists Activity (
    machine_id    int,
    process_id    int,
    activity_type ENUM ('start', 'end'),
    timestamp     float
);
Truncate table Activity;
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('0', '0', 'start', '0.712');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('0', '0', 'end', '1.52');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('0', '1', 'start', '3.14');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('0', '1', 'end', '4.12');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('1', '0', 'start', '0.55');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('1', '0', 'end', '1.55');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('1', '1', 'start', '0.43');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('1', '1', 'end', '1.42');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('2', '0', 'start', '4.1');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('2', '0', 'end', '4.512');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('2', '1', 'start', '2.5');
insert into Activity (machine_id, process_id, activity_type, timestamp)
values ('2', '1', 'end', '5');

select *
from activity;

select machine_id, round(avg(times), 3) as processing_time
from (select machine_id,
             sum(
                     IF(activity_type = 'start', -timestamp, timestamp)
                 ) times
      from activity
      group by machine_id, process_id) as t
group by machine_id;