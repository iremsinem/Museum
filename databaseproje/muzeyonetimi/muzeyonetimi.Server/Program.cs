using Microsoft.EntityFrameworkCore;
using muzeyonetimi.Data;  // MuseumContext'in bulundu�u namespace
using muzeyonetimi.Models; // Modellerin bulundu�u namespace

var builder = WebApplication.CreateBuilder(args);

// Veritaban� ba�lant�s�: appsettings.json'dan ba�lant� dizesini al�yoruz
builder.Services.AddDbContext<MuseumContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// CORS: React uygulamas�na izin ver
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowReactApp",
        builder => builder
            .WithOrigins("https://localhost:3000") // React burada �al���yorsa
            .AllowAnyHeader()
            .AllowAnyMethod());
});

builder.Services.AddControllers();  // API denetleyicilerini ekliyoruz

builder.Services.AddEndpointsApiExplorer(); // API ke�if i�in
builder.Services.AddSwaggerGen(); // Swagger'� ekliyoruz

var app = builder.Build();

// Swagger yaln�zca geli�tirme ortam�nda aktif olsun
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("AllowReactApp");  // CORS politikas�n� aktif ediyoruz

app.UseHttpsRedirection();  // HTTPS y�nlendirmelerini aktifle�tiriyoruz
app.UseStaticFiles(); // Statik dosyalar� (resimler, js, css) sunmak i�in
app.UseRouting(); // Y�nlendirme i�lemlerini ba�lat�yoruz

app.UseAuthorization();  // Yetkilendirme i�lemi i�in

// Controller'lar� (API'leri) y�nlendirme
app.MapControllers();

// React uygulamas� i�in fallback (e�er ba�ka bir route bulunamazsa, /index.html'e y�nlendir)
app.MapFallbackToFile("/index.html");

app.Run();  // Uygulaman�n �al��maya ba�lamas�n� sa�l�yoruz
