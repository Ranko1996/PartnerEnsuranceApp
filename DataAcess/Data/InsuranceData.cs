using DataAcess.DbAccess;
using DataAcess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcess.Data;

public class InsuranceData : IInsuranceData
{
    private readonly ISqlDataAccess _db;
    public InsuranceData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<IEnumerable<InsuranceModel>> GetInsurancesForPartner(int partnerId)
    {
        var results = await _db.LoadData<InsuranceModel, dynamic>(
            "dbo.spInsurance_Get",
            new { PartnerId = partnerId }
        );

        return results;
    }

    public Task InsertInsurance(InsuranceModel insurance)
    {
        return _db.SaveData("dbo.spInsurance_Insert", new
        {
            insurance.PartnerId,
            insurance.PolicyNumber,
            insurance.Amount
        });
    }

}
