using muzeyonetimi.Models;

public class EserBakimKaydi
{
    public int ID { get; set; }

    public int EserID { get; set; }

    public DateTime BakimTarihi { get; set; }

    public string YapilanIslem { get; set; }

    public int SorumluKisi { get; set; }

    // Navigation properties (isteðe baðlý)
    public Eser Eser { get; set; }
    public Personel Personel { get; set; }
}
