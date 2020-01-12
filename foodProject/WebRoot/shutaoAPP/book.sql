create database bookshop;
use bookshop;
create table hotBook(
bookid varchar(20) not null primary key,
img varchar(100) not null,
bookname varchar(20) not null,
booktype varchar(20) not null,
note varchar(50) not null,
author varchar(20) not null,
press varchar(50) not null,
oriprice int(11) not null,
price int(11) not null
);
insert into hotbook(bookid,img,bookname,booktype,note,author,press,oriprice,price)
-- values('w001','image/p5.jpg','史记','文史类','轻微勾画','司马迁','中华书局','40','19');
values('w002','image/p6.jpg','人间词话','文史类','几乎全新','王国维','上海古籍出版社','32','16')


