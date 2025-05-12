using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class MuzeGelirleriController : ControllerBase
{
    private readonly MuseumContext _context;

    public MuzeGelirleriController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<MuzeGeliri>>> GetMuzeGelirleri()
    {
        return await _context.MuzeGelirleri.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<MuzeGeliri>> GetMuzeGeliri(int id)
    {
        var gelir = await _context.MuzeGelirleri.FindAsync(id);

        if (gelir == null)
        {
            return NotFound();
        }

        return gelir;
    }

    [HttpPost]
    public async Task<ActionResult<MuzeGeliri>> PostMuzeGeliri(MuzeGeliri gelir)
    {
        _context.MuzeGelirleri.Add(gelir);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetMuzeGeliri), new { id = gelir.ID }, gelir);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutMuzeGeliri(int id, MuzeGeliri gelir)
    {
        if (id != gelir.ID)
        {
            return BadRequest();
        }

        _context.Entry(gelir).State = EntityState.Modified;

        try
        {
            await _context.SaveChangesAsync();
        }
        catch (DbUpdateConcurrencyException)
        {
            if (!_context.MuzeGelirleri.Any(e => e.ID == id))
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
    public async Task<IActionResult> DeleteMuzeGeliri(int id)
    {
        var gelir = await _context.MuzeGelirleri.FindAsync(id);
        if (gelir == null)
        {
            return NotFound();
        }

        _context.MuzeGelirleri.Remove(gelir);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
