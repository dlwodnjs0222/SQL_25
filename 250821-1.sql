use du0821;

select json_object('id', id, 'pw', pw, 'name', name) as user_info from member;

insert into member (id, pw, name) values ('medic', 1233, '메딕');

update member set name = '테스트', pw = 1234 where id = 'test'; 

delete from member where id = 'null';

select * from member;