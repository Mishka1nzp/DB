﻿CREATE TABLE [dbo].[Tag] (
    [ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([ID] ASC)
);

