public class Bagis
{
    public int ID { get; set; }

    public int BagisciID { get; set; }

    public decimal Miktar { get; set; }

    public DateTime BagisTarihi { get; set; }

    public string KullanimAlani { get; set; }

    // Navigation property (iste�e ba�l�)
    public Bagisci Bagisci { get; set; }
}
