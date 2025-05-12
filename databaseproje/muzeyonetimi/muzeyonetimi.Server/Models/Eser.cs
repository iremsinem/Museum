namespace muzeyonetimi.Models
{
    public class Eser
    {
        public int ID { get; set; }
        public string Ad { get; set; }
        public int Tur_ID { get; set; }
        public int Sanatci_ID { get; set; }
        public int YapimYili { get; set; }
        public string BulunduguMuze { get; set; }
        public string MevcutDurum { get; set; }
        public string DijitalKoleksiyonURL { get; set; }

        public EserTuru EserTuru { get; set; }  // Navigation property
        public Sanatci Sanatci { get; set; }  // Navigation property
    }
}
