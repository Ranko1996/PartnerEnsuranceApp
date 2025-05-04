

namespace DataAcess.Models;

public class InsuranceModel
{
    public int Id { get; set; }

    public int PartnerId { get; set; }

    public string PolicyNumber { get; set; } = string.Empty; 

    public decimal Amount { get; set; } 
}
