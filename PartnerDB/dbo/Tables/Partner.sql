CREATE TABLE [dbo].[Partner]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(255) NOT NULL,
    [LastName] NVARCHAR(255) NOT NULL,
    [Address] NVARCHAR(255) NULL,
    [PartnerNumber] CHAR(20) NOT NULL,
    [CroatianPIN] CHAR(11) NULL,
    [PartnerTypeId] INT NOT NULL,
    [CreatedAtUtc] DATETIME NOT NULL DEFAULT(GETUTCDATE()),
    [CreatedByUser] NVARCHAR(255) NOT NULL,
    [IsForeign] BIT NOT NULL,
    [ExternalCode] NVARCHAR(20) NOT NULL UNIQUE,
    [Gender] CHAR(1) NOT NULL
);
