-- List employee number, last, name, first name, sex, and salary of each employee
-- Create a join between Employees and Salaries

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" as e
INNER JOIN "Salaries" as s ON 
e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
-- Use the BETWEEN operator to include all dates in 1986

SElECT e.first_name, e.last_name, e.hire_date
FROM "Employees" as e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT d.dept_no, dept.dept_name, d.emp_no, e.last_name, e.first_name
FROM "DeptManager" AS d
INNER JOIN "Dept" AS dept ON d.dept_no = dept.dept_no 
INNER JOIN "Employees" AS e ON d.emp_no = e.emp_no;

-- List the department number for each employee along with that employee's employee number, last name, first name, and department name

SELECT d.dept_no, d.emp_no, e.last_name, e.first_name, dept.dept_name
FROM "DeptEmp" AS d
INNER JOIN "Employees" AS e ON d.emp_no = e.emp_no
INNER JOIN "Dept" AS dept ON dept.dept_no = d.dept_no;

-- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the Letter B
-- Use wild card

SELECT e.first_name, e.last_name, e.sex
FROM "Employees" AS e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name

SELECT e.last_name, e.first_name
FROM "Employees" AS e
JOIN 

SELECT d.dept_name
FROM "Dept" AS d
WHERE d.dept_name = "Sales" IN

SELECT dept.emp_no
FROM "Dept" AS dept

-- List each emmployee in the Sales and Development departments, including their employee number, last name, first name and department name

-- List the frequency counts, in descending order, of all the employee last names (how many employees share each last name)

