select * from emp;
select * from dept;

select empno, ename, sal, deptno from emp where deptno = 10;

select empno, ename, sal, deptno from emp where deptno = 10
union
select empno, ename, sal, deptno from emp where deptno = 20;

select empno, ename, sal, deptno from emp
union all
select empno, ename, sal, deptno from emp;

select empno, ename, sal, deptno from emp where deptno = 10
union all
select empno, ename, sal, deptno from emp where deptno = 10;

select empno, sal, deptno, ename from emp where deptno = 10
union all
select empno, ename, sal, deptno from emp where deptno = 20;

select sum(sal) from emp;

select avg(sal) from emp;

select count(*) from emp;

select count(empno) from emp;

select sum(distinct sal) from emp;

select count(distinct sal) from emp;

select comm from emp;

select distinct comm from emp;

select sum(comm) from emp where comm is not null;

select count(*), sum(sal), avg(sal) from emp;

select count(comm) from emp;

select count(comm) from emp where comm is not null;

select max(sal), min(sal), max(hiredate), min(hiredate) from emp;

select avg(sal) from emp where DEPTNO = 10;

select avg(sal) from emp where DEPTNO = 20;

select avg(sal) from emp where DEPTNO = 30;

select avg(sal) from emp where DEPTNO = 10
union all
select avg(sal) from emp where DEPTNO = 20
union all
select avg(sal) from emp where DEPTNO = 30;

select '10' as deptno, avg(sal) from emp where DEPTNO = 10
union all
select '20' as deptno, avg(sal) from emp where DEPTNO = 20
union all
select '30' as deptno, avg(sal) from emp where DEPTNO = 30;

select deptno, avg(sal) from emp group by DEPTNO;

 select deptno, avg(sal), count(*) from emp group by DEPTNO order by DEPTNO;

select deptno, job, avg(sal) from emp group by DEPTNO, JOB order by DEPTNO;

select deptno, job, avg(sal)  as avgsal
	from emp 
    group by DEPTNO, JOB 
    having avg(sal) >= 2000 
    order by DEPTNO;

select deptno, job, avg(sal)  as avgsal
	from emp 
    where sal <= 3000
    group by DEPTNO, JOB 
    having avg(sal) >= 2000 
    order by DEPTNO;
    
