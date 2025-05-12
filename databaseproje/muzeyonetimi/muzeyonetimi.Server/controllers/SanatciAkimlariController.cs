using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class SanatciAkimlariController : ControllerBase
{
    private readonly MuseumContext _context;

    public SanatciAkimlariController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<SanatciAkim>>> GetSanatciAkimlari()
    {
        return await _context.SanatciAkimlari.ToListAsync();
    }

    [HttpGet("{sanatciId}/{akimId}")]
    public async Task<ActionResult<SanatciAkim>> GetSanatciAkim(int sanatciId, int akimId)
    {
        var kayit = await _context.SanatciAkimlari
            .FindAsync(sanatciId, akimId);

        if (kayit == null)
        {
            return NotFound();
        }

        return kayit;
    }

    [HttpPost]
    public async Task<ActionResult<SanatciAkim>> PostSanatciAkim(SanatciAkim kayit)
    {
        _context.SanatciAkimlari.Add(kayit);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetSanatciAkim), new { sanatciId = kayit.SanatciID, akimId = kayit.AkimID }, kayit);
    }

    [HttpDelete("{sanatciId}/{akimId}")]
    public async Task<IActionResult> DeleteSanatciAkim(int sanatciId, int akimId)
    {
        var kayit = await _context.SanatciAkimlari.FindAsync(sanatciId, akimId);
        if (kayit == null)
        {
            return NotFound();
        }

        _context.SanatciAkimlari.Remove(kayit);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
