-- Data Analysis
SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no AS "Employee number",
e.last_name AS "Last Name", 
e.first_name AS "First Name",e.sex, s.salary
FROM employees e, salaries s
WHERE e.emp_no = s.emp_no
ORDER BY e.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date 
BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT  
dm.dept_no AS "Department Number",
d.dept_name AS "Department Name",
dm.emp_no AS "Employee Number",
e.last_name AS "Last Name",
e.first_name AS "First Name" 
FROM dept_manager dm, departments d, employees e
WHERE dm.dept_no = d.dept_no 
AND dm.emp_no = e.emp_no
ORDER BY dm.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT e.emp_no AS "Employee Number", 
e.last_name AS "Last Name",
e.first_name AS "First Name",
d.dept_no AS "Department Number", 
d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
ORDER BY e.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and 
-- whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name ='Hercules' 
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no AS "Employee Number", 
d.dept_name AS "Department Name",  
e.last_name AS "Last Name",
e.first_name AS "First Name" 
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
e.emp_no AS "Employee Number", 
e.last_name AS "Last Name",
e.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT e.last_name, COUNT(*) AS "Frequency Counts"
FROM employees e
GROUP BY e.last_name
ORDER BY "Frequency Counts" DESC;

/* testing
SELECT COUNT(*)
FROM employees
WHERE last_name LIKE 'Baba';
*/








