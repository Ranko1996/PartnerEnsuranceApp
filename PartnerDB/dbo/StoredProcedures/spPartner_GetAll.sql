CREATE PROCEDURE [dbo].[spPartner_GetAll]
AS
begin
	select
        Id,
		FirstName,
        LastName,
        FirstName + ' ' + LastName AS FullName,
		PartnerNumber,
        CroatianPIN,
        PartnerTypeId,
        CreatedAtUtc,
        IsForeign,
        Gender
	from dbo.[Partner];
end
