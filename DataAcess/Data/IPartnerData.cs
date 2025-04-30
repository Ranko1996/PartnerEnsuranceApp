using DataAcess.Models;

namespace DataAcess.Data
{
    public interface IPartnerData
    {
        Task DeletePartner(int id);
        Task<PartnerModel?> GetPartner(int id);
        Task<IEnumerable<PartnerModel>> GetPartners();
        Task InsertPartner(PartnerModel partner);
        Task UpdatePartner(PartnerModel partner);
    }
}