using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EserSergileriController : ControllerBase
    {
        private readonly MuseumContext _context;

        public EserSergileriController(MuseumContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<EserSergisi>>> GetEserSergileri()
        {
            return await _context.EserSergileri
                .Include(es => es.Eser)
                .Include(es => es.Sergi)
                .ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<EserSergisi>> GetEserSergisi(int id)
        {
            var eserSergisi = await _context.EserSergileri
                .Include(es => es.Eser)
                .Include(es => es.Sergi)
                .FirstOrDefaultAsync(es => es.ID == id);

            if (eserSergisi == null)
                return NotFound();

            return eserSergisi;
        }

        [HttpPost]
        public async Task<ActionResult<EserSergisi>> PostEserSergisi(EserSergisi eserSergisi)
        {
            _context.EserSergileri.Add(eserSergisi);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetEserSergisi), new { id = eserSergisi.ID }, eserSergisi);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutEserSergisi(int id, EserSergisi eserSergisi)
        {
            if (id != eserSergisi.ID)
                return BadRequest();

            _context.Entry(eserSergisi).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.EserSergileri.Any(es => es.ID == id))
                    return NotFound();
                else
                    throw;
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEserSergisi(int id)
        {
            var eserSergisi = await _context.EserSergileri.FindAsync(id);
            if (eserSergisi == null)
                return NotFound();

            _context.EserSergileri.Remove(eserSergisi);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
