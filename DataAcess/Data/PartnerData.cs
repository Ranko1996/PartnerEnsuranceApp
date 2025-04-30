using DataAcess.DbAccess;
using DataAcess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcess.Data;

public class PartnerData : IPartnerData
{
    private readonly ISqlDataAccess _db;

    public PartnerData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<PartnerModel>> GetPartners() =>
        _db.LoadData<PartnerModel, dynamic>("dbo.spPartner_GetAll", new { });

    public async Task<PartnerModel?> GetPartner(int id)
    {
        var results = await _db.LoadData<PartnerModel, dynamic>("dbo.spPartner_Get", new { Id = id });
        return results.FirstOrDefault();
    }

    public Task InsertPartner(PartnerModel partner) =>
        _db.SaveData("dbo.spPartner_Insert", new
        {
            partner.FirstName,
            partner.LastName,
            partner.Address,
            partner.PartnerNumber,
            partner.CroatianPIN,
            partner.PartnerTypeId,
            partner.CreatedAtUtc,
            partner.CreatedByUser,
            partner.IsForeign,
            partner.ExternalCode,
            partner.Gender
        });

    public Task UpdatePartner(PartnerModel partner) =>
        _db.SaveData("dbo.spPatner_Update", partner);

    public Task DeletePartner(int id) =>
        _db.SaveData("dbo.spUser_Delete", new { Id = id });
}
