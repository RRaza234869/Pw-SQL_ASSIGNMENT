--Q1. Create a New Database and Table for Employees
-- company_db database is created.

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

--Q2. Insert Data into Employees Table

INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date)
VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

--Q3. Display All Employee Records Sorted by Salary (Lowest → Highest)

SELECT * FROM employees
ORDER BY salary ASC;

--Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)

SELECT * FROM employees
ORDER BY department ASC, salary DESC;

--Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)

SELECT * FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

--to see employees table

select * from employees;

--Q6. Create and Populate a Sales Table

 CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

INSERT INTO sales (sale_id, customer_name, amount, sale_date)
VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');

--Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)

SELECT * FROM sales
ORDER BY amount DESC;

--Q8. Show All Sales Made by Customer “Aditi”

SELECT * FROM sales
WHERE customer_name = 'Aditi';

--Q9. What is the Difference Between Primary Key and Foreign Key?

--ANSWER- A primary key gives unique identifies each record in a table. It cannot have duplicate
--values.It cannot be NULL.A table can have only one primary key.
--Foreign Key
--A foreign key is used to link two tables together.It refers to the primary key of
--another table.It can contain duplicate values.It can be NULL (depending on
--design).It ensures referential integrity between related tables.
--Example:
--The students table has student_id as a primary key.
--The payments table uses student_id as a foreign key to connect payments to
--students.

--Q10. What Are Constraints in SQL and Why Are They Used?

--ANSWER-- To prevent invalid data from being entered and to maintain accuracy and consistency in the database ,protect data integrity ,enforce business rules and also maintain proper relationships between tables,.

--Common Types of Constraints
-- PRIMARY KEY uniquely identifies each row
-- FOREIGN KEY  maintains relationship between tables
--NOT NULL → the column cannot be empty
--UNIQUE → no duplicate values allowed.


