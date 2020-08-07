CREATE TABLE [dwh].[FactCovid] (
    [FactCovidKey]      INT      IDENTITY (1, 1) NOT NULL,
    [DimDateKey]        INT      NOT NULL,
    [DimStatusKey]      INT      NOT NULL,
    [DimLocationKey]    BIGINT   NOT NULL,
    [CovidCount]        INT      NULL,
    [sysCreatedAt]    DATETIME DEFAULT (getutcdate()) NULL,
    [sysChangedAt]    DATETIME DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]    INT      DEFAULT ((-1)) NULL,
    [sysChangedBy]    INT      DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_FactCovid] PRIMARY KEY CLUSTERED ([FactCovidKey] ASC)
);

