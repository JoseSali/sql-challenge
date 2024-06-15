-- Load data into Employee table
COPY Employee(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:/Users/joesa/Downloads/SQL_STARTERCODE/Starter_Code/data/employees.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Department table
COPY Department(dept_no, dept_name)
FROM 'C:/Users/joesa/Downloads/SQL_STARTERCODE/Starter_Code/data/departments.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Dept_Employee table
COPY Dept_Employee(emp_no, dept_no)
FROM 'C:/Users/joesa/Downloads/SQL_STARTERCODE/Starter_Code/data/dept_emp.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Dept_Manager table
COPY Dept_Manager(dept_no, emp_no)
FROM 'C:/Users/joesa/Downloads/SQL_STARTERCODE/Starter_Code/data/dept_manager.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Salary table
COPY Salary(emp_no, salary)
FROM 'C:/Users/joesa/Downloads/SQL_STARTERCODE/Starter_Code/data/salaries.csv'
DELIMITER ','
CSV HEADER;

-- Load data into Titles table
COPY Titles(title_id, title)
FROM 'C:/Users/joesa/Downloads/SQL_STARTERCODE/Starter_Code/data/titles.csv'
DELIMITER ','
CSV HEADER;
