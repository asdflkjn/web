# HR 계정에서 EMPLOYEES 테이블

​

--1. 이름의 성이 'King' 사원의 사번과 부서명을 출력 ( employees, departments )

​SELECT e.employee_id, d.department_name
FROM employees e INNER JOIN departments d
ON e.department_id = d.department_id
WHERE last_name = 'King';

​

--2. 이름의 성이 'King' 사원의 사번과 부서명 그리고 업무명을 출력 ( employees, departments, jobs )

​SELECT e.employee_id AS "사번", d.department_name AS "부서명", j.job_title AS "업무명"
FROM employees e 
JOIN DEPARTMENTS d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
WHERE last_name = 'King';
​

​

--3. 2007년 상반기에 입사한 사원들의 사번과 이름, 입사일 그리고 부서명을 출력

​SELECT employee_id AS "사번", first_name AS "이름", to_char(hire_date, 'yyyy-mm-dd') AS "입사일", department_name AS "부서명"
FROM employees e
JOIN DEPARTMENTS d
ON e.department_id = d.department_id
WHERE to_char(hire_date, 'YYYY') = '2007';

(*) 아직 부서가 배정받지 못한 사원들도 출력되려면

​SELECT employee_id AS "사번", first_name AS "이름", to_char(hire_date, 'yyyy-mm-dd') AS "입사일", department_name AS "부서명"
FROM employees e
LEFT OUTER JOIN DEPARTMENTS d
ON e.department_id = d.department_id
WHERE to_char(hire_date, 'YYYY') = '2007';
​

​

--4. 'Executive' 부서에서 사원과 해당 사원의 매니저(상사) 이름을 출력

​SELECT e.last_name, e.last_name = (SELECT e.last_name FROM e WHERE )
FROM DEPARTMENTS d
JOIN employees e
ON d.department_id = e.department_id
WHERE department_name = 'Executive';

(*) 매니저(상사)가 없는 사원인 'King'이 출력되려면

SELECT e1.employee_id 사원번호, (e1.first_name||' '||e1.last_name) 사원명, 
    e1.manager_id 상사번호, (e2.first_name||' '||e2.last_name) 매니저명, e1.department_id 부서번호
FROM employees e1, employees e2
WHERE e1.manager_id=e2.employee_id(+) AND e1.department_id=90;

SELECT  emp.first_name as "사원명",
        mgr.first_name as "상사명"
FROM employees emp, employees mgr   -- a: 사원    b:상사
WHERE emp.manager_id = mgr.employee_id(+)
AND emp.department_id = 90; 

 

SQL-문제-1) 아래 스키마를 보고 평점이 3.0 이상인 학생들의 이름을 보여주는 SQL작성하시오
<스키마>
※ 밑줄친 속성은 기본키(Primary Key)이며 ENROLL의 학번은 STUDENT의 학번을 참조하는 외래키(Foreign Key)이고, 
ENROLL의 강좌번호는 CLASS의 강좌번호를 참조하는 외래키이다. 

STUDENT(학번, 학과, 이름) 
CLASS(강좌번호, 시간, 강좌이름) 
ENROLL(학번, 강좌번호, 학점)

SELECT s.이름, e.학점
FROM student s, enroll e
WHERE e.학점 >= 3.0;

--답이래
SELECT s.학번, min(이름)
FROM student s, enroll e
WHERE s.학번 = e.학번
GROUP BY s.학번
HAVING avg(e.학점) >= 3.0;

SQL-문제-2) 다음 중 아래와 같은 테이블에서 Full Outer Join의 쿼리를 작성하시오

<DEPT>
DEPTNO DNAME 
10 RESEARCH 
30 SALES 

<EMP>
DEPTNO ENAME 
30 KING 
40 WARD 

SELECT *
FROM dept d
FULL OUTER JOIN emp e
ON d.deptno = e.deptno;





--<<  도전문제 >> hr 계정에서 employees 테이블에서 

--1. Zlotkey와 동일한 부서에 속한 모든 사원의 이름과 입사일을 표시하는 질의를 작성하십시오.  Zlotkey는 제외하십시오.

​SELECT first_name, hire_date
​from employees
WHERE department_id = (SELECT department_id
					   FROM employees
					   WHERE ename = 'Zlotkey');

​

--2. 급여가 평균 급여보다 많은 모든 사원의 사원 번호와 이름을 표시하는 질의를 작성하고 결과를 급여에 대해 오름차순으로 정렬하십시오.
  
​SELECT employee_id, first_name
​from employees
WHERE salary > (SELECT avg(salary)
				FROM employees)
ORDER BY salary DESC;

​

--3. 이름에 u가 포함된 사원과 같은 부서에서 일하는 모든 사원의 사원 번호와 이름을 표시하는 질의를 작성하십시오.
   
​SELECT employee_id, first_name
​from employees
WHERE department_id = (SELECT department_id
					   FROM employees
					   WHERE first_name LIKE '%u%');
​

--4. 부서 위치 ID가 1700인 모든 사원의 이름, 부서 번호 및 업무 ID를 표시하십시오.

​SELECT first_name, department_id, job_id
​from employees
WHERE department_id IN(
					SELECT department_id
					FROM DEPARTMENTS
					WHERE location_id=1700);



​

--5. King에게 보고하는 모든 사원의 이름과 급여를 표시하십시오.

​SELECT 
​from employees
WHERE 

​

--6. Executive 부서의 모든 사원에 대한 부서 번호, 이름 및 업무 ID를 표시하십시오.

​SELECT 
​from employees
WHERE 

​

--7. 평균 급여보다 많은 급여를 받고 이름에 u가 포함된 사원과 같은 부서에서 근무하는 
--   모든 사원의 사원 번호, 이름 및 급여를 표시하는 질의를 작성하십시오.

SELECT 
​from employees
WHERE 






