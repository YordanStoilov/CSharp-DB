CREATE OR ALTER PROC usp_WithdrawMoney (@AccountId INT, @MoneyAmount DECIMAL(18, 4))
AS
BEGIN
BEGIN TRANSACTION
    IF @MoneyAmount > 0
    BEGIN
        UPDATE Accounts
        SET Balance -= @MoneyAmount
        WHERE Id = @AccountId
    END
COMMIT TRANSACTION
END