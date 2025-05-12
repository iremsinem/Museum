--views

--Eserler, sanatçý ve tür bilgilerini birleþtirir.
CREATE VIEW vw_EserDetaylari AS
SELECT 
    e.ID AS EserID,
    e.Ad AS EserAdi,
    s.Ad AS SanatciAdi,
    t.Ad AS EserTuru,
    e.YapimYili,
    e.BulunduguMuze,
    e.MevcutDurum
FROM Eserler e
INNER JOIN Sanatcilar s ON e.Sanatci_ID = s.ID
INNER JOIN EserTurleri t ON e.Tur_ID = t.ID;

SELECT * FROM vw_EserDetaylari;


--Sadece þu anda aktif olan sergileri listeler.
CREATE VIEW vw_AktifSergiler AS
SELECT 
    ID,
    Ad,
    Konum,
    BaslangicTarihi,
    BitisTarihi
FROM Sergiler
WHERE GETDATE() BETWEEN BaslangicTarihi AND BitisTarihi;

SELECT * FROM vw_AktifSergiler;


--Ziyaretçilerin katýldýðý etkinlikleri gösterir.   BUNA BAK
CREATE VIEW vw_ZiyaretciEtkinlikKayitlari AS
SELECT 
    z.Ad + ' ' + z.Soyad AS ZiyaretciAdSoyad,
    e.Ad AS EtkinlikAdi,
    ek.KayitTarihi
FROM ZiyaretciGirisKayitlari ek
INNER JOIN Ziyaretciler z ON ek.ZiyaretciID = z.ID
INNER JOIN Etkinlikler e ON ek.EtkinlikID = e.ID;

SELECT * FROM vw_ZiyaretciEtkinlikKayitlari;


--Müze gelir ve giderlerini özetler.    BUNA BAK
CREATE VIEW vw_GelirGiderOzet AS
SELECT 'Gelir' AS Tip, SUM(Tutar) AS ToplamTutar FROM MuzeGelirleri
UNION
SELECT 'Gider' AS Tip, SUM(Tutar) FROM MuzeGiderleri;

SELECT * FROM vw_GelirGiderOzet;


--Her eserin bakým geçmiþini listeler.  VERÝ GELMÝYO
CREATE VIEW vw_EserBakimGecmisi AS
SELECT 
    e.Ad AS EserAdi,
    b.BakimTarihi,
    b.YapilanIslem,
    p.Ad + ' ' + p.Soyad AS SorumluPersonel
FROM EserBakimKayitlari b
INNER JOIN Eserler e ON b.EserID = e.ID
INNER JOIN Personel p ON b.SorumluKisi = p.ID;

SELECT * FROM vw_EserBakimGecmisi;




--Sanatçýlarýn dahil olduðu sanat akýmlarýný listeler.  VERÝ YOK
CREATE VIEW vw_SanatcilarVeAkimlari AS
SELECT 
    s.Ad AS SanatciAdi,
    a.Ad AS AkimAdi
FROM SanatciAkim sa
INNER JOIN Sanatcilar s ON sa.SanatciID = s.ID
INNER JOIN SanatAkimlari a ON sa.AkimID = a.ID;

SELECT * FROM vw_SanatcilarVeAkimlari;

--Yalnýzca üyelikli ziyaretçileri listeler.
CREATE VIEW vw_UyelikliZiyaretciler AS
SELECT 
    Ad,
    Soyad,
	DogumTarihi,
    Email
FROM Ziyaretciler
WHERE UyelikDurumu = 1;


--Tüm eser transfer geçmiþini özetler.
CREATE VIEW vw_EserTransferKayitlari AS
SELECT 
    e.Ad AS EserAdi,
    t.KaynakMuze,
    t.HedefMuze,
    t.Tarih,
    t.TransferDurumu
FROM EserTransferleri t
INNER JOIN Eserler e ON t.EserID = e.ID;


SELECT * FROM vw_EserTransferKayitlari;


--Ziyaretçi giriþ-çýkýþ bilgilerini sergi ve etkinlik ile birlikte gösterir.
CREATE VIEW vw_ZiyaretciGirisRaporu AS
SELECT 
    z.Ad + ' ' + z.Soyad AS Ziyaretci,
    g.GirisTarihi,
    g.CikisTarihi,
    s.Ad AS Sergi,
    e.Ad AS Etkinlik
FROM ZiyaretciGirisKayitlari g
INNER JOIN Ziyaretciler z ON g.ZiyaretciID = z.ID
LEFT JOIN Sergiler s ON g.SergiID = s.ID
LEFT JOIN Etkinlikler e ON g.EtkinlikID = e.ID;


--En çok katýlým alan etkinlikleri gösterir.
CREATE VIEW vw_PopulerEtkinlikler AS
SELECT 
    e.Ad AS EtkinlikAdi,
    COUNT(ek.ID) AS KatilimSayisi
FROM EtkinlikKayitlari ek
INNER JOIN Etkinlikler e ON ek.EtkinlikID = e.ID
GROUP BY e.Ad
ORDER BY KatilimSayisi DESC;


CREATE VIEW vw_MuzeGiderOzet AS
SELECT 
    YEAR(Tarih) AS Yil,
    MONTH(Tarih) AS Ay,
    COUNT(*) AS GiderSayisi,
    SUM(Tutar) AS ToplamGider,
    STRING_AGG(Aciklama, '; ') AS GiderAciklamalari
