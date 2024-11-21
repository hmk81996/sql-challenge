# sql-challenge

# Task
I will be completing a research project about employees of a fictional company hired during the 1980s and 90s. Using six CSV files, I'll design corresponding tables, import those files into a SQL database and perform a series of queries on this new database. This task will require data modeling, data engineering and data analysis.

# Methodology 
## Data Modeling
Using the CSV files, I sketched an Entity Relationship Diagram in QuickDBD. Using headers and columns from the CSV files I created physical diagrams of Departments, Department Employees, Department Managers, Employees, Salaries, and Titles.

(![ERD Sketch](EmployeeSQL/images/data_modeling_removed%20FKs.png))

## Data Engineering
Using the ERD sketch for references, I created a table schema for each of the six CSV files, specifying data types, primary and foreign keys. Determining foreign keys was something of a challenge. When loading the CSV files into its corresponding SQL table, I encountered errors because some Employee numbers were missing. This issue was resolved when I removed the foreign key from most Employee numbers in other tables.

## Data Analysis
There are eight analysis tasks in this research task. I created queries for the following:
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

# Conclusion
