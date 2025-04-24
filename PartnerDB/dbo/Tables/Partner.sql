CREATE TABLE [dbo].[Partner]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(255) NOT NULL CHECK (LEN(FirstName) >= 2),
    [LastName] NVARCHAR(255) NOT NULL CHECK (LEN(LastName) >= 2),
    [Address] NVARCHAR(255) NULL,
    [PartnerNumber] CHAR(20) NOT NULL CHECK (PartnerNumber NOT LIKE '%[^0-9]%'), -- točno 20 znamenki
    [CroatianPIN] CHAR(11) NULL CHECK (CroatianPIN LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), -- OIB ima 11 znamenki
    [PartnerTypeId] INT NOT NULL CHECK (PartnerTypeId IN (1, 2)),
    [CreatedAtUtc] DATETIME NOT NULL DEFAULT(GETUTCDATE()),
    [CreatedByUser] NVARCHAR(255) NOT NULL CHECK (CreatedByUser LIKE '_%@_%._%'), -- gruba provjera maila
    [IsForeign] BIT NOT NULL,
    [ExternalCode] NVARCHAR(20) NOT NULL UNIQUE CHECK (LEN(ExternalCode) BETWEEN 10 AND 20),
    [Gender] CHAR(1) NOT NULL CHECK (Gender IN ('M', 'F', 'N'))
)
