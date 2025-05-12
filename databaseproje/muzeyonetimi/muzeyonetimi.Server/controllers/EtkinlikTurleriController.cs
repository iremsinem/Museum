using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using System;

[Route("api/[controller]")]
[ApiController]
public class EtkinlikTurleriController : ControllerBase
{
    private readonly MuseumContext _context;

    public EtkinlikTurleriController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<EtkinlikTuru>>> GetEtkinlikTurleri()
    {
        return await _context.EtkinlikTurleri.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<EtkinlikTuru>> GetEtkinlikTuru(int id)
    {
        var etkinlikTuru = await _context.EtkinlikTurleri.FindAsync(id);

        if (etkinlikTuru == null)
        {
            return NotFound();
        }

        return etkinlikTuru;
    }

    [HttpPost]
    public async Task<ActionResult<EtkinlikTuru>> PostEtkinlikTuru(EtkinlikTuru etkinlikTuru)
    {
        _context.EtkinlikTurleri.Add(etkinlikTuru);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetEtkinlikTuru), new { id = etkinlikTuru.ID }, etkinlikTuru);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutEtkinlikTuru(int id, EtkinlikTuru etkinlikTuru)
    {
        if (id != etkinlikTuru.ID)
        {
            return BadRequest();
        }

        _context.Entry(etkinlikTuru).State = EntityState.Modified;

        try
        {
            await _context.SaveChangesAsync();
        }
        catch (DbUpdateConcurrencyException)
        {
            if (!_context.EtkinlikTurleri.Any(e => e.ID == id))
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
    public async Task<IActionResult> DeleteEtkinlikTuru(int id)
    {
        var etkinlikTuru = await _context.EtkinlikTurleri.FindAsync(id);
        if (etkinlikTuru == null)
        {
            return NotFound();
        }

        _context.EtkinlikTurleri.Remove(etkinlikTuru);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
