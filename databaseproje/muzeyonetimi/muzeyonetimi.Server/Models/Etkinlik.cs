namespace muzeyonetimi.Models
{
    public class Etkinlik
    {
        public int ID { get; set; }
        public string Ad { get; set; }
        public string Tur { get; set; }
        public DateTime BaslangicTarihi { get; set; }
        public DateTime BitisTarihi { get; set; }
        public string Aciklama { get; set; }
    }
}
