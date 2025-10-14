--서브쿼리(인라인 뷰)

SELECT * FROM
(SELECT empno, ename, job, deptno 
    FROM emp 
    WHERE deptno =20);

CREATE view vw_emp20
    as (SELECT empno, ename, job, deptno
    FROM emp
    WHERE deptno = 20);
    
SELECT * FROM vw_emp20;

desc vw_emp20;

DROP VIEW vw_emp20;

SELECT ROWNUM FROM emp;

SELECT ROWNUM, e.* FROM emp e;

SELECT ROWNUM, e.* 
    FROM emp e
    ORDER by sal;

SELECT ROWNUM, e.*
    FROM (SELECT * FROM emp e ORDER BY sal) e;
    
SELECT ROWNUM, e.*
    FROM (SELECT * FROM emp e ORDER BY sal) e;
    
WITH e as (SELECT * FROM emp e ORDER BY sal)
SELECT ROWNUM, e.*
    from e;
    
SELECT ROWNUM, e.*
    FROM (SELECT * FROM emp e ORDER BY sal DESC) e
    WHERE ROWNUM <= 3;
    
WITH e as (SELECT * FROM emp e ORDER BY sal DESC)
SELECT ROWNUM, e.*
    from e
    WHERE ROWNUM <= 3;