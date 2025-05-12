using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EserTurleriController : ControllerBase
    {
        private readonly MuseumContext _context;

        public EserTurleriController(MuseumContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<EserTuru>>> GetEserTurleri()
        {
            return await _context.EserTurleri.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<EserTuru>> GetEserTuru(int id)
        {
            var tur = await _context.EserTurleri.FindAsync(id);
            if (tur == null)
                return NotFound();

            return tur;
        }

        [HttpPost]
        public async Task<ActionResult<EserTuru>> PostEserTuru(EserTuru tur)
        {
            _context.EserTurleri.Add(tur);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetEserTuru), new { id = tur.ID }, tur);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutEserTuru(int id, EserTuru tur)
        {
            if (id != tur.ID)
                return BadRequest();

            _context.Entry(tur).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.EserTurleri.Any(e => e.ID == id))
                    return NotFound();
                else
                    throw;
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEserTuru(int id)
        {
            var tur = await _context.EserTurleri.FindAsync(id);
            if (tur == null)
                return NotFound();

            _context.EserTurleri.Remove(tur);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
