create table board (
	id int auto_increment primary key,
	title varchar(255),
	content text,
    created_at timestamp default current_timestamp
);

insert into board (title, content) values ('현대', '아반떼');

select * from board;

select * from board order by id desc;

update board set id = 2 where id = 4;

update board set title = '기업' where id = 1;

update board set content='삼성 현대 LG SK 롯데' where id = 1;

delete from board where id = 2;

commit;