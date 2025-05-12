--views

--Eserler, sanat�� ve t�r bilgilerini birle�tirir.
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


--Sadece �u anda aktif olan sergileri listeler.
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


--Ziyaret�ilerin kat�ld��� etkinlikleri g�sterir.   BUNA BAK
CREATE VIEW vw_ZiyaretciEtkinlikKayitlari AS
SELECT 
    z.Ad + ' ' + z.Soyad AS ZiyaretciAdSoyad,
    e.Ad AS EtkinlikAdi,
    ek.KayitTarihi
FROM ZiyaretciGirisKayitlari ek
INNER JOIN Ziyaretciler z ON ek.ZiyaretciID = z.ID
INNER JOIN Etkinlikler e ON ek.EtkinlikID = e.ID;

SELECT * FROM vw_ZiyaretciEtkinlikKayitlari;


--M�ze gelir ve giderlerini �zetler.    BUNA BAK
CREATE VIEW vw_GelirGiderOzet AS
SELECT 'Gelir' AS Tip, SUM(Tutar) AS ToplamTutar FROM MuzeGelirleri
UNION
SELECT 'Gider' AS Tip, SUM(Tutar) FROM MuzeGiderleri;

SELECT * FROM vw_GelirGiderOzet;


--Her eserin bak�m ge�mi�ini listeler.  VER� GELM�YO
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




--Sanat��lar�n dahil oldu�u sanat ak�mlar�n� listeler.  VER� YOK
CREATE VIEW vw_SanatcilarVeAkimlari AS
SELECT 
    s.Ad AS SanatciAdi,
    a.Ad AS AkimAdi
FROM SanatciAkim sa
INNER JOIN Sanatcilar s ON sa.SanatciID = s.ID
INNER JOIN SanatAkimlari a ON sa.AkimID = a.ID;

SELECT * FROM vw_SanatcilarVeAkimlari;

--Yaln�zca �yelikli ziyaret�ileri listeler.
CREATE VIEW vw_UyelikliZiyaretciler AS
SELECT 
    Ad,
    Soyad,
	DogumTarihi,
    Email
FROM Ziyaretciler
WHERE UyelikDurumu = 1;


--T�m eser transfer ge�mi�ini �zetler.
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


--Ziyaret�i giri�-��k�� bilgilerini sergi ve etkinlik ile birlikte g�sterir.
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


--En �ok kat�l�m alan etkinlikleri g�sterir.
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










--Her Eserin Ka� Sergide Yer Ald���
CREATE VIEW EserSergiSayilari AS
SELECT E.ID AS EserID, E.Ad AS EserAdi, COUNT(ES.ID) AS SergiSayisi
FROM Eserler E
LEFT JOIN EserSergileri ES ON E.ID = ES.EserID
GROUP BY E.ID, E.Ad;

--Son 1 Y�lda Yap�lan Bak�mlar (buna tekrar bak)
CREATE VIEW SonBakimlar AS
SELECT EB.ID, E.Ad AS EserAdi, EB.BakimTarihi, EB.YapilanIslem, P.Ad + ' ' + P.Soyad AS Sorumlu
FROM EserBakimKayitlari EB
JOIN Eserler E ON EB.EserID = E.ID
JOIN Personel P ON EB.SorumluKisi = P.ID
WHERE EB.BakimTarihi >= DATEADD(YEAR, -1, GETDATE());

--Eser Transfer Kay�tlar�
CREATE VIEW TumTransferler AS
SELECT T.ID, E.Ad AS EserAdi, T.KaynakMuze, T.HedefMuze, T.Tarih, T.TransferDurumu
FROM EserTransferleri T
JOIN Eserler E ON T.EserID = E.ID;

--M�ze Giderleri �zeti
CREATE VIEW GiderOzeti AS
SELECT Aciklama, SUM(Tutar) AS ToplamTutar
FROM MuzeGiderleri
GROUP BY Aciklama;

--**Ziyaret�i Giri� ��k�� G�nl�k Log (buna tekrar bak)
CREATE VIEW GunlukZiyaretciLog AS
SELECT Z.Ad + ' ' + Z.Soyad AS ZiyaretciAdi, G.GirisTarihi, G.CikisTarihi, B.Ad AS BiletTuru
FROM ZiyaretciGirisKayitlari G
JOIN Ziyaretciler Z ON G.ZiyaretciID = Z.ID
JOIN BiletTurleri B ON G.BiletTuru = B.ID;

--Aktif sergilenen eserler (buna tekrar bak)
CREATE VIEW AktifSergilenenEserler AS 
SELECT e.Ad, s.Ad AS SergiAd�, es.BaslangicTarihi, es.BitisTarihi
FROM Eserler e
JOIN EserSergileri es ON e.ID = es.EserID
JOIN Sergiler s ON es.SergiID = s.ID
WHERE GETDATE() BETWEEN es.BaslangicTarihi AND es.BitisTarihi;

--Ziyaret�i bilgileri ve giri� kay�tlar� (buna tekrar bak)
CREATE VIEW ZiyaretciGirisBilgisi AS
SELECT z.Ad, z.Soyad, z.Email, g.GirisTarihi, g.CikisTarihi, b.Ad AS BiletTuru
FROM Ziyaretciler z
JOIN ZiyaretciGirisKayitlari g ON z.ID = g.ZiyaretciID
JOIN BiletTurleri b ON g.BiletTuru = b.ID;


--Bak�m gerektiren eserler (son bak�m > 2 y�l) BUNA TEKRAR BAK
CREATE VIEW BakimGerekenEserler AS
SELECT e.Ad, MAX(b.BakimTarihi) AS SonBakimTarihi
FROM Eserler e
JOIN EserBakimKayitlari b ON e.ID = b.EserID
GROUP BY e.Ad
HAVING MAX(b.BakimTarihi) < DATEADD(YEAR, -2, GETDATE());


--Son etkinlik kay�tlar�
CREATE VIEW SonEtkinlikKayitlari AS
SELECT z.Ad + ' ' + z.Soyad AS ZiyaretciAdi, e.Ad AS EtkinlikAdi, k.KayitTarihi
FROM EtkinlikKayitlari k
JOIN Ziyaretciler z ON k.ZiyaretciID = z.ID
JOIN Etkinlikler e ON k.EtkinlikID = e.ID
WHERE k.KayitTarihi > DATEADD(MONTH, -1, GETDATE());


--M�ze gelir raporu
CREATE VIEW AylikGelirRaporu AS
SELECT FORMAT(Tarih, 'yyyy-MM') AS Ay, SUM(Tutar) AS ToplamGelir
FROM MuzeGelirleri
GROUP BY FORMAT(Tarih, 'yyyy-MM');


--Ba����� detaylar�
CREATE VIEW BagisciDetaylari AS
SELECT b.Ad + ' ' + b.Soyad AS BagisciAdi, d.Miktar, d.BagisTarihi, d.KullanimAlani
FROM Bagiscilar b
JOIN Bagislar d ON b.ID = d.BagisciID;


--Personel maa� listesi
CREATE VIEW PersonelMaasListesi AS
SELECT Ad + ' ' + Soyad AS AdSoyad, Gorev, Maas
FROM Personel;


--Sergideki eser say�s�
CREATE VIEW SergiEserSayisi AS
SELECT s.Ad, COUNT(es.EserID) AS EserSayisi
FROM Sergiler s
JOIN EserSergileri es ON s.ID = es.SergiID
GROUP BY s.Ad;