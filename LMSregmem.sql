create table LMSMember(
	mnumber int primary key,
	mname varchar(20),
    mphone varchar(50),
    regdate varchar(20)
    );
    
select * from LMSMember;

insert into LMSMember(mnumber, mname, mphone, regdate) value
(250805, 'Dell', '010-1234-5678', '2025-08-01');

drop table LMSMember;