SELECT * FROM emp;
SELECT * FROM dept;

SELECT * FROM emp, dept;

SELECT * FROM emp, dept WHERE emp.deptno = dept.deptno;

SELECT COUNT(*) FROM emp, dept WHERE emp.deptno = dept.deptno;

SELECT e.empno, e.ename, d.deptno, d.dname, loc FROM emp e, dept d WHERE e.deptno = d.deptno;

SELECT e.empno, e.ename, e.sal, e.job, d.deptno, d.dname, loc 
    FROM emp e, dept d 
    WHERE e.deptno = d.deptno
    order BY d.dname, e.job;
    
SELECT e.empno, e.ename, e.sal, e.job, deptno, d.dname, loc 
    FROM emp e NATURAL JOIN dept d 
    order BY d.dname, e.job;
    
SELECT e.empno, e.ename, e.sal, e.job, deptno, d.dname, loc 
    FROM emp e JOIN dept d USING(deptno)
    order BY d.dname, e.job;
    
SELECT e.empno, e.ename, e.sal, e.job, e.deptno, d.dname, d.loc 
    FROM emp e JOIN dept d on (e.deptno = d.deptno)
    order BY d.dname, e.job;

SELECT e.empno, e.ename, e.sal, e.job, e.deptno, d.dname, d.loc 
    FROM emp e left OUTER JOIN dept d on (e.deptno = d.deptno)
    order BY d.dname, e.job;  
    
SELECT e.empno, e.ename, e.sal, e.job, e.deptno, d.dname, d.loc 
    FROM emp e right OUTER JOIN dept d on (e.deptno = d.deptno)
    order BY d.dname, e.job; 
    
SELECT e.empno, e.ename, e.sal, e.job, e.deptno, d.dname, d.loc 
    FROM emp e full OUTER JOIN dept d on (e.deptno = d.deptno)
    order BY d.dname, e.job; 
    
SELECT sal FROM emp WHERE ename = 'JONES';

SELECT * FROM emp WHERE sal > 2975;

SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename = 'JONES');

SELECT * FROM emp WHERE sal > (SELECT avg(sal) FROM emp);

SELECT * FROM (SELECT * FROM emp WHERE deptno = 10);

SELECT * FROM (SELECT * FROM emp WHERE deptno = 10) e10, (SELECT * FROM dept) d
    WHERE e10.deptno = d.deptno;
    
CREATE TABLE dept_temp AS SELECT * FROM dept;

SELECT * FROM dept_temp;