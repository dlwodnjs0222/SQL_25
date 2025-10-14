create database du0911;

create table member (
	ID int auto_increment primary key,
    EMAIL varchar(255),
	NAME varchar(100),
    PASSWORD varchar(100),
    REGDATE datetime,
    unique key (EMAIL)
) engine = InnoDB character set = utf8mb4;

desc member;

select * from member;

select * from member where email = 'scout@tf2.com';

insert into member values (1, 'scout@tf2.com', 'scout', '1111', now());

insert into member(email, name, password, regdate) values ('solder@tf2.com', 'solder', '1111', now());

update member set name = 'scout' where id = 1;

update member set password = '1234' where id = 1;

delete from member where id = 1;

drop table member;
