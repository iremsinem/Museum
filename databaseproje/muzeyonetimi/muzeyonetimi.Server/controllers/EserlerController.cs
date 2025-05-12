using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EserlerController : ControllerBase
    {
        private readonly MuseumContext _context;

        public EserlerController(MuseumContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Eser>>> GetEserler()
        {
            return await _context.Eserler.Include(e => e.EserTuru).Include(e => e.Sanatci).ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Eser>> GetEser(int id)
        {
            var eser = await _context.Eserler
                                      .Include(e => e.EserTuru)
                                      .Include(e => e.Sanatci)
                                      .FirstOrDefaultAsync(e => e.ID == id);

            if (eser == null)
                return NotFound();

            return eser;
        }

        [HttpPost]
        public async Task<ActionResult<Eser>> PostEser(Eser eser)
        {
            _context.Eserler.Add(eser);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetEser), new { id = eser.ID }, eser);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutEser(int id, Eser eser)
        {
            if (id != eser.ID)
                return BadRequest();

            _context.Entry(eser).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Eserler.Any(e => e.ID == id))
                    return NotFound();
                else
                    throw;
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEser(int id)
        {
            var eser = await _context.Eserler.FindAsync(id);
            if (eser == null)
                return NotFound();

            _context.Eserler.Remove(eser);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
