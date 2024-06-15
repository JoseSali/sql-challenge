-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employee e
JOIN Salary s ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employee
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Dept_Manager dm
JOIN Employee e ON dm.emp_no = e.emp_no
JOIN Department d ON dm.dept_no = d.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Dept_Employee de
JOIN Employee e ON de.emp_no = e.emp_no
JOIN Department d ON de.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM Employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM Dept_Employee de
JOIN Employee e ON de.emp_no = e.emp_no
JOIN Department d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Employee de
JOIN Employee e ON de.emp_no = e.emp_no
JOIN Department d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the employee last names
SELECT last_name, COUNT(*) as frequency
FROM Employee
GROUP BY last_name
ORDER BY frequency DESC;
