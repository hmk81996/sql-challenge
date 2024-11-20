CREATE TABLE "Dept" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR,
    CONSTRAINT "pk_Dept" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR,
    "birth_date" DATE,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "sex" VARCHAR,
    "hire_date" DATE,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);


CREATE TABLE "DeptEmp" (
    "emp_no" INT,
    "dept_no" VARCHAR
);

CREATE TABLE "DeptManager" (
    "dept_no" VARCHAR,
    "emp_no" INT
);


CREATE TABLE "Salaries" (
    "emp_no" INT,
    "salary" INT
);


ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

-- ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "Employees" ("emp_no");

ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Dept" ("dept_no");

ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Dept" ("dept_no");

-- ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

