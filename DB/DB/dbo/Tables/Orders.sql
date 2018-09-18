CREATE TABLE [dbo].[Orders] (
    [ID]         INT  IDENTITY (1, 1) NOT NULL,
    [ID_Product] INT  NOT NULL,
    [Date]       DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [ID_Product] FOREIGN KEY ([ID_Product]) REFERENCES [dbo].[Products] ([ID])
);

