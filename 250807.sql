select * from emp, dept order by EMPNO;

select count(*) from emp, dept order by EMPNO;

select * from emp;

select * from dept;

select * from emp, dept where emp.DEPTNO = dept.DEPTNO;

select count(*) from emp, dept where emp.DEPTNO = dept.DEPTNO;

select EMPNO, ENAME, DNAME, JOB, LOC from emp, dept where emp.DEPTNO = dept.DEPTNO;

select e.EMPNO, e.ENAME, e.SAL, d.DNAME, d.LOC, d.DEPTNO 
	from emp e, dept d 
    where d.DEPTNO = d.DEPTNO and SAL > 3000
    order by e.EMPNO;
    
select e.EMPNO, e.ENAME, d.DNAME, d.LOC, DEPTNO 
	from emp e natural join dept d 
    order by e.EMPNO;
    
select e.EMPNO, e.ENAME, d.DNAME, d.LOC, DEPTNO 
	from emp e join dept d using (DEPTNO)
    order by e.EMPNO;
    
select e.EMPNO, e.ENAME, d.DNAME, d.LOC, d.DEPTNO 
	from emp e join dept d on (e.DEPTNO = d.DEPTNO)
    order by e.EMPNO;  
    
select e1.EMPNO, e1.ENAME, e1.MGR, e2.EMPNO, e2.ENAME
	from emp e1 left outer join emp e2 on (e1.MGR = e2.EMPNO)
    order by e1.EMPNO;
    
select e1.EMPNO, e1.ENAME, e1.MGR, e2.EMPNO, e2.ENAME
	from emp e1 right outer join emp e2 on (e1.MGR = e2.EMPNO)
    order by e1.EMPNO;    
