using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SanatcilarController : ControllerBase
    {
        private readonly MuseumContext _context;

        public SanatcilarController(MuseumContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Sanatci>>> GetSanatcilar()
        {
            return await _context.Sanatcilar.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Sanatci>> GetSanatci(int id)
        {
            var sanatci = await _context.Sanatcilar.FindAsync(id);
            if (sanatci == null)
                return NotFound();

            return sanatci;
        }

        [HttpPost]
        public async Task<ActionResult<Sanatci>> PostSanatci(Sanatci sanatci)
        {
            _context.Sanatcilar.Add(sanatci);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetSanatci), new { id = sanatci.ID }, sanatci);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutSanatci(int id, Sanatci sanatci)
        {
            if (id != sanatci.ID)
                return BadRequest();

            _context.Entry(sanatci).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Sanatcilar.Any(e => e.ID == id))
                    return NotFound();
                else
                    throw;
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteSanatci(int id)
        {
            var sanatci = await _context.Sanatcilar.FindAsync(id);
            if (sanatci == null)
                return NotFound();

            _context.Sanatcilar.Remove(sanatci);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
