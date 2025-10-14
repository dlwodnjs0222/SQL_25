create database Tumbler;

create table Tumbler(
	mid int auto_increment primary key,
	Tum_comp varchar(50) not null,
    Tum_coler varchar(30),
    Tum_Handel boolean, 
    Tum_vol int
	);
    
select * from Tumbler;

insert into Tumbler(Tum_comp, Tum_coler, Tum_Handel, Tum_vol) value
 ('corkcicle', 'black', false, 475);
 
insert into Tumbler(Tum_comp, Tum_coler, Tum_Handel, Tum_vol) value
 ('starbucks', 'white', true, 700);
 
insert into Tumbler(Tum_comp, Tum_coler, Tum_Handel, Tum_vol) value
 ('bluebuttel', 'brown', false, 550);
 
 insert into Tumbler(Tum_comp, Tum_coler, Tum_Handel, Tum_vol) value
 ('stanley', 'blue', true, 887);
 
update Tumbler set Tum_vol = 650 where Tum_comp = 'bluebuttel';
 
delete from Tumbler where Tum_comp = 'bluebuttel';
 
drop table Tumbler;