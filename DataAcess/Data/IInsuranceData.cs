using DataAcess.Models;

namespace DataAcess.Data
{
    public interface IInsuranceData
    {
        Task<IEnumerable<InsuranceModel>> GetInsurancesForPartner(int partnerId);
        Task InsertInsurance(InsuranceModel insurance);
    }
}