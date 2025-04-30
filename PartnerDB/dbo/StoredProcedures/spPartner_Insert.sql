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
begin
    insert into dbo.[Partner]
    (FirstName, LastName, Address, PartnerNumber, CroatianPIN, PartnerTypeId, CreatedByUser, IsForeign, ExternalCode, Gender)
    values
    (@FirstName, @LastName, @Address, @PartnerNumber, @CroatianPIN, @PartnerTypeId, @CreatedByUser, @IsForeign, @ExternalCode, @Gender);
end
