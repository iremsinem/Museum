using muzeyonetimi.Models;

public class SanatciAkim
{
    public int SanatciID { get; set; }
    public int AkimID { get; set; }

    // Navigation properties (iste�e ba�l�)
    public Sanatci Sanatci { get; set; }
    public SanatAkimi SanatAkimi { get; set; }
}
