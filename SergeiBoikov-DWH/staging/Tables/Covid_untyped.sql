CREATE TABLE [staging].[Covid_untyped] (
    [Status]        NVARCHAR (255) NULL,
    [Date]          NVARCHAR (255) NULL,
    [Latitude]      NVARCHAR (255) NULL,
    [Longitude]     NVARCHAR (255) NULL,
    [Count]         NVARCHAR (255) NULL,
    [sysCreatedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]  INT            DEFAULT ((-1)) NULL,
    [sysChangedBy]  INT            DEFAULT ((-1)) NULL
);

