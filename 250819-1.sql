CREATE TABLE dept_seq
    as SELECT * from dept WHERE 1 <> 1;
    
SELECT * FROM dept_seq;

drop TABLE dept_seq;

drop SEQUENCE seq_dept_seq;

CREATE SEQUENCE seq_dept_seq
    INCREMENT BY 3
    START WITH 90
    MAXVALUE 99
    CYCLE;
    
INSERT INTO dept_seq(deptno, dname, loc) VALUES (seq_dept_seq.nextval, 'DB', 'SOEUL');

SELECT seq_dept_seq.currval
    from dual;
    