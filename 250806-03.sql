create table tiny (
	num int auto_increment primary key,
    content varchar(200)
	);

insert into tiny(content) value ('아니킨'), ('루크'), ('한'), ('보바');

select * from tiny;

delete from tiny where num = 7;

