using muzeyonetimi.Models;

public class SanatciAkim
{
    public int SanatciID { get; set; }
    public int AkimID { get; set; }

    // Navigation properties (isteğe bağlı)
    public Sanatci Sanatci { get; set; }
    public SanatAkimi SanatAkimi { get; set; }
}
