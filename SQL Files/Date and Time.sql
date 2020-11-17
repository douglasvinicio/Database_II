-- DATE and TIME / EXAMPLES
SELECT CURRENT_TIMESTAMP AS RightNow;
SELECT GETDATE() AS RightNow2;
SELECT SYSDATETIME() AS RightNow3;

SELECT DATEADD(year, 1, '2015-01-02 03:04:05') AS MyYear;
SELECT DATEPART(hour, '2015-01-02 03:04:05') AS MyHour;
SELECT DATEPART(hour, GETDATE()) AS MyHour;
SELECT DATENAME(month, GETDATE()) AS MyAnswer; -- Returns the current month as a Name String
SELECT DATENAME(weekday, GETDATE()) AS MyAnswer; -- Returns the current day of the week as a Name String
SELECT DATEDIFF(second,'2015-01-02 03:04:05',GETDATE()) AS SecondsElapsed; -- Ir returns the difference between two dates
