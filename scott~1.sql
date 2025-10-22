create SEQUENCE test;

SELECT test.currval from dual;

SELECT test.nextval from dual;

SELECT 100 + 1 from dual; //더미테이블

drop SEQUENCE test;