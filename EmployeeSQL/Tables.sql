-- Create titles table
CREATE TABLE titles(
	title_id CHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(25)
);

-- Create employees table
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id CHAR(5),
	birth_date DATE,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	sex CHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create departments table
CREATE TABLE departments(
	dept_no CHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(25) NOT NULL
);

-- Create dept_emp table
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create dept_manager table
CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create salaries table
CREATE TABLE salaries(
	emp_no INT,
	salary FLOAT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;