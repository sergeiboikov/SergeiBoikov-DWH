CREATE VIEW [datamart].[vw_DimLocation]
WITH SCHEMABINDING
AS
(SELECT [DimLocationKey]
       ,[Location]
FROM [dwh].[DimLocation]);