using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class EserBakimKayitlariController : ControllerBase
{
    private readonly MuseumContext _context;

    public EserBakimKayitlariController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<EserBakimKaydi>>> GetEserBakimKayitlari()
    {
        return await _context.EserBakimKayitlari.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<EserBakimKaydi>> GetEserBakimKaydi(int id)
    {
        var kayit = await _context.EserBakimKayitlari.FindAsync(id);

        if (kayit == null)
        {
            return NotFound();
        }

        return kayit;
    }

    [HttpPost]
    public async Task<ActionResult<EserBakimKaydi>> PostEserBakimKaydi(EserBakimKaydi kayit)
    {
        _context.EserBakimKayitlari.Add(kayit);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetEserBakimKaydi), new { id = kayit.ID }, kayit);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutEserBakimKaydi(int id, EserBakimKaydi kayit)
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
            if (!_context.EserBakimKayitlari.Any(e => e.ID == id))
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
    public async Task<IActionResult> DeleteEserBakimKaydi(int id)
    {
        var kayit = await _context.EserBakimKayitlari.FindAsync(id);
        if (kayit == null)
        {
            return NotFound();
        }

        _context.EserBakimKayitlari.Remove(kayit);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