FROM MuzeGiderleri
WHERE Tarih IS NOT NULL
GROUP BY YEAR(Tarih), MONTH(Tarih);

USE MuzeGiderleri;
GO










--Her Eserin Kaç Sergide Yer Aldýðý
CREATE VIEW EserSergiSayilari AS
SELECT E.ID AS EserID, E.Ad AS EserAdi, COUNT(ES.ID) AS SergiSayisi
FROM Eserler E
LEFT JOIN EserSergileri ES ON E.ID = ES.EserID
GROUP BY E.ID, E.Ad;

--Son 1 Yýlda Yapýlan Bakýmlar (buna tekrar bak)
CREATE VIEW SonBakimlar AS
SELECT EB.ID, E.Ad AS EserAdi, EB.BakimTarihi, EB.YapilanIslem, P.Ad + ' ' + P.Soyad AS Sorumlu
FROM EserBakimKayitlari EB
JOIN Eserler E ON EB.EserID = E.ID
JOIN Personel P ON EB.SorumluKisi = P.ID
WHERE EB.BakimTarihi >= DATEADD(YEAR, -1, GETDATE());

--Eser Transfer Kayýtlarý
CREATE VIEW TumTransferler AS
SELECT T.ID, E.Ad AS EserAdi, T.KaynakMuze, T.HedefMuze, T.Tarih, T.TransferDurumu
FROM EserTransferleri T
JOIN Eserler E ON T.EserID = E.ID;

--Müze Giderleri Özeti
CREATE VIEW GiderOzeti AS
SELECT Aciklama, SUM(Tutar) AS ToplamTutar
FROM MuzeGiderleri
GROUP BY Aciklama;

--**Ziyaretçi Giriþ Çýkýþ Günlük Log (buna tekrar bak)
CREATE VIEW GunlukZiyaretciLog AS
SELECT Z.Ad + ' ' + Z.Soyad AS ZiyaretciAdi, G.GirisTarihi, G.CikisTarihi, B.Ad AS BiletTuru
FROM ZiyaretciGirisKayitlari G
JOIN Ziyaretciler Z ON G.ZiyaretciID = Z.ID
JOIN BiletTurleri B ON G.BiletTuru = B.ID;

--Aktif sergilenen eserler (buna tekrar bak)
CREATE VIEW AktifSergilenenEserler AS 
SELECT e.Ad, s.Ad AS SergiAdý, es.BaslangicTarihi, es.BitisTarihi
FROM Eserler e
JOIN EserSergileri es ON e.ID = es.EserID
JOIN Sergiler s ON es.SergiID = s.ID
WHERE GETDATE() BETWEEN es.BaslangicTarihi AND es.BitisTarihi;

--Ziyaretçi bilgileri ve giriþ kayýtlarý (buna tekrar bak)
CREATE VIEW ZiyaretciGirisBilgisi AS
SELECT z.Ad, z.Soyad, z.Email, g.GirisTarihi, g.CikisTarihi, b.Ad AS BiletTuru
FROM Ziyaretciler z
JOIN ZiyaretciGirisKayitlari g ON z.ID = g.ZiyaretciID
JOIN BiletTurleri b ON g.BiletTuru = b.ID;


--Bakým gerektiren eserler (son bakým > 2 yýl) BUNA TEKRAR BAK
CREATE VIEW BakimGerekenEserler AS
SELECT e.Ad, MAX(b.BakimTarihi) AS SonBakimTarihi
FROM Eserler e
JOIN EserBakimKayitlari b ON e.ID = b.EserID
GROUP BY e.Ad
HAVING MAX(b.BakimTarihi) < DATEADD(YEAR, -2, GETDATE());


--Son etkinlik kayýtlarý
CREATE VIEW SonEtkinlikKayitlari AS
SELECT z.Ad + ' ' + z.Soyad AS ZiyaretciAdi, e.Ad AS EtkinlikAdi, k.KayitTarihi
FROM EtkinlikKayitlari k
JOIN Ziyaretciler z ON k.ZiyaretciID = z.ID
JOIN Etkinlikler e ON k.EtkinlikID = e.ID
WHERE k.KayitTarihi > DATEADD(MONTH, -1, GETDATE());


--Müze gelir raporu
CREATE VIEW AylikGelirRaporu AS
SELECT FORMAT(Tarih, 'yyyy-MM') AS Ay, SUM(Tutar) AS ToplamGelir
FROM MuzeGelirleri
GROUP BY FORMAT(Tarih, 'yyyy-MM');


--Baðýþçý detaylarý
CREATE VIEW BagisciDetaylari AS
SELECT b.Ad + ' ' + b.Soyad AS BagisciAdi, d.Miktar, d.BagisTarihi, d.KullanimAlani
FROM Bagiscilar b
JOIN Bagislar d ON b.ID = d.BagisciID;


--Personel maaþ listesi
CREATE VIEW PersonelMaasListesi AS
SELECT Ad + ' ' + Soyad AS AdSoyad, Gorev, Maas
FROM Personel;


--Sergideki eser sayýsý
CREATE VIEW SergiEserSayisi AS
SELECT s.Ad, COUNT(es.EserID) AS EserSayisi
FROM Sergiler s
JOIN EserSergileri es ON s.ID = es.SergiID
GROUP BY s.Ad;