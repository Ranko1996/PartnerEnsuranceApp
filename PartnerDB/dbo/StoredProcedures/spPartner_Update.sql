CREATE PROCEDURE [dbo].[spPartner_Update]
    @Id int,
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
    UPDATE dbo.[Partner]
    SET
        FirstName = @FirstName,
        LastName = @LastName,
        Address = @Address,
        PartnerNumber = @PartnerNumber,
        CroatianPIN = @CroatianPIN,
        PartnerTypeId = @PartnerTypeId,
        CreatedByUser = @CreatedByUser,
        IsForeign = @IsForeign,
        ExternalCode = @ExternalCode,
        Gender = @Gender
    WHERE Id = @Id;
END


