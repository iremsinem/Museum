using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;
using muzeyonetimi.Models;

namespace muzeyonetimi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonelController : ControllerBase
    {
        private readonly MuseumContext _context;

        public PersonelController(MuseumContext context)
        {
            _context = context;
        }

        // GET: api/Personel
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Personel>>> GetPersonel()
        {
            return await _context.Personel.ToListAsync();
        }

        // GET: api/Personel/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Personel>> GetPersonel(int id)
        {
            var personel = await _context.Personel.FindAsync(id);

            if (personel == null)
            {
                return NotFound();
            }

            return personel;
        }

        // POST: api/Personel
        [HttpPost]
        public async Task<ActionResult<Personel>> PostPersonel(Personel personel)
        {
            _context.Personel.Add(personel);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetPersonel), new { id = personel.ID }, personel);
        }

        // PUT: api/Personel/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPersonel(int id, Personel personel)
        {
            if (id != personel.ID)
            {
                return BadRequest();
            }

            _context.Entry(personel).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Personel.Any(e => e.ID == id))
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

        // DELETE: api/Personel/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePersonel(int id)
        {
            var personel = await _context.Personel.FindAsync(id);
            if (personel == null)
            {
                return NotFound();
            }

            _context.Personel.Remove(personel);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}
