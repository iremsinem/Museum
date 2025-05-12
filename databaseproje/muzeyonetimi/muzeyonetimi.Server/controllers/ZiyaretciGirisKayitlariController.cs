using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ZiyaretciGirisKayitlariController : ControllerBase
    {
        private readonly MuseumContext _context;

        public ZiyaretciGirisKayitlariController(MuseumContext context)
        {
            _context = context;
        }

        // GET: api/ZiyaretciGirisKayitlari
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ZiyaretciGirisKayitlari>>> GetZiyaretciGirisKayitlari()
        {
            return await _context.ZiyaretciGirisKayitlari
                                 .Include(z => z.Ziyaretci)
                                 .Include(z => z.BiletTur)
                                 .Include(z => z.Sergi)
                                 .Include(z => z.Etkinlik)
                                 .ToListAsync();
        }

        // GET: api/ZiyaretciGirisKayitlari/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ZiyaretciGirisKayitlari>> GetZiyaretciGirisKayitlari(int id)
        {
            var ziyaretciGirisKayitlari = await _context.ZiyaretciGirisKayitlari
                                                        .Include(z => z.Ziyaretci)
                                                        .Include(z => z.BiletTur)
                                                        .Include(z => z.Sergi)
                                                        .Include(z => z.Etkinlik)
                                                        .FirstOrDefaultAsync(z => z.ID == id);

            if (ziyaretciGirisKayitlari == null)
            {
                return NotFound();
            }

            return ziyaretciGirisKayitlari;
        }

        // POST: api/ZiyaretciGirisKayitlari
        [HttpPost]
        public async Task<ActionResult<ZiyaretciGirisKayitlari>> PostZiyaretciGirisKayitlari(ZiyaretciGirisKayitlari ziyaretciGirisKayitlari)
        {
            _context.ZiyaretciGirisKayitlari.Add(ziyaretciGirisKayitlari);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetZiyaretciGirisKayitlari), new { id = ziyaretciGirisKayitlari.ID }, ziyaretciGirisKayitlari);
        }

        // PUT: api/ZiyaretciGirisKayitlari/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutZiyaretciGirisKayitlari(int id, ZiyaretciGirisKayitlari ziyaretciGirisKayitlari)
        {
            if (id != ziyaretciGirisKayitlari.ID)
            {
                return BadRequest();
            }

            _context.Entry(ziyaretciGirisKayitlari).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.ZiyaretciGirisKayitlari.Any(e => e.ID == id))
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

        // DELETE: api/ZiyaretciGirisKayitlari/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteZiyaretciGirisKayitlari(int id)
        {
            var ziyaretciGirisKayitlari = await _context.ZiyaretciGirisKayitlari.FindAsync(id);
            if (ziyaretciGirisKayitlari == null)
            {
                return NotFound();
            }

            _context.ZiyaretciGirisKayitlari.Remove(ziyaretciGirisKayitlari);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
