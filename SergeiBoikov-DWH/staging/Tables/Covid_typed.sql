CREATE TABLE [staging].[Covid_typed] (
    [Status]        INT            NOT NULL,
    [Date]          DATE           NOT NULL,
    [Latitude]      DECIMAL(5,3)   NOT NULL,
    [Longitude]     DECIMAL(5,3)   NOT NULL,
    [Count]         INT            NOT NULL,
    [sysCreatedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]  INT            DEFAULT ((-1)) NULL,
    [sysChangedBy]  INT            DEFAULT ((-1)) NULL
);

