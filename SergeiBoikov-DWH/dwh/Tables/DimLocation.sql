CREATE TABLE [dwh].[DimLocation] (
    [DimLocationKey]  BIGINT            IDENTITY (1, 1) NOT NULL,
    [Location]        GEOGRAPHY                         NOT NULL,
    [sysCreatedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]    INT            DEFAULT ((-1)) NULL,
    [sysChangedBy]    INT            DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_DimLocation] PRIMARY KEY CLUSTERED ([DimLocationKey] ASC)
);