# SQL Problem - Top 2 Salaries in Each Department

This SQL script demonstrates how to use **window functions** to find the **top 2 highest salaries** in **each department** from an `Employees` table.

## Problem Statement

Given a table of employee details, write a SQL query to retrieve the top 2 highest-paid employees from each department.

### Table: Employees

| Column     | Type         |
|------------|--------------|
| id         | INT (Primary Key) |
| name       | VARCHAR(100) |
| department | VARCHAR(100) |
| salary     | INT          |

## SQL Concepts Used

- `DENSE_RANK()` window function  
- `PARTITION BY` to separate data by department  
- Subqueries to filter ranked rows  

## Sample Data

```sql
INSERT INTO Employees (id, name, department, salary) VALUES
(1, 'John', 'HR', 40000),
(2, 'Alice', 'Tech', 60000),
(3, 'Bob', 'Tech', 55000),
(4, 'Eve', 'HR', 45000),
(5, 'Sam', 'Finance', 70000),
(6, 'Mira', 'Finance', 50000),
(7, 'Leo', 'Tech', 52000);
``
