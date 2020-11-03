CREATE TABLE [dbo].[tblBookings] (
    [Id]       INT          IDENTITY (0, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Time]     TIME (7)     NOT NULL,
    [Date]     DATE         NOT NULL,
    [Seats]    INT          NOT NULL,
    [Phone]    VARCHAR (12) NOT NULL,
    [Email]    VARCHAR (150) NOT NULL,
    [Category] VARCHAR (14) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

