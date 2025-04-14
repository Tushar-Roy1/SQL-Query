-- Top 2 Salaries in Each Department
-- This query finds the top 2 highest paid employees in each department using DENSE_RANK and window functions.

-- Step 1: Create the Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT
);

-- Step 2: Insert sample data
INSERT INTO Employees (id, name, department, salary) VALUES
(1, 'John', 'HR', 40000),
(2, 'Alice', 'Tech', 60000),
(3, 'Bob', 'Tech', 55000),
(4, 'Eve', 'HR', 45000),
(5, 'Sam', 'Finance', 70000),
(6, 'Mira', 'Finance', 50000),
(7, 'Leo', 'Tech', 52000);

-- Step 3: Query to find the top 2 salaries in each department
SELECT name, department, salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
    FROM Employees
) AS ranked
WHERE rank <= 2;