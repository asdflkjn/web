# SCOTT 계정에서 EMP 테이블 


--1. EMP 테이블에서 사원번호, 이름, 업무, 부서번호와 DEPT 테이블에서 부서명, 근무지를 출력
SELECT e.empno AS "사원번호", e.ename AS "이름", e.job AS "업무", e.deptno AS "부서번호"
		, d.dname AS "부서명", d.loc AS "근무지"
FROM emp e, dept d
WHERE e.deptno = d.deptno;
AND deptno = 10;
​
SELECT e.empno, e.ename, e.job, e.deptno, d.dname, d.loc
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno;
AND deptno = 10;

SELECT e.empno AS "사원번호", e.ename AS "이름", e.job AS "업무", e.deptno AS "부서번호"
		, d.dname AS "부서명", d.loc AS "근무지"
FROM emp e, dept d
WHERE e.deptno = d.deptno(+);
​
SELECT e.empno, e.ename, e.job, e.deptno, d.dname, d.loc
FROM emp e LEFT OUTER JOIN dept d
ON e.deptno = d.deptno;

​SELECT e.empno AS "사원번호", e.ename AS "이름", e.job AS "업무", e.deptno AS "부서번호"
		, d.dname AS "부서명", d.loc AS "근무지"
FROM emp e, dept d
WHERE e.deptno(+) = d.deptno;

SELECT e.empno, e.ename, e.job, e.deptno, d.dname, d.loc
FROM emp e RIGHT OUTER JOIN dept d
ON e.deptno = d.deptno;

SELECT e.empno, e.ename, e.job, e.deptno, d.dname, d.loc
FROM emp e FULL OUTER JOIN dept d
ON e.deptno = d.deptno;

--2. SALESMAN 사원만 사원번호, 이름, 급여, 부서명, 근무지를 출력

SELECT job, empno AS "사원번호", ename AS "이름", sal AS "급여", d.dname AS "부서명", d.loc AS "근무지"
FROM emp, dept d
WHERE job = 'SALESMAN';
​
​SELECT e.empno, e.ename, e.sal, d.dname, d.loc
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno
WHERE e.job = 'SALESMAN';

​SELECT e.empno, e.ename, e.sal, d.dname, d.loc
FROM emp e LEFT OUTER JOIN dept d
ON e.deptno = d.deptno
WHERE e.job = 'SALESMAN';


--3. 보너스(comm)를 받는 사원에 대해 이름, 부서명, 위치를 출력
SELECT e.ename, d.dname, d.loc
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno
WHERE comm IS NOT NULL
AND   comm != 0;​

​

--4. 부서별 부서명과 급여 합계를 출력
​
SELECT d.DNAME e, sum(sal)
FROM emp e JOIN dept d
ON e.deptno = d.deptno
GROUP BY d.dname;
​

​

-- 5. 업무가 ‘MANAGER’인 사원의 정보를 이름, 업무, 부서명, 근무지를 출력 
​
SELECT ename, job, dname, loc
FROM emp JOIN dept
ON emp.deptno = dept.deptno
WHERE job = 'MANAGER';
​
--Full Outer Join의 쿼리
SELECT *
FROM dept d
FULL OUTER JOIN emp e
ON d.deptno = e.deptno;
​

