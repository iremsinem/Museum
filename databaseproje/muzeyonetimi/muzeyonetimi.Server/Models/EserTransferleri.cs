namespace muzeyonetimi.Models
{
    public class EserTransferleri
    {
        public int ID { get; set; }
        public int EserID { get; set; }
        public string KaynakMuze { get; set; }
        public string HedefMuze { get; set; }
        public DateTime Tarih { get; set; }
        public string TransferDurumu { get; set; }

        // Navigation property
        public Eser Eser { get; set; }
    }
}
