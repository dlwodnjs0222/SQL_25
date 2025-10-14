create table member (
	ID int auto_increment primary key,
    EMAIL varchar(255),
    PASSWORD varchar(100),
    NAME varchar(100),
    REGDATE datetime,
    unique key (EMAIL)
) engine = InnoDB character set = utf8mb4;

select * from member;

desc member;

delete from member where id = 2;

update member set id = 5 where id = 8;

update member set email = 'heavy@tf2.com' where id = 5;

update member set password = '4321', name = 'pyro' where id = 3;

update member set password = '2222', name = 'demoman' where id = 4;

update member set password = '3333', name = 'heavy' where id = 5;

update member set regdate=now() where id = 2;