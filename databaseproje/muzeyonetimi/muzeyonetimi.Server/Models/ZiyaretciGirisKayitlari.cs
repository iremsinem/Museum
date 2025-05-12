namespace muzeyonetimi.Models
{
    public class ZiyaretciGirisKayitlari
    {
        public int ID { get; set; }
        public int ZiyaretciID { get; set; }
        public DateTime GirisTarihi { get; set; }
        public DateTime? CikisTarihi { get; set; }
        public int BiletTuru { get; set; }
        public int? SergiID { get; set; }
        public int? EtkinlikID { get; set; }

        public Ziyaretciler Ziyaretci { get; set; }
        public BiletTurleri BiletTur { get; set; }
        public Sergi Sergi { get; set; }
        public Etkinlik Etkinlik { get; set; }
    }
}
