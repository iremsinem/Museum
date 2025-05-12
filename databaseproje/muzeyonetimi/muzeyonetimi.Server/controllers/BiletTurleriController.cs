using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BiletTurleriController : ControllerBase
    {
        private readonly MuseumContext _context;

        public BiletTurleriController(MuseumContext context)
        {
            _context = context;
        }

        // GET: api/BiletTurleri
        [HttpGet]
        public async Task<ActionResult<IEnumerable<BiletTurleri>>> GetBiletTurleri()
        {
            return await _context.BiletTurleri.ToListAsync();
        }

        // GET: api/BiletTurleri/5
        [HttpGet("{id}")]
        public async Task<ActionResult<BiletTurleri>> GetBiletTuru(int id)
        {
            var biletTuru = await _context.BiletTurleri.FindAsync(id);

            if (biletTuru == null)
            {
                return NotFound();
            }

            return biletTuru;
        }

        // POST: api/BiletTurleri
        [HttpPost]
        public async Task<ActionResult<BiletTurleri>> PostBiletTuru(BiletTurleri biletTuru)
        {
            _context.BiletTurleri.Add(biletTuru);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetBiletTuru), new { id = biletTuru.ID }, biletTuru);
        }

        // PUT: api/BiletTurleri/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutBiletTuru(int id, BiletTurleri biletTuru)
        {
            if (id != biletTuru.ID)
            {
                return BadRequest();
            }

            _context.Entry(biletTuru).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.BiletTurleri.Any(e => e.ID == id))
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

        // DELETE: api/BiletTurleri/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteBiletTuru(int id)
        {
            var biletTuru = await _context.BiletTurleri.FindAsync(id);
            if (biletTuru == null)
            {
                return NotFound();
            }

            _context.BiletTurleri.Remove(biletTuru);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
