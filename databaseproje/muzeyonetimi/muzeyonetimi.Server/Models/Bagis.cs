public class Bagis
{
    public int ID { get; set; }

    public int BagisciID { get; set; }

    public decimal Miktar { get; set; }

    public DateTime BagisTarihi { get; set; }

    public string KullanimAlani { get; set; }

    // Navigation property (isteðe baðlý)
    public Bagisci Bagisci { get; set; }
}
