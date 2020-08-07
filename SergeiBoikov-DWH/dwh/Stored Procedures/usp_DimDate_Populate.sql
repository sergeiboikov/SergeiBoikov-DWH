CREATE PROCEDURE [dwh].[usp_DimDate_Populate]
AS

DECLARE @StartDate DATE = '20200101';
DECLARE @EndDate DATE = '20201231';

IF (@EndDate < @StartDate)
BEGIN
     RAISERROR ('StartDate must be <= EndDate',10,1);
END

DECLARE @d DATE = @StartDate;
--- AP strongly recommend to change to set based approach
WHILE (@d <= @EndDate)
BEGIN
     INSERT INTO [dwh].[DimDate]
    (
        [DimDateKey]
        ,[FullDate]
        ,[DayOfMonth]
        ,[DayName]
        ,[MonthName]
        ,[Month]
        ,[Year]
        ,[DayOfWeek]
        ,[DayOfYear]
        ,[WeekOfYear]
        ,[MonthYear]
        ,[FirstDayOfMonth]
        ,[LastDayOfMonth]
        ,[Quarter]
        ,[QuarterYear]
        ,[HalfYear]
        ,[HalfYearName]
        ,[LeapYear]
    )
    
     SELECT
        CAST(YEAR(@d) AS VARCHAR(4)) + 
            CASE WHEN MONTH(@d) < 10 THEN '0' + CAST(MONTH(@d) AS VARCHAR(1))
                ELSE CAST(MONTH(@d) AS VARCHAR(2))
               END + 
               CASE WHEN DAY(@d) < 10 THEN '0' + CAST(DAY(@d) AS VARCHAR(1))
                    ELSE CAST(DAY(@d) AS VARCHAR(2))
               END
        ,@d
        ,DATEPART(DAY, @d)
        ,DATENAME(WEEKDAY, @d)
        ,DATENAME(MONTH, @d)
        ,DATEPART(MONTH, @d)
        ,YEAR(@d)
        ,DATEPART(WEEKDAY, @d)
        ,DATEPART(DAYOFYEAR, @d)
        ,RIGHT('0' + CAST(DATEPART(WEEK, @d) AS VARCHAR(2)), 2)
        ,CONVERT(VARCHAR, DATEPART(YEAR, @d)) + '-' + RIGHT('0' + CAST(DATEPART(MONTH, @d) AS VARCHAR(2)), 2)
        ,CONVERT(DATE, CONVERT(DATE, DATEADD(DAY, - (DATEPART(DAY, @d) - 1), @d)))
        ,CONVERT(DATE, CONVERT(DATE, DATEADD(DAY, - (DATEPART(DAY, (DATEADD(MONTH, 1, @d)))), DATEADD(MONTH, 1, @d))))
        ,DATEPART(QUARTER, @d)
        ,CONVERT(VARCHAR, DATEPART(YEAR, @d)) + '-' +  'Q' + CAST(DATEPART(QUARTER, @d) AS VARCHAR(1))
        ,CASE WHEN DATEPART(MONTH, @d) <= 6 THEN '1' 
                ELSE '2' 
         END
        ,CASE WHEN DATEPART(month, @d) <= 6 THEN (CONVERT(VARCHAR, DATEPART(YEAR, @d)) + '-' + 'H1')
                ELSE (CONVERT(VARCHAR, DATEPART(YEAR, @d)) + '-' + 'H2')
         END
        ,CASE WHEN DAY(EOMONTH(DATEFROMPARTS(DATEPART(year, @d), 2, 1))) = 29 THEN '1'
                ELSE '0'  
         END
     
     WHERE 
          NOT EXISTS (SELECT 1 FROM [dwh].[DimDate] WHERE [FullDate] = @d);
     SET @d = DATEADD(DAY, 1, @d);
END