CREATE PROCEDURE [dbo].[spPartner_Insert]
	@FirstName NVARCHAR(255),
    @LastName NVARCHAR(255),
    @Address NVARCHAR(255) = NULL,
    @PartnerNumber CHAR(20),
    @CroatianPIN CHAR(11) = NULL,
    @PartnerTypeId INT,
    @CreatedByUser NVARCHAR(255),
    @IsForeign BIT,
    @ExternalCode NVARCHAR(20),
    @Gender CHAR(1)
AS
BEGIN
    INSERT INTO dbo.[Partner]
    (FirstName, LastName, Address, PartnerNumber, CroatianPIN, PartnerTypeId, CreatedByUser, CreatedAtUtc, IsForeign, ExternalCode, Gender)
    VALUES
    (@FirstName, @LastName, @Address, @PartnerNumber, @CroatianPIN, @PartnerTypeId, @CreatedByUser, GETUTCDATE(), @IsForeign, @ExternalCode, @Gender);
END
