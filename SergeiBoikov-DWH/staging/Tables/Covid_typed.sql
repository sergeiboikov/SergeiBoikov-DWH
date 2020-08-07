CREATE TABLE [staging].[Covid_typed] (
    [Status]        TINYINT        NULL,
    [Date]          DATE           NULL,
    [Latitude]      DECIMAL(5,3)   NULL,
    [Longitude]     DECIMAL(5,3)   NULL,
    [Count]         INT            NULL,
    [sysCreatedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]  INT            DEFAULT ((-1)) NULL,
    [sysChangedBy]  INT            DEFAULT ((-1)) NULL
);

