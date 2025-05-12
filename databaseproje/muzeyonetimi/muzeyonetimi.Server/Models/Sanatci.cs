namespace muzeyonetimi.Models
{
    public class Sanatci
    {
        public int ID { get; set; }
        public string Ad { get; set; }
        public DateTime DogumTarihi { get; set; }
        public DateTime? OlumTarihi { get; set; }
        public string Ulke { get; set; }
        public string Biyografi { get; set; }
    }
}
