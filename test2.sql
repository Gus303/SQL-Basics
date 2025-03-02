-- Define a Common Table Expression (CTE) to rank employees by salary within each department
WITH RankedSalaries AS (
    SELECT 
        e.id AS employee_id,          -- Employee ID
        e.name AS employee_name,      -- Employee Name
        e.salary,                     -- Employee Salary
        d.id AS department_id,        -- Department ID
        d.name AS department_name,    -- Department Name
        
        -- Assign a rank to each employee based on salary within their department
        RANK() OVER (
            PARTITION BY d.id          -- Reset ranking for each department
            ORDER BY e.salary DESC     -- Order employees by salary (highest first)
        ) AS rank_position
        
    FROM employees e
    JOIN departments d 
        ON e.department_id = d.id  -- Join employees with their respective departments
)

-- Select only the highest-paid employees per department
SELECT 
    employee_id, 
    employee_name, 
    salary, 
    department_id, 
    department_name
FROM RankedSalaries
WHERE rank_position = 1;  -- Keep only the top-ranked (highest salary) employees