using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace MuzeyYonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EtkinliklerController : ControllerBase
    {
        private readonly MuseumContext _context;

        public EtkinliklerController(MuseumContext context)
        {
            _context = context;
        }

        // GET: api/Etkinlikler
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Etkinlik>>> GetEtkinlikler()
        {
            return await _context.Etkinlikler.ToListAsync();
        }

        // GET: api/Etkinlikler/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Etkinlik>> GetEtkinlik(int id)
        {
            var etkinlik = await _context.Etkinlikler.FindAsync(id);

            if (etkinlik == null)
            {
                return NotFound();
            }

            return etkinlik;
        }

        // POST: api/Etkinlikler
        [HttpPost]
        public async Task<ActionResult<Etkinlik>> PostEtkinlik(Etkinlik etkinlik)
        {
            _context.Etkinlikler.Add(etkinlik);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetEtkinlik", new { id = etkinlik.ID }, etkinlik);
        }

        // PUT: api/Etkinlikler/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEtkinlik(int id, Etkinlik etkinlik)
        {
            if (id != etkinlik.ID)
            {
                return BadRequest();
            }

            _context.Entry(etkinlik).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EtkinlikExists(id))
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

        // DELETE: api/Etkinlikler/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEtkinlik(int id)
        {
            var etkinlik = await _context.Etkinlikler.FindAsync(id);
            if (etkinlik == null)
            {
                return NotFound();
            }

            _context.Etkinlikler.Remove(etkinlik);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool EtkinlikExists(int id)
        {
            return _context.Etkinlikler.Any(e => e.ID == id);
        }
    }
}
