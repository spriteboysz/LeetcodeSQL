create database bookmall;
use bookmall;
create table users (
    user_id       int auto_increment primary key,
    user_name     varchar(20) not null,
    user_password varchar(20) not null,
    user_realname varchar(20) not null,
    user_gender   char(1)     not null,
    user_tel      char(11)    not null,
    user_desc     varchar(100)
);

create table books (
    book_num    char(8) primary key,
    book_name   varchar(20)  not null,
    book_author varchar(20)  not null,
    book_cover  varchar(100) not null,
    book_price  float        not null,
    book_desc   varchar(100) not null,
    book_stock  int          not null
);