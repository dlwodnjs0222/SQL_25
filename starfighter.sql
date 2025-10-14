use board;

create table starfighter (
	id bigint auto_increment primary key,
    fighter varchar(255) not null,
    maker varchar(255),
    speed int,
    length double not null,
	height double not null
);
    
select * from starfighter;

desc starfighter;

select * from starfighter order by fighter desc;

drop table starfighter;

insert into starfighter (fighter, maker, speed, length, height) values 
('x-wing', 'Incom', 100, 13.4, 2.4);

delete from starfighter where id = 3;