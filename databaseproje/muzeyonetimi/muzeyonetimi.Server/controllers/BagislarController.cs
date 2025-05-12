using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class BagislarController : ControllerBase
{
    private readonly MuseumContext _context;

    public BagislarController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<Bagis>>> GetBagislar()
    {
        return await _context.Bagislar.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Bagis>> GetBagis(int id)
    {
        var bagis = await _context.Bagislar.FindAsync(id);

        if (bagis == null)
        {
            return NotFound();
        }

        return bagis;
    }

    [HttpPost]
    public async Task<ActionResult<Bagis>> PostBagis(Bagis bagis)
    {
        _context.Bagislar.Add(bagis);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetBagis), new { id = bagis.ID }, bagis);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutBagis(int id, Bagis bagis)
    {
        if (id != bagis.ID)
        {
            return BadRequest();
        }

        _context.Entry(bagis).State = EntityState.Modified;

        try
        {
            await _context.SaveChangesAsync();
        }
        catch (DbUpdateConcurrencyException)
        {
            if (!_context.Bagislar.Any(e => e.ID == id))
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
    public async Task<IActionResult> DeleteBagis(int id)
    {
        var bagis = await _context.Bagislar.FindAsync(id);
        if (bagis == null)
        {
            return NotFound();
        }

        _context.Bagislar.Remove(bagis);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
