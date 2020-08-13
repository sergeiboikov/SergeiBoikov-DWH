CREATE VIEW [datamart].[vw_DimLocation]
WITH SCHEMABINDING
AS
(SELECT [DimLocationKey]
       ,[Latitude]
       ,[Longitude]
FROM [dwh].[DimLocation]);