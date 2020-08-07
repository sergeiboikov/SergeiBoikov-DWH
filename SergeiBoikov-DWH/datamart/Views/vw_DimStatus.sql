CREATE VIEW [datamart].[vw_DimStatus]
WITH SCHEMABINDING
AS
(SELECT [DimStatusKey]
       ,[StatusName]
FROM [dwh].[DimStatus]);