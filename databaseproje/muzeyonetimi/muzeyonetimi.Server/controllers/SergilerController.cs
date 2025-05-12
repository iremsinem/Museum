using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SergilerController : ControllerBase
    {
        private readonly MuseumContext _context;

        public SergilerController(MuseumContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Sergi>>> GetSergiler()
        {
            return await _context.Sergiler.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Sergi>> GetSergi(int id)
        {
            var sergi = await _context.Sergiler.FindAsync(id);

            if (sergi == null)
                return NotFound();

            return sergi;
        }

        [HttpPost]
        public async Task<ActionResult<Sergi>> PostSergi(Sergi sergi)
        {
            _context.Sergiler.Add(sergi);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetSergi), new { id = sergi.ID }, sergi);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutSergi(int id, Sergi sergi)
        {
            if (id != sergi.ID)
                return BadRequest();

            _context.Entry(sergi).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Sergiler.Any(s => s.ID == id))
                    return NotFound();
                else
                    throw;
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteSergi(int id)
        {
            var sergi = await _context.Sergiler.FindAsync(id);
            if (sergi == null)
                return NotFound();

            _context.Sergiler.Remove(sergi);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
