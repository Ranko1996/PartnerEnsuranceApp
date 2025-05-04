namespace PartneriOsiguranje;

public static class Api
{
    public static void ConfigureApi(this WebApplication app)
    {
        //All of my API endpoint mapping
        app.MapGet("/Partners", GetPartners);
        app.MapGet("/Partner/{id}", GetPartner);
        app.MapPost("/Partner", InsertPartner);
        app.MapDelete("/Partner/{id}", DeletePartner);
        app.MapPut("/Partner", UpdatePartner);
        app.MapGet("/Insurance/{partnerId}", GetInsurance); 
        app.MapPost("/Insurance", InsertInsurance);         

    }

    private static async Task<IResult> GetPartners(IPartnerData data)
    {
        try
        {
            return Results.Ok(await data.GetPartners());
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> GetPartner(int id, IPartnerData data)
    {
        try
        {
            var result = await data.GetPartner(id);
            if (result == null) return Results.NotFound();
            return Results.Ok(result);
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> InsertPartner(PartnerModel partner, IPartnerData data)
    {
        try
        {
            await data.InsertPartner(partner);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> UpdatePartner(PartnerModel partner, IPartnerData data)
    {
        try
        {
            await data.UpdatePartner(partner);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> DeletePartner(int id, IPartnerData data)
    {
        try
        {
            await data.DeletePartner(id);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> GetInsurance(int partnerId, IInsuranceData data)
    {
        try
        {
            var result = await data.GetInsurancesForPartner(partnerId);
            return Results.Ok(result);
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

    private static async Task<IResult> InsertInsurance(InsuranceModel insurance, IInsuranceData data)
    {
        try
        {
            await data.InsertInsurance(insurance);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            return Results.Problem(ex.Message);
        }
    }

}
