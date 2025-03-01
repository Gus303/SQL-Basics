-- Create a table named 'employees' with basic columns
CREATE TABLE employees (
    id INT PRIMARY KEY,          -- Unique identifier for each employee
    name VARCHAR(100),           -- Employee's full name
    age INT,                     -- Employee's age
    department VARCHAR(50)       -- Department where the employee works
);

-- Insert sample data into the 'employees' table
INSERT INTO employees (id, name, age, department)
VALUES 
    (1, 'Alice Johnson', 30, 'HR'), 
    (2, 'Bob Smith', 25, 'IT'), 
    (3, 'Charlie Brown', 35, 'Finance');

-- Retrieve all records from the 'employees' table
SELECT * FROM employees;

-- Retrieve only employees from the IT department
SELECT * FROM employees WHERE department = 'IT';

-- Update Bob's age to 26
UPDATE employees 
SET age = 26 
WHERE id = 2;

-- Delete the employee with id = 3
DELETE FROM employees WHERE id = 3;

-- Drop (delete) the entire 'employees' table
DROP TABLE employees;