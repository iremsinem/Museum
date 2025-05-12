using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;  // MuseumContext'in bulunduðu namespace
using muzeyonetimi.Models; // Modellerin bulunduðu namespace

var builder = WebApplication.CreateBuilder(args);

// Veritabaný baðlantýsý: appsettings.json'dan baðlantý dizesini alýyoruz
builder.Services.AddDbContext<MuseumContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// CORS: React uygulamasýna izin ver
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowReactApp",
        builder => builder
            .WithOrigins("https://localhost:3000") // React burada çalýþýyorsa
            .AllowAnyHeader()
            .AllowAnyMethod());
});

builder.Services.AddControllers();  // API denetleyicilerini ekliyoruz

builder.Services.AddEndpointsApiExplorer(); // API keþif için
builder.Services.AddSwaggerGen(); // Swagger'ý ekliyoruz

var app = builder.Build();

// Swagger yalnýzca geliþtirme ortamýnda aktif olsun
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("AllowReactApp");  // CORS politikasýný aktif ediyoruz

app.UseHttpsRedirection();  // HTTPS yönlendirmelerini aktifleþtiriyoruz
app.UseStaticFiles(); // Statik dosyalarý (resimler, js, css) sunmak için
app.UseRouting(); // Yönlendirme iþlemlerini baþlatýyoruz

app.UseAuthorization();  // Yetkilendirme iþlemi için

// Controller'larý (API'leri) yönlendirme
app.MapControllers();

// React uygulamasý için fallback (eðer baþka bir route bulunamazsa, /index.html'e yönlendir)
app.MapFallbackToFile("/index.html");

app.Run();  // Uygulamanýn çalýþmaya baþlamasýný saðlýyoruz
