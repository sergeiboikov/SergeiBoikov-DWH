CREATE TABLE [dwh].[DimLocation] (
    [DimLocationKey]  BIGINT         IDENTITY (1, 1) NOT NULL,
    [Latitude]        DECIMAL(5,3)   NOT NULL,
    [Longitude]       DECIMAL(5,3)   NOT NULL,
    [sysCreatedAt] DATETIME       CONSTRAINT [DF_DimLocation_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME       CONSTRAINT [DF_DimLocation_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy] INT            CONSTRAINT [DF_DimLocation_sysCreatedBy] DEFAULT ((-1)) NULL,
    [sysChangedBy] INT            CONSTRAINT [DF_DimLocation_sysChangedBy] DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_DimLocation] PRIMARY KEY CLUSTERED ([DimLocationKey] ASC)
);