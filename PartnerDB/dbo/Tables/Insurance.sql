CREATE TABLE [dbo].[Insurance] (
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PartnerId] INT NOT NULL,
    [PolicyNumber] NVARCHAR(15) NOT NULL,
    [Amount] DECIMAL(18, 2) NOT NULL,     

    CONSTRAINT CK_PolicyNumber_Length CHECK (LEN(PolicyNumber) >= 10 AND LEN(PolicyNumber) <= 15),
    CONSTRAINT FK_Insurance_Partner FOREIGN KEY (PartnerId) REFERENCES dbo.Partner(Id)
);

