use DoItSQL;

use sakila;

drop table doit_increment;

create table doit_increment(
	col_1 int auto_increment primary key,
    col_2 varchar(50),
	col_3 int
);

desc doit_increment;

select last_insert_id();

create table doit_parent(
	col_1 int primary key
);

create table doit_child(
	col_1 int
);

alter table doit_child add foreign key (col_1) references doit_parent(col_1);

insert into doit_parent(col_1) values (1);  

insert into doit_child(col_1) values (1);

delete from doit_child where col_1 = 1;

delete from doit_parent where col_1 = 1;

show create table doit_child;

drop table doit_parent;

drop table doit_child;

CREATE TABLE `doit_parent` (
   `col_1` int DEFAULT NULL,
   KEY `col_1` (`col_1`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 
 CREATE TABLE `doit_child` (
   `col_1` int DEFAULT NULL,
   KEY `col_1` (`col_1`),
   CONSTRAINT `doit_child_ibfk_1` FOREIGN KEY (`col_1`) REFERENCES `doit_parent` (`col_1`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 
 select * from doit_parent;
 
 select * from doit_child;
 
 