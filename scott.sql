SELECT * FROM emp;

SELECT * FROM emp WHERE ENAME LIKE '%S';

SELECT empno, ename, job, sal, deptno FROM emp WHERE job = 'SALESMAN' and deptno = 30;

SELECT empno, ename, job, sal, deptno FROM emp WHERE sal > 2000 and deptno in (20, 30);

SELECT empno, ename, job, sal, nvl(to_char(comm), 'N/A'), deptno FROM emp;

SELECT deptno, round(avg(sal), 3), max(sal), min(sal), count(*) from emp GROUP BY deptno;

SELECT job, count(*) from emp GROUP BY job HAVING count(*) >= 3;

SELECT to_char(HIREDATE, 'YYYY'), deptno, count(*) from emp GROUP BY HIREDATE, deptno;

SELECT  nvl2(comm, 'y', 'n'), count(*) FROM emp 
GROUP BY nvl2(comm, 'y', 'n');