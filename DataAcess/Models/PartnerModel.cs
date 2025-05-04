

namespace DataAcess.Models;

public class PartnerModel
{
    public int Id { get; set; }

    public string FirstName { get; set; } = string.Empty;

    public string LastName { get; set; } = string.Empty;

    public string? Address { get; set; }

    public string PartnerNumber { get; set; } = string.Empty; // 20 znamenki

    public string? CroatianPIN { get; set; } // OIB - 11 znamenki ili null

    public int PartnerTypeId { get; set; } // 1 = Personal, 2 = Legal

    public DateTime CreatedAtUtc { get; set; }

    public string CreatedByUser { get; set; } = string.Empty; // email

    public bool IsForeign { get; set; }

    public string ExternalCode { get; set; } = string.Empty; // min 10, max 20 znakova

    public char Gender { get; set; } // M, F, N
}
