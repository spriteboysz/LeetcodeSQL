# coding=utf-8
# Author: Deean
# Date: 2023-08-27 17:56
# FileName: P1527.sql
# Description:1527. 患某种疾病的患者

create database P1527;
use P1527;

Create table If Not Exists Patients (
    patient_id   int,
    patient_name varchar(30),
    conditions   varchar(100)
);
Truncate table Patients;
insert into Patients (patient_id, patient_name, conditions)
values ('1', 'Daniel', 'YFEV COUGH');
insert into Patients (patient_id, patient_name, conditions)
values ('2', 'Alice', '');
insert into Patients (patient_id, patient_name, conditions)
values ('3', 'Bob', 'DIAB100 MYOP');
insert into Patients (patient_id, patient_name, conditions)
values ('4', 'George', 'ACNE DIAB100');
insert into Patients (patient_id, patient_name, conditions)
values ('5', 'Alain', 'DIAB201');

select *
from patients
where conditions like 'DIAB1%'
   or conditions like '% DIAB1%';