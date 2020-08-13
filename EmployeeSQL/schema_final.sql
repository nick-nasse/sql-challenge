--create table for titles csv
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30) NOT NULL 
);

-- create table for employees csv
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL, 
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL, 
	sex VARCHAR(30) NOT NULL, 
	hire_date VARCHAR(30) NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- create table for salaries csv
CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY, 
	salary INTEGER NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) -- given the one to relationship, salaries.emp_no operates as primary key & foreign key
);

-- create table for departments csv
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY, 
	dept_name VARCHAR(30) NOT NULL 
);

-- create table for dept_emp csv
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL, 
	dept_no VARCHAR(30) NOT NULL, 
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
	
-- create table for dept_manager csv
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL, 
	emp_no INTEGER PRIMARY KEY, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

