CREATE VIEW [datamart].[vw_FactCovid]
WITH SCHEMABINDING
AS
(SELECT [FactCovidKey]
       ,[DimDateKey]
       ,[DimStatusKey]
       ,[DimLocationKey]
       ,[CovidCount] 
FROM [dwh].[FactCovid]);