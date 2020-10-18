-- list the following details of each employee:
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- list first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,
		last_name,
		hire_date
FROM employees
WHERE hire_date
LIKE '%/1986';

-- list the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_manager m
ON e.emp_no = m.emp_no
JOIN departments d
ON d.dept_no = m.dept_no;

-- list the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp p
ON e.emp_no = p.emp_no
JOIN departments d
ON d.dept_no = p.dept_no;

-- list first name, last name, and sex for employees whose first name is
-- "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name
LIKE 'B%';

-- list all employees in the Sales department, including their:
-- employee number, last name, first name, and department name.

SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp p
ON e.emp_no = p.emp_no
JOIN departments d
ON d.dept_no = p.dept_no
WHERE dept_name = 'Sales';

-- list all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.
SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp p
ON e.emp_no = p.emp_no
JOIN departments d
ON d.dept_no = p.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- in descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY "count" DESC;

-- epilogue: pulling info on employee ID number 499942
SELECT *
FROM employees
WHERE emp_no = 499942;
