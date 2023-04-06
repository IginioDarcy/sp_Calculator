create PROCEDURE sp_Calculator
    @num1 decimal(18,2),
    @num2 decimal(18,2),
    @operator varchar(1)
AS
BEGIN
    SET NOCOUNT ON;
    IF @operator = '+'
        SELECT @num1 + @num2 AS 'Result';
    ELSE IF @operator = '-'
        SELECT @num1 - @num2 AS 'Result';
    ELSE IF @operator = '*'
        SELECT @num1 * @num2 AS 'Result';
    ELSE IF @operator = '/'
        SELECT CASE WHEN @num2 = 0 THEN 'Cannot divide by zero' ELSE @num1 / @num2 END AS 'Result';
    ELSE
	begin
        PRINT 'Invalid operator';
	end
END
