CREATE TABLE [staging].[Covid_aggregated] (
    [Status]        TINYINT        NOT NULL,
    [Date]          INT            NOT NULL,
    [Location]      GEOGRAPHY      NOT NULL,
    [Count]         INT            NOT NULL,
    [sysCreatedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]  INT            DEFAULT ((-1)) NULL,
    [sysChangedBy]  INT            DEFAULT ((-1)) NULL
);

