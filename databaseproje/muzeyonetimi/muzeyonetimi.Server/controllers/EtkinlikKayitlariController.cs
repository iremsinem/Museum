using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class EtkinlikKayitlariController : ControllerBase
{
    private readonly MuseumContext _context;

    public EtkinlikKayitlariController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<EtkinlikKaydi>>> GetEtkinlikKayitlari()
    {
        return await _context.EtkinlikKayitlari.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<EtkinlikKaydi>> GetEtkinlikKaydi(int id)
    {
        var kayit = await _context.EtkinlikKayitlari.FindAsync(id);

        if (kayit == null)
        {
            return NotFound();
        }

        return kayit;
    }

    [HttpPost]
    public async Task<ActionResult<EtkinlikKaydi>> PostEtkinlikKaydi(EtkinlikKaydi kayit)
    {
        _context.EtkinlikKayitlari.Add(kayit);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetEtkinlikKaydi), new { id = kayit.ID }, kayit);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutEtkinlikKaydi(int id, EtkinlikKaydi kayit)
    {
        if (id != kayit.ID)
        {
            return BadRequest();
        }

        _context.Entry(kayit).State = EntityState.Modified;

        try
        {
            await _context.SaveChangesAsync();
        }
        catch (DbUpdateConcurrencyException)
        {
            if (!_context.EtkinlikKayitlari.Any(e => e.ID == id))
            {
                return NotFound();
            }
            else
            {
                throw;
            }
        }

        return NoContent();
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteEtkinlikKaydi(int id)
    {
        var kayit = await _context.EtkinlikKayitlari.FindAsync(id);
        if (kayit == null)
        {
            return NotFound();
        }

        _context.EtkinlikKayitlari.Remove(kayit);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
