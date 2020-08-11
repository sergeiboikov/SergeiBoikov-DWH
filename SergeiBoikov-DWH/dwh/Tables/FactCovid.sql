CREATE TABLE [dwh].[FactCovid] (
    [FactCovidKey]      INT      IDENTITY (1, 1) NOT NULL,
    [DimDateKey]        INT      NOT NULL,
    [DimStatusKey]      INT      NOT NULL,
    [DimLocationKey]    BIGINT   NOT NULL,
    [CovidCount]        INT      NULL,
    [sysCreatedAt] DATETIME       CONSTRAINT [DF_FactCovid_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME       CONSTRAINT [DF_FactCovid_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy] INT            CONSTRAINT [DF_FactCovid_sysCreatedBy] DEFAULT ((-1)) NULL,
    [sysChangedBy] INT            CONSTRAINT [DF_FactCovid_sysChangedBy] DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_FactCovid] PRIMARY KEY CLUSTERED ([FactCovidKey] ASC)
);

