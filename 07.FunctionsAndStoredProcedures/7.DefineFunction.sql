-- Define a function ufn_IsWordComprised(@setOfLetters, @word) that 
-- returns true or false, depending on that if the word is comprised of the given 
-- set of letters. 

CREATE OR ALTER FUNCTION ufn_IsWordComprised (@setOfLetters NVARCHAR(50), @word NVARCHAR(100))
RETURNS BIT
AS
BEGIN
    DECLARE @i INT = 1
    WHILE @i <= LEN(@word)
    BEGIN
        DECLARE @ch NVARCHAR(1) = SUBSTRING(@word, @i, 1)
        IF CHARINDEX(@ch, @setOfLetters) = 0
            RETURN 0
        ELSE
            SET @i += 1
    END
    RETURN 1
END
