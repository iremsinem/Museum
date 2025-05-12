using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;

[Route("api/[controller]")]
[ApiController]
public class AdminlerController : ControllerBase
{
    private readonly MuseumContext _context;

    public AdminlerController(MuseumContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<Admin>>> GetAdminler()
    {
        return await _context.Adminler.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Admin>> GetAdmin(int id)
    {
        var admin = await _context.Adminler.FindAsync(id);

        if (admin == null)
        {
            return NotFound();
        }

        return admin;
    }

    [HttpPost]
    public async Task<ActionResult<Admin>> PostAdmin(Admin admin)
    {
        // SifreHash burada þifreleme algoritmasýyla hash'lenmeli
        _context.Adminler.Add(admin);
        await _context.SaveChangesAsync();

        return CreatedAtAction(nameof(GetAdmin), new { id = admin.ID }, admin);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> PutAdmin(int id, Admin admin)
    {
        if (id != admin.ID)
        {
            return BadRequest();
        }

        _context.Entry(admin).State = EntityState.Modified;

        try
        {
            await _context.SaveChangesAsync();
        }
        catch (DbUpdateConcurrencyException)
        {
            if (!_context.Adminler.Any(e => e.ID == id))
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
    public async Task<IActionResult> DeleteAdmin(int id)
    {
        var admin = await _context.Adminler.FindAsync(id);
        if (admin == null)
        {
            return NotFound();
        }

        _context.Adminler.Remove(admin);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
