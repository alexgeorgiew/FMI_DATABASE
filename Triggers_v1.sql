CREATE TRIGGER hotelsremoval
on Hotel
AFTER DELETE
AS
BEGIN
DECLARE @Rows int
SELECT @Rows=@@ROWCOUNT
PRINT cast(@Rows as varchar) + ' hotels will no longer work'
END 

CREATE TRIGGER MinimumWage
on Position
after INSERT
AS
BEGIN
  DELETE FROM Position where Position.Salary<150
END