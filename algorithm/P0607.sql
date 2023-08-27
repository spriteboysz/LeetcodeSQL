# coding=utf-8
# Author: Deean
# Date: 2023-08-27 00:00
# FileName: P0607.sql
# Description:607. 销售员

create database P0607;
use P0607;

Create table If Not Exists SalesPerson (
    sales_id        int,
    name            varchar(255),
    salary          int,
    commission_rate int,
    hire_date       date
);
Create table If Not Exists Company (
    com_id int,
    name   varchar(255),
    city   varchar(255)
);
Create table If Not Exists Orders (
    order_id   int,
    order_date date,
    com_id     int,
    sales_id   int,
    amount     int
);
Truncate table SalesPerson;
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date)
values (1, 'John', 100000, 6, '2006/4/1');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date)
values (2, 'Amy', 12000, 5, '2010/5/1');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date)
values (3, 'Mark', 65000, 12, '2008/12/25');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date)
values (4, 'Pam', 25000, 25, '2005/1/1');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date)
values (5, 'Alex', 5000, 10, '2007/2/3');
Truncate table Company;
insert into Company (com_id, name, city)
values ('1', 'RED', 'Boston');
insert into Company (com_id, name, city)
values ('2', 'ORANGE', 'New York');
insert into Company (com_id, name, city)
values ('3', 'YELLOW', 'Boston');
insert into Company (com_id, name, city)
values ('4', 'GREEN', 'Austin');
Truncate table Orders;
insert into Orders (order_id, order_date, com_id, sales_id, amount)
values ('1', '2014/1/1', '3', '4', '10000');
insert into Orders (order_id, order_date, com_id, sales_id, amount)
values ('2', '2014/2/1', '4', '5', '5000');
insert into Orders (order_id, order_date, com_id, sales_id, amount)
values ('3', '2014/3/1', '1', '1', '50000');
insert into Orders (order_id, order_date, com_id, sales_id, amount)
values ('4', '2014/4/1', '1', '4', '25000');

select s.name
from salesperson s
where s.sales_id not in (select o.sales_id
                         from orders o
                                  left join company c
                                            on o.com_id = c.com_id
                         where c.name = 'RED');


