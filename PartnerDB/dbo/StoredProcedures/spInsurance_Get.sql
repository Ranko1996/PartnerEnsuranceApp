CREATE PROCEDURE [dbo].[spInsurance_Get]
	@PartnerId int
AS
    begin
	    select 
            Id,
            PartnerId,
            PolicyNumber,
            Amount
        from dbo.[Insurance]
        where PartnerId = @PartnerId;
    end
