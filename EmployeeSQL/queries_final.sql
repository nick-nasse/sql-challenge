-- Data Analysis #1
SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name, 
		e.sex, 
		s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- Data Analysis #2 
SELECT 	first_name, 
		last_name, 
		hire_date 
FROM employees
WHERE RIGHT(hire_date, 4) = '1986';


-- Data Analysis #3
SELECT	m.dept_no,
		d.dept_name,
		e.emp_no,
		e.last_name, 
		e.first_name
FROM employees e
JOIN dept_manager m ON e.emp_no = m.emp_no
JOIN departments d ON d.dept_no = m.dept_no;


-- Data Analysis #4
SELECT	e.emp_no,
		e.last_name, 
		e.first_name,
		d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no;

-- Data Analysis #5
SELECT	first_name, 
		last_name, 
		sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Data Analysis #6
SELECT	e.emp_no,
		e.last_name, 
		e.first_name,
		d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
where d.dept_name = 'Sales';

-- Data Analysis #7
SELECT	e.emp_no,
		e.last_name, 
		e.first_name,
		d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
where d.dept_name IN ('Sales', 'Development');

-- Data Analysis #8
SELECT 	last_name,
		count(last_name) AS count_of_last_name
FROM employees
GROUP BY last_name
ORDER BY count_of_last_name DESC;