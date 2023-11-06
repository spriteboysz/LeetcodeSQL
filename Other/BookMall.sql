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
    book_id     char(6) primary key,
    book_name   varchar(20)  not null,
    book_author varchar(20)  not null,
    book_cover  varchar(100) not null,
    book_price  double       not null,
    book_desc   varchar(100),
    book_stock  int          not null,
    book_type   int          not null
);
show tables;


select user_id       userId,
       user_name     userName,
       user_password userPassword,
       user_realname userRealName,
       user_gender   userGender,
       user_tel      userTel,
       user_desc     userDesc
from users
where user_name = 'admin';

use bookmall;

select book_id     bookId,
       book_name   bookName,
       book_author bookAuthor,
       book_cover  bookCover,
       book_price  bookPrice,
       book_desc   bookDesc,
       book_stock  bookStock,
       book_type   bookType
from books;

select book_id     bookId,
       book_name   bookName,
       book_author bookAuthor,
       book_cover  bookCover,
       book_price  bookPrice,
       book_desc   bookDesc,
       book_stock  bookStock,
       book_type   bookType
from books
where book_id = '202301';
update books
set book_name=?,
    book_author=?,
    book_cover=?,
    book_price=?,
    book_desc=?,
    book_stock=?,
    book_type=?
where book_id=?