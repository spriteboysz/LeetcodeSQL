# coding=utf-8
# Author: Deean
# Date: 2023-08-24 23:54
# FileName: P1251.sql
# Description:1251. 平均售价

create database P1251;
use P1251;

Create table If Not Exists Prices
(
    product_id int,
    start_date date,
    end_date   date,
    price      int
);
Create table If Not Exists UnitsSold
(
    product_id    int,
    purchase_date date,
    units         int
);
Truncate table Prices;
insert into Prices (product_id, start_date, end_date, price)
values ('1', '2019-02-17', '2019-02-28', '5');
insert into Prices (product_id, start_date, end_date, price)
values ('1', '2019-03-01', '2019-03-22', '20');
insert into Prices (product_id, start_date, end_date, price)
values ('2', '2019-02-01', '2019-02-20', '15');
insert into Prices (product_id, start_date, end_date, price)
values ('2', '2019-02-21', '2019-03-31', '30');
Truncate table UnitsSold;
insert into UnitsSold (product_id, purchase_date, units)
values ('1', '2019-02-25', '100');
insert into UnitsSold (product_id, purchase_date, units)
values ('1', '2019-03-01', '15');
insert into UnitsSold (product_id, purchase_date, units)
values ('2', '2019-02-10', '200');
insert into UnitsSold (product_id, purchase_date, units)
values ('2', '2019-03-22', '30');


select product_id, Round(SUM(sales) / SUM(units), 2) AS average_price
from (select p.product_id, p.price * u.units sales, u.units
      from prices p
               inner join unitssold u
                          on p.product_id = u.product_id
      where u.purchase_date between p.start_date and p.end_date) t
group by product_id;