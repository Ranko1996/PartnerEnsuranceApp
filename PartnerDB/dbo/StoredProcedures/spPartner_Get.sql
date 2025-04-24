CREATE PROCEDURE [dbo].[spPartner_Get]
	@Id int
AS
begin 
	select *
	from dbo.[Partner]
	where ID = @ID;
end
