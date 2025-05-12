using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Models; // Modellerin bulunduðu namespace

namespace muzeyonetimi.Data
{
    public class MuseumContext : DbContext
    {
        public MuseumContext(DbContextOptions<MuseumContext> options) : base(options)
        {
        }
   
        public DbSet<EserTuru> EserTurleri { get; set; }
        public DbSet<Sanatci> Sanatcilar { get; set; }
        public DbSet<Eser> Eserler { get; set; }
        public DbSet<Sergi> Sergiler { get; set; }
        public DbSet<EserSergisi> EserSergileri { get; set; }
        public DbSet<Personel> Personel { get; set; }
        public DbSet<EserTransferleri> EserTransferleri { get; set; }
        public DbSet<Ziyaretciler> Ziyaretciler { get; set; }
        public DbSet<BiletTurleri> BiletTurleri { get; set; }
        public DbSet<ZiyaretciGirisKayitlari> ZiyaretciGirisKayitlari { get; set; }
        public DbSet<Etkinlik> Etkinlikler { get; set; }
        public DbSet<EtkinlikTuru> EtkinlikTurleri { get; set; }
        public DbSet<EtkinlikKaydi> EtkinlikKayitlari { get; set; }
        public DbSet<Bagisci> Bagiscilar { get; set; }
        public DbSet<Bagis> Bagislar { get; set; }
        public DbSet<MuzeGeliri> MuzeGelirleri { get; set; }
        public DbSet<EserBakimKaydi> EserBakimKayitlari { get; set; }
        public DbSet<SanatAkimi> SanatAkimlari { get; set; }
        public DbSet<SanatciAkim> SanatciAkimlari { get; set; }
        public DbSet<Admin> Adminler { get; set; }

    }
}
