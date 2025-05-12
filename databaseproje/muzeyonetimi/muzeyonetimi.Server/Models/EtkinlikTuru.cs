using System.ComponentModel.DataAnnotations;

public class EtkinlikTuru
{
    public int ID { get; set; }

    [Required]
    [MaxLength(100)]
    public string Ad { get; set; }

    [MaxLength(255)]
    public string Aciklama { get; set; }
}
