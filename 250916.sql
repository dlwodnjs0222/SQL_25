create database todo_db character set utf8mb4 collate utf8mb4_unicode_ci;

use todo_db;

create table todos(
	id int auto_increment primary key,
    title varchar(255) not null,
    completed boolean default false
);

select * from todos;

drop table todos;

