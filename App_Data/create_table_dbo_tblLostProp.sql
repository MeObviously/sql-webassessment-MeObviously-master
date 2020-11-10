
CREATE TABLE [dbo].[tblLostProp] (
    [Id]     INT          IDENTITY (0, 1) NOT NULL,
    [Item]   VARCHAR (50) NOT NULL,
    [Brand]  VARCHAR (20) NOT NULL,
    [Colour] VARCHAR (50) NOT NULL,
    [Size]  VARCHAR (10) NOT NULL,
	[DateFound]  DATE NOT NULL,
    [Named]  VARCHAR (3)  NOT NULL,
    [Name]   VARCHAR (50) NOT NULL,
	[Phone]   VARCHAR (15) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

