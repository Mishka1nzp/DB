CREATE TABLE [dbo].[Products] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [Price]       SMALLMONEY    NOT NULL,
    [Count]       INT           NOT NULL,
    [ID_Supplier] INT           NOT NULL,
    [ID_Tag]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [ID_Supplier] FOREIGN KEY ([ID_Supplier]) REFERENCES [dbo].[Supplier] ([ID]),
    CONSTRAINT [ID_Tag] FOREIGN KEY ([ID_Tag]) REFERENCES [dbo].[Tag] ([ID])
);

