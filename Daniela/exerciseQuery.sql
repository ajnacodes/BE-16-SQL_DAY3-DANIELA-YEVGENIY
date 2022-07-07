-- exercise 1 

-- employees table
SELECT COUNT(*)
FROM employees.employees;

-- departments table
SELECT COUNT(*)
FROM employees.departments;

-- rest of departments 

SELECT COUNT(*)
FROM employees.dept_manager;

SELECT COUNT(*)
FROM employees.dept_emp;

SELECT COUNT(*)
FROM employees.salaries;

SELECT COUNT(*)
FROM employees.titles;


-- exercise 2

SELECT COUNT(*) FROM employees WHERE first_name='Mark'

-- exercise 3 
SELECT COUNT(*) FROM employees WHERE first_name='Eric' and last_name like 'a%'
-- EXERCISE 4 

SELECT * FROM employees WHERE hire_date>
'1985-01-01';

SELECT COUNT(*) FROM employees WHERE hire_date>
'1985-01-01';


-- exercise 5 
SELECT * FROM employees WHERE hire_date>
'1990-01-01' AND hire_date < '1997-01-01';

SELECT COUNT(*) FROM employees WHERE hire_date>
'1990-01-01' AND hire_date < '1997-01-01';

-- exercise 6

SELECT * FROM employees WHERE emp_no IN ( SELECT salaries.emp_no FROM salaries WHERE  salary > 70000);
SELECT  COUNT(*) FROM employees WHERE emp_no IN ( SELECT salaries.emp_no FROM salaries WHERE  salary > 70000);

-- exercise 7
SELECT * FROM employees WHERE hire_date >
'1992-01-01'
AND 
 emp_no IN ( SELECT emp_no FROM dept_emp WHERE dept_emp.dept_no ="d008");
 
 SELECT COUNT(*) FROM employees WHERE hire_date >
'1992-01-01'
AND 
 emp_no IN ( SELECT emp_no FROM dept_emp WHERE dept_emp.dept_no ="d008");

--  exercise 8 




SELECT * FROM employees WHERE hire_date >
'1985-01-01'
AND
emp_no IN ( SELECT salaries.emp_no FROM salaries WHERE  salary > 70000)
AND 
 emp_no IN ( SELECT emp_no FROM dept_emp WHERE dept_emp.dept_no ="d002");
 
 SELECT COUNT(*) FROM employees WHERE hire_date >
'1985-01-01'
AND
emp_no IN ( SELECT salaries.emp_no FROM salaries WHERE  salary > 70000)
AND 
 emp_no IN ( SELECT emp_no FROM dept_emp WHERE dept_emp.dept_no ="d002");


-- exercise 9 

