SELECT employees.emp_no, last_name, first_name, sex, salary 
FROM employees
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name 
FROM employees
INNER JOIN dept_manager 
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments 
ON dept_manager.dept_no = departments.dept_no;

SELECT departments.dept_no, employees.emp_no, last_name, first_name, dept_name 
FROM employees
INNER JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no;

SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, last_name, first_name 
FROM employees
INNER JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

SELECT employees.emp_no, last_name, first_name, dept_name 
FROM employees
INNER JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS name_frequency 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
