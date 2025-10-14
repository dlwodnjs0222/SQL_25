select count(*) from emp;

select * from emp;

select * from dept;

select distinct(deptno) from emp;

select deptno from emp;

select distinct deptno, JOB from emp;

select deptno, JOB from emp;

select sal*12  + comm from emp;

select ename, sal*12 as "ammsal" from emp order by SAL desc;

select ifnull(comm, 0) from emp;

desc emp;

select comm, ifnull(comm, 0) from emp;

select EMPNO, ENAME, sal*12 + ifnull(comm, 0) as annual_salary from emp;

select * from emp order by sal;

select * from emp order by sal asc;

select * from emp order by sal desc;

select * from emp order by EMPNO;

select * from emp order by ENAME;

select * from emp;

select * from emp order by DEPTNO, JOB;

select * from emp order by DEPTNO, JOB desc;

select * from emp order by DEPTNO desc, JOB;

select * from emp order by EMPNO desc, JOB;

select * from emp order by JOB;

select * from emp order by JOB desc;

select * from emp where DEPTNO = 30;

select * from emp where DEPTNO = 30 order by SAL desc;

select * from emp where EMPNO = 7782;

select * from emp where ENAME = 'CLARK';

select * from emp where EMPNO = 7499 and DEPTNO = 30;

select * from emp where DEPTNO = 20 or JOB = 'SALESMAN';

select * from emp where DEPTNO = 10 or DEPTNO = 20;

select * from emp where DEPTNO in(10, 20);

select * from emp where JOB in('MANAGER', 'SALESMAN');

select * from emp where JOB = 'MANAGER' or JOB = 'SALESMAN';

select * from emp where JOB not in('MANAGER', 'SALESMAN');

select * from emp where JOB != 'MANAGER' and JOB != 'SALESMAN';

select * from emp where SAL >= 2000;

select * from emp where SAL <= 3000;

select * from emp where SAL >= 2000 and SAL <= 3000;

select * from emp where sal between 2000 and 3000;

select * from emp where sal not between 2000 and 3000;

select * from emp where ENAME like 'S%';

select * from emp where ENAME like '_M%';

select * from emp where ENAME like '%AM%';

select * from emp where COMM is not null;