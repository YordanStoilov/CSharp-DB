-- Create a SQL query that finds all employees whose first name starts with "Sa". 
-- As a result, display "FirstName" and "LastName".

SELECT
    FirstName
    ,LastName
FROM
    Employees
WHERE 
    FirstName 
LIKE 'Sa%';