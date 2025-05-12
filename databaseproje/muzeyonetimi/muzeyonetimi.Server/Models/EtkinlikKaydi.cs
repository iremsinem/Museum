using muzeyonetimi.Models;

public class EtkinlikKaydi
{
    public int ID { get; set; }

    public int ZiyaretciID { get; set; }

    public int EtkinlikID { get; set; }

    public DateTime KayitTarihi { get; set; }

    // Navigation properties (isteğe bağlı)
    public Ziyaretciler Ziyaretci { get; set; }
    public Etkinlik Etkinlik { get; set; }
}
