using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EserTransferleriController : ControllerBase
    {
        private readonly MuseumContext _context;

        public EserTransferleriController(MuseumContext context)
        {
            _context = context;
        }

        // GET: api/EserTransferleri
        [HttpGet]
        public async Task<ActionResult<IEnumerable<EserTransferleri>>> GetEserTransferleri()
        {
            return await _context.EserTransferleri.Include(et => et.Eser).ToListAsync();
        }

        // GET: api/EserTransferleri/5
        [HttpGet("{id}")]
        public async Task<ActionResult<EserTransferleri>> GetEserTransferleri(int id)
        {
            var eserTransfer = await _context.EserTransferleri.Include(et => et.Eser).FirstOrDefaultAsync(et => et.ID == id);

            if (eserTransfer == null)
            {
                return NotFound();
            }

            return eserTransfer;
        }

        // POST: api/EserTransferleri
        [HttpPost]
        public async Task<ActionResult<EserTransferleri>> PostEserTransferleri(EserTransferleri eserTransfer)
        {
            _context.EserTransferleri.Add(eserTransfer);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetEserTransferleri), new { id = eserTransfer.ID }, eserTransfer);
        }

        // PUT: api/EserTransferleri/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEserTransferleri(int id, EserTransferleri eserTransfer)
        {
            if (id != eserTransfer.ID)
            {
                return BadRequest();
            }

            _context.Entry(eserTransfer).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.EserTransferleri.Any(e => e.ID == id))
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

        // DELETE: api/EserTransferleri/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEserTransferleri(int id)
        {
            var eserTransfer = await _context.EserTransferleri.FindAsync(id);
            if (eserTransfer == null)
            {
                return NotFound();
            }

            _context.EserTransferleri.Remove(eserTransfer);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
