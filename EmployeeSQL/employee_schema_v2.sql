-- Create Department Table
CREATE TABLE "Dept" (
    "dept_no" VARCHAR NOT NULL,
    "dept_name" VARCHAR,
    PRIMARY KEY ("dept_no")
);

-- Create Titles Table
CREATE TABLE "Titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR,
    PRIMARY KEY ("title_id")
);

-- Create Employees Table
CREATE TABLE "Employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR,
    "birth_date" DATE,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "sex" VARCHAR,
    "hire_date" DATE,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY("emp_title_id") REFERENCES "Titles" ("title_id")
);


-- Create Department Employees Table
CREATE TABLE "DeptEmp" (
    "emp_no" INT,
    "dept_no" VARCHAR,
	FOREIGN KEY("dept_no") REFERENCES "Dept" ("dept_no")
);

-- Create Department Manager Table
CREATE TABLE "DeptManager" (
    "dept_no" VARCHAR,
    "emp_no" INT,
	FOREIGN KEY("dept_no") REFERENCES "Dept" ("dept_no")
);

-- Create Salaries Table
CREATE TABLE "Salaries" (
    "emp_no" INT,
    "salary" INT
	-- FOREIGN KEY("emp_no") REFERENCES "Employees" ("emp_no")
);
