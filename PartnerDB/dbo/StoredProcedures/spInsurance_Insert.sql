CREATE PROCEDURE [dbo].[spInsurance_Insert]
    @PartnerId int,
    @PolicyNumber nvarchar(15),
    @Amount decimal(18, 2)
AS
BEGIN
    insert into dbo.Insurance (PartnerId, PolicyNumber, Amount)
    values (@PartnerId, @PolicyNumber, @Amount);
END
