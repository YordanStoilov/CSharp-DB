-- Write a query that selects:
-- •	CountryName
-- •	RiverName
-- Find the first 5 countries with or without rivers in Africa. 
-- Sort them by CountryName in ascending order.

SELECT TOP 5
    c.CountryName
    ,r.RiverName
FROM Countries AS c
LEFT JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
LEFT JOIN Rivers AS r ON r.Id = cr.RiverId
WHERE c.ContinentCode = 'AF'
ORDER BY c.CountryName