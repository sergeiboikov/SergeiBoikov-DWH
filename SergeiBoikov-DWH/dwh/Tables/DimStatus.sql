CREATE TABLE [dwh].[DimStatus] (
    [DimStatusKey]    TINYINT            IDENTITY (1, 1) NOT NULL,
    [StatusName]      NVARCHAR (255) NOT NULL,
    [StatusCode]      TINYINT        NOT NULL,
    [sysCreatedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]    INT            DEFAULT ((-1)) NULL,
    [sysChangedBy]    INT            DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_DimStatus] PRIMARY KEY CLUSTERED ([DimStatusKey] ASC)
);

