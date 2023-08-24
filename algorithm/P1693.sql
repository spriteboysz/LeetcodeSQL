# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:08
# FileName: P1693.sql
# Description:1693. 每天的领导和合伙人

create database P1693;
use P1693;

Create table If Not Exists DailySales
(
    date_id    date,
    make_name  varchar(20),
    lead_id    int,
    partner_id int
);
Truncate table DailySales;
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-8', 'toyota', '0', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-8', 'toyota', '1', '0');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-8', 'toyota', '1', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-7', 'toyota', '0', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-7', 'toyota', '0', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-8', 'honda', '1', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-8', 'honda', '2', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-7', 'honda', '0', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-7', 'honda', '1', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id)
values ('2020-12-7', 'honda', '2', '1');

select *
from dailysales;

select date_id, make_name, count(distinct lead_id) unique_leads, count(distinct partner_id) unique_partners
from dailysales
group by date_id, make_name;