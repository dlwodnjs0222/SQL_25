create database du0804;

drop database du0804;

use du0804;

create table regmember(
	mid int auto_increment primary key,
	rname varchar(20) not null,
    addr varchar(20) not null,
	email varchar(50) not null,
	phone varchar(50) unique
    );
    
drop table regmember;   
    
desc regmember;

insert into regmember(rname, addr, email, phone) values
	('홍길동', '서울시', 'hong1@naver.com', '010-1234-5678'),
    ('홍길철', '경기도', 'hong2@gamil.com', '010-5678-9876'),
    ('홍길순', '인천시', 'hong3@daum.net', '010-3698-1478');
    
select * from regmember;    

delete from regmember where rname = 'null';

select * from regmember where mid = 3;

delete from regmember where mid = 8;



update regmember set mid = 7 where mid = 11;


