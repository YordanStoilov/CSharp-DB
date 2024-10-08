-- Create a SQL query that finds all towns, which do not start with 'R', 'B' or 'D'. 
-- Order the result alphabetically by name. 

SELECT
    *
FROM Towns
WHERE [Name] NOT LIKE '[RBD]%'
ORDER BY [Name];