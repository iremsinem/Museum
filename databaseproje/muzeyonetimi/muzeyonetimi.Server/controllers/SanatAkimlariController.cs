using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class SanatAkimlariController : ControllerBase
{
    private readonly MuseumContext _context;

    public SanatAkimlariController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<SanatAkimi>>> GetSanatAkimlari()
    {
        return await _context.SanatAkimlari.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<SanatAkimi>> GetSanatAkimi(int id)
    {
        var akim = await _context.SanatAkimlari.FindAsync(id);

        if (akim == null)
        {
            return NotFound();
        }

        return akim;
    }

    [HttpPost]
    public async Task<ActionResult<SanatAkimi>> PostSanatAkimi(SanatAkimi akim)
    {
        _context.SanatAkimlari.Add(akim);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetSanatAkimi), new { id = akim.ID }, akim);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutSanatAkimi(int id, SanatAkimi akim)
    {
        if (id != akim.ID)
        {
            return BadRequest();
        }

        _context.Entry(akim).State = EntityState.Modified;

        try
        {
            await _context.SaveChangesAsync();
        }
        catch (DbUpdateConcurrencyException)
        {
            if (!_context.SanatAkimlari.Any(e => e.ID == id))
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
    public async Task<IActionResult> DeleteSanatAkimi(int id)
    {
        var akim = await _context.SanatAkimlari.FindAsync(id);
        if (akim == null)
        {
            return NotFound();
        }

        _context.SanatAkimlari.Remove(akim);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
