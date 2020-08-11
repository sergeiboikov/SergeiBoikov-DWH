CREATE TABLE [dwh].[DimStatus] (
    [DimStatusKey] INT            IDENTITY (1, 1) NOT NULL,
    [StatusName]   NVARCHAR (255) NOT NULL,
    [StatusCode]   INT            NOT NULL,
    [sysCreatedAt] DATETIME       CONSTRAINT [DF_DimStatus_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME       CONSTRAINT [DF_DimStatus_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy] INT            CONSTRAINT [DF_DimStatus_sysCreatedBy] DEFAULT ((-1)) NULL,
    [sysChangedBy] INT            CONSTRAINT [DF_DimStatus_sysChangedBy] DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_DimStatus] PRIMARY KEY CLUSTERED ([DimStatusKey] ASC)
);



