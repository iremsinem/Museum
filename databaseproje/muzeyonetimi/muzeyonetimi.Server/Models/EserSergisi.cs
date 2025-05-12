namespace muzeyonetimi.Models
{
    public class EserSergisi
    {
        public int ID { get; set; }
        public int EserID { get; set; }
        public int SergiID { get; set; }
        public DateTime BaslangicTarihi { get; set; }
        public DateTime BitisTarihi { get; set; }

        // Navigation Properties
        public Eser Eser { get; set; }
        public Sergi Sergi { get; set; }
    }
}
