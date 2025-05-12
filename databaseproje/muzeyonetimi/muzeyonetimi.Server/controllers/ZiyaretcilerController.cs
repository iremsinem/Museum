using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ZiyaretcilerController : ControllerBase
    {
        private readonly MuseumContext _context;

        public ZiyaretcilerController(MuseumContext context)
        {
            _context = context;
        }

        // GET: api/Ziyaretciler
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Ziyaretciler>>> GetZiyaretciler()
        {
            return await _context.Ziyaretciler.ToListAsync();
        }

        // GET: api/Ziyaretciler/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Ziyaretciler>> GetZiyaretci(int id)
        {
            var ziyaretci = await _context.Ziyaretciler.FindAsync(id);

            if (ziyaretci == null)
            {
                return NotFound();
            }

            return ziyaretci;
        }

        // POST: api/Ziyaretciler
        [HttpPost]
        public async Task<ActionResult<Ziyaretciler>> PostZiyaretci(Ziyaretciler ziyaretci)
        {
            _context.Ziyaretciler.Add(ziyaretci);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetZiyaretci), new { id = ziyaretci.ID }, ziyaretci);
        }

        // PUT: api/Ziyaretciler/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutZiyaretci(int id, Ziyaretciler ziyaretci)
        {
            if (id != ziyaretci.ID)
            {
                return BadRequest();
            }

            _context.Entry(ziyaretci).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Ziyaretciler.Any(e => e.ID == id))
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

        // DELETE: api/Ziyaretciler/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteZiyaretci(int id)
        {
            var ziyaretci = await _context.Ziyaretciler.FindAsync(id);
            if (ziyaretci == null)
            {
                return NotFound();
            }

            _context.Ziyaretciler.Remove(ziyaretci);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
