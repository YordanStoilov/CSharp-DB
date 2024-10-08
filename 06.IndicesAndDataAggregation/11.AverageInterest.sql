-- Mr. Bodrog is highly interested in profitability. He wants to know the average 
-- interest of all deposit groups, split by whether the deposit has expired or not. 
-- But thats not all. He wants you to select deposits with start date after 01/01/1985. 
-- Order the data descending by Deposit Group and ascending by Expiration Flag.
SELECT * FROM
    (SELECT DepositGroup, 
        IsDepositExpired,
        AVG(DepositInterest) AS [AverageInterest]
    FROM WizzardDeposits
    WHERE DepositStartDate > '1985-01-01'
    GROUP BY DepositGroup, IsDepositExpired) AS DepositData

ORDER BY DepositData.DepositGroup DESC, DepositData.IsDepositExpired