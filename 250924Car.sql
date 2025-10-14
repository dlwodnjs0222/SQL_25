use board;

create table car(
		id bigint auto_increment primary key,
        car_id varchar(100) not null,
        model varchar(100),
        engin varchar(200),
        color varchar(50) not null,
        maker varchar(50),
        length int not null,
        height int not null
);
        
drop table car;
        
select * from car;

insert into car (car_id, model, engin, color, maker, length, height) values ('111가-1111', 'SUV', '직렬 6기통 디젤', '회색', '현대', 5, 3);
