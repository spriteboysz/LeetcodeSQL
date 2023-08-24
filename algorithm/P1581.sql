# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:28
# FileName: P1581.sql
# Description:1581. 进店却未进行过交易的顾客

create database P1581;
use P1581;

Create table If Not Exists Visits
(
    visit_id    int,
    customer_id int
);
Create table If Not Exists Transactions
(
    transaction_id int,
    visit_id       int,
    amount         int
);
Truncate table Visits;
insert into Visits (visit_id, customer_id)
values ('1', '23');
insert into Visits (visit_id, customer_id)
values ('2', '9');
insert into Visits (visit_id, customer_id)
values ('4', '30');
insert into Visits (visit_id, customer_id)
values ('5', '54');
insert into Visits (visit_id, customer_id)
values ('6', '96');
insert into Visits (visit_id, customer_id)
values ('7', '54');
insert into Visits (visit_id, customer_id)
values ('8', '54');
Truncate table Transactions;
insert into Transactions (transaction_id, visit_id, amount)
values ('2', '5', '310');
insert into Transactions (transaction_id, visit_id, amount)
values ('3', '5', '300');
insert into Transactions (transaction_id, visit_id, amount)
values ('9', '5', '200');
insert into Transactions (transaction_id, visit_id, amount)
values ('12', '1', '910');
insert into Transactions (transaction_id, visit_id, amount)
values ('13', '2', '970');

select v.customer_id, count(v.customer_id) count_no_trans
from visits v
         left join transactions t
                   on v.visit_id = t.visit_id
where t.transaction_id is NULL
group by v.customer_id;