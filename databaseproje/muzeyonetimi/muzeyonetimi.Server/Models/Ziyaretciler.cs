namespace muzeyonetimi.Models
{
    public class Ziyaretciler
    {
        public int ID { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public DateTime DogumTarihi { get; set; }
        public string Email { get; set; }
        public bool UyelikDurumu { get; set; }
    }
}
