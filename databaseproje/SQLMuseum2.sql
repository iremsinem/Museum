INSERT INTO EserTurleri (Ad, Aciklama) VALUES
('Resim', 'Tuvaller üzerine yapılmış sanat eserleri'),
('Heykel', 'Taş, mermer veya bronzdan yapılmış üç boyutlu eserler'),
('Mozaik', 'Taş veya cam parçalarıyla oluşturulan görsel sanat'),
('Seramik', 'Pişmiş topraktan yapılmış sanatsal nesneler'),
('Fotoğraf', 'Sanatsal veya belgesel amaçlı çekilmiş fotoğraflar'),
('Minyatür', 'Detaylı ve küçük boyutlu el çizimleri'),
('Hat', 'Kaligrafi sanatına dayanan yazı eserleri'),
('Tezhip', 'Altınla yapılan süsleme sanatı'),
('Gravür', 'Oyma tekniği ile yapılmış baskı eserler'),
('Cam Sanatı', 'Camdan yapılmış sanatsal nesneler'),
('Ahşap İşçiliği', 'Ahşap malzemelerden yapılmış el işi ürünler'),
('Metal İşçiliği', 'Demir, bakır gibi metallerden yapılmış eserler'),
('Tekstil Sanatı', 'Kumaş ve ipliklerle yapılan sanat eserleri'),
('Takı Tasarımı', 'Sanatsal mücevher ve aksesuarlar'),
('Dijital Sanat', 'Bilgisayar ortamında üretilmiş sanat eserleri'),
('Enstalasyon', 'Mekâna özgü kurulan üç boyutlu sanat yapıları'),
('Multimedya Sanatı', 'Ses, video ve grafik birleştirilerek oluşturulan eserler'),
('Arkeolojik Eser', 'Kazılarda ortaya çıkarılmış tarihi objeler'),
('Yazma Eser', 'El yazması kitaplar ve parşömenler'),
('Tarihî Belge', 'Eski yazılı belgeler, mektuplar, fermanlar'),
('Kostüm', 'Tarihî kıyafetler ve aksesuarlar'),
('Takı', 'Tarihî veya sanatsal değeri olan kolye, yüzük vb.'),
('Mobilya', 'Antika masa, sandalye, dolap gibi eşyalar'),
('Etnografik Eser', 'Halk kültürünü yansıtan eşyalar'),
('Harita', 'Tarihî veya sanatsal haritalar'),
('Silah', 'Kılıç, tüfek, tabanca gibi tarihî silahlar'),
('Müzik Aleti', 'Tarihî enstrümanlar'),
('Sikke', 'Antik veya tarihî madeni paralar'),
('Madalya', 'Tarihî veya özel ödül niteliğindeki madalyalar'),
('Poster', 'Tarihî veya sanatsal afişler');


INSERT INTO Sanatcilar (Ad, DogumTarihi, OlumTarihi, Ulke, Biyografi) VALUES
('Leonardo da Vinci', '1452-04-15', '1519-05-02', 'İtalya', 'Rönesans döneminin önemli sanatçısı, bilim insanı ve mucit.'),
('Vincent van Gogh', '1853-03-30', '1890-07-29', 'Hollanda', 'Post-empresyonist ressam, duygusal ve güçlü fırça darbeleriyle bilinir.'),
('Pablo Picasso', '1881-10-25', '1973-04-08', 'İspanya', 'Kübizm akımının kurucusu olan ünlü modern sanatçı.'),
('Frida Kahlo', '1907-07-06', '1954-07-13', 'Meksika', 'Kendi yaşamı ve acıları üzerine yaptığı otoportrelerle tanınır.'),
('Salvador Dalí', '1904-05-11', '1989-01-23', 'İspanya', 'Sürrealizm akımının önde gelen temsilcisi.'),
('Claude Monet', '1840-11-14', '1926-12-05', 'Fransa', 'Empresyonist akımın öncülerindendir.'),
('Michelangelo', '1475-03-06', '1564-02-18', 'İtalya', 'Rönesans dönemi heykeltıraşı ve ressamı, Sistina Şapeli ile bilinir.'),
('Jackson Pollock', '1912-01-28', '1956-08-11', 'ABD', 'Soyut dışavurumculuğun öncüsü, damlatma tekniği ile tanınır.'),
('Andy Warhol', '1928-08-06', '1987-02-22', 'ABD', 'Pop art akımının en tanınan sanatçılarından biridir.'),
('İbrahim Balaban', '1921-01-01', '2019-06-09', 'Türkiye', 'Toplumcu gerçekçilik akımının temsilcilerinden biridir.'),
('Banksy', '1974-01-01', NULL, 'İngiltere', 'Kimliği bilinmeyen sokak sanatçısı, politik duvar resimleriyle tanınır.'),
('Ayşe Yılmaz', '1985-05-10', NULL, 'Türkiye', 'Modern sanat üzerine çalışan çağdaş bir Türk ressamıdır.'),
('Ali Demir', '1970-11-22', NULL, 'Türkiye', 'Anadolu motifleri üzerine çalışan heykeltıraş.'),
('Elif Kaya', '1992-04-04', NULL, 'Türkiye', 'Dijital sanat alanında üretim yapan genç sanatçı.'),
('Kazimir Malevich', '1879-02-23', '1935-05-15', 'Rusya', 'Süprematizm akımının kurucusu.'),
('Yayoi Kusama', '1929-03-22', NULL, 'Japonya', 'Enstalasyon sanatında nokta desenleriyle ünlü çağdaş sanatçı.'),
('Henri Matisse', '1869-12-31', '1954-11-03', 'Fransa', 'Fovist akımın kurucularından, renk kullanımıyla dikkat çeker.'),
('Georgia O’Keeffe', '1887-11-15', '1986-03-06', 'ABD', 'Amerikan modernizminin öncülerindendir.'),
('Lucian Freud', '1922-12-08', '2011-07-20', 'İngiltere', 'Figüratif portreleriyle bilinen ressam.'),
('Zehra Arslan', '1995-06-12', NULL, 'Türkiye', 'Sanat enstalasyonları ve performans sanatıyla ilgilenmektedir.');


INSERT INTO Eserler (Ad, Tur_ID, Sanatci_ID, YapimYili, BulunduguMuze, MevcutDurum, DijitalKoleksiyonURL) VALUES
('Mona Lisa', 1, 1, 1503, 'Louvre Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/mona-lisa'),
('Yıldızlı Gece', 2, 2, 1889, 'MoMA', 'Sergileniyor', 'https://koleksiyon.muze.com/starry-night'),
('Guernica', 1, 3, 1937, 'Reina Sofia Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/guernica'),
('İki Frida', 2, 4, 1939, 'Modern Sanat Müzesi - Meksika', 'Sergileniyor', 'https://koleksiyon.muze.com/iki-frida'),
('Belleğin Azmi', 2, 5, 1931, 'MoMA', 'Sergileniyor', 'https://koleksiyon.muze.com/dali-bellek'),
('Nilüferler', 3, 6, 1906, 'Orangerie Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/niluferler'),
('Davud Heykeli', 4, 7, 1504, 'Accademia Galerisi', 'Sergileniyor', 'https://koleksiyon.muze.com/davud'),
('No.5, 1948', 2, 8, 1948, 'Özel Koleksiyon', 'Saklı', 'https://koleksiyon.muze.com/no5'),
('Campbell Çorbası', 1, 9, 1962, 'MoMA', 'Sergileniyor', 'https://koleksiyon.muze.com/campbell'),
('Tarladaki Adamlar', 3, 10, 1980, 'İstanbul Resim Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/tarla'),
('Kırmızı Balon', 5, 11, 2007, 'Londra Şehir Galerisi', 'Sergileniyor', 'https://koleksiyon.muze.com/kirmizi-balon'),
('Yansıma', 2, 12, 2015, 'Pera Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/yansima'),
('Anadolu Ruhu', 4, 13, 2010, 'Anadolu Medeniyetleri Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/anadolu-ruhu'),
('Gölgeler', 2, 14, 2020, 'Salt Galata', 'Sergileniyor', 'https://koleksiyon.muze.com/golgeler'),
('Kara Kare', 1, 15, 1915, 'Rus Devlet Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/karakare'),
('Sonsuzluk Odası', 5, 16, 2013, 'Tokyo Modern Sanat Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/sonsuzluk'),
('Dans', 3, 17, 1910, 'Hermitage Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/dans'),
('Beyaz Çiçekler', 3, 18, 1932, 'New Mexico Sanat Müzesi', 'Sergileniyor', 'https://koleksiyon.muze.com/beyazcicek'),
('Gece ve İnsan', 2, 19, 1995, 'Tate Modern', 'Sergileniyor', 'https://koleksiyon.muze.com/geceinsan'),
('Yansıyan Suret', 2, 20, 2022, 'İstanbul Modern', 'Sergileniyor', 'https://koleksiyon.muze.com/yansiyansuret');


INSERT INTO Sergiler (Ad, Konum, BaslangicTarihi, BitisTarihi, Aciklama) VALUES
('Rönesans Sanatı', 'İstanbul Modern', '2024-01-10', '2024-03-10', 'Rönesans dönemine ait eserler sergilenmektedir.'),
('Modern Heykel Sergisi', 'Ankara Resim ve Heykel Müzesi', '2024-02-01', '2024-04-01', 'Çağdaş heykel sanatçılarının eserleri.'),
('Osmanlı Hat Sanatı', 'Topkapı Sarayı', '2024-03-15', '2024-05-15', 'Osmanlı dönemi hat sanatı örnekleri.'),
('İzlenimcilik Akımı', 'Pera Müzesi', '2024-04-01', '2024-06-01', 'Fransız izlenimciliği üzerine bir sergi.'),
('Fotoğrafın Tarihi', 'İstanbul Fotoğraf Müzesi', '2024-05-10', '2024-07-10', 'Fotoğrafçılığın geçmişten günümüze yolculuğu.'),
('Anadolu Medeniyetleri', 'Anadolu Medeniyetleri Müzesi', '2024-06-20', '2024-08-20', 'Anadolu’da yaşamış medeniyetlerden kalıntılar.'),
('Çağdaş Türk Ressamları', 'Sakıp Sabancı Müzesi', '2024-07-01', '2024-09-01', 'Günümüz Türk ressamlarının seçkileri.'),
('Antik Roma Koleksiyonu', 'Efes Müzesi', '2024-08-05', '2024-10-05', 'Antik Roma dönemine ait arkeolojik eserler.'),
('Cam Sanatı Sergisi', 'Paşabahçe Sanat Merkezi', '2024-09-10', '2024-11-10', 'El yapımı cam eserler sergisi.'),
('Mısır Hiyeroglifleri', 'İstanbul Arkeoloji Müzesi', '2024-10-15', '2024-12-15', 'Antik Mısır yazı sistemine dair örnekler.'),
('Minyatür Sanatı', 'Türk İslam Eserleri Müzesi', '2024-11-01', '2025-01-01', 'Türk minyatür sanatı örnekleri.'),
('Sanat ve Doğa', 'Atatürk Orman Çiftliği Sergi Salonu', '2025-01-10', '2025-03-10', 'Doğa temalı sanat eserleri.'),
('Gotik Mimari', 'Yıldız Sarayı', '2025-02-01', '2025-04-01', 'Gotik mimari yapı ve çizimleri.'),
('Dijital Sanat Sergisi', 'Zorlu PSM', '2025-03-15', '2025-05-15', 'Dijital teknolojilerle üretilmiş sanat eserleri.'),
('Kadın Sanatçılar Günü', 'İstanbul Kadın Müzesi', '2025-04-10', '2025-06-10', 'Kadın sanatçılara özel temalı sergi.'),
('Yunan Mitolojisi ve Sanat', 'Akdeniz Üniversitesi Sanat Galerisi', '2025-05-01', '2025-07-01', 'Yunan mitolojisine dayalı sanat eserleri.'),
('Barok Dönemi Sanatı', 'İstanbul Resim ve Heykel Müzesi', '2025-06-05', '2025-08-05', 'Barok dönem eserlerinden oluşan seçki.'),
('Zamansız Heykeller', 'Bursa Kent Müzesi', '2025-07-10', '2025-09-10', 'Farklı dönemlerden heykel eserleri.'),
('Soyut Sanatın Doğuşu', 'Bozlu Art Project', '2025-08-15', '2025-10-15', 'Soyut sanatın tarihi ve örnekleri.'),
('Küresel Kültürler Sergisi', 'İstanbul Kültür Üniversitesi Sergi Alanı', '2025-09-20', '2025-11-20', 'Dünya kültürlerinden sanat örnekleri.');


INSERT INTO EserSergileri (EserID, SergiID, BaslangicTarihi, BitisTarihi)
VALUES
(1, 1, '2025-05-01', '2025-05-15'),
(2, 1, '2025-05-01', '2025-05-15'),
(3, 2, '2025-06-01', '2025-06-30'),
(4, 2, '2025-06-01', '2025-06-30'),
(5, 3, '2025-07-01', '2025-07-31'),
(6, 3, '2025-07-01', '2025-07-31'),
(7, 4, '2025-08-01', '2025-08-15'),
(8, 4, '2025-08-01', '2025-08-15'),
(9, 5, '2025-09-01', '2025-09-30'),
(10, 5, '2025-09-01', '2025-09-30'),
(11, 6, '2025-10-01', '2025-10-31'),
(12, 6, '2025-10-01', '2025-10-31'),
(13, 7, '2025-11-01', '2025-11-30'),
(14, 7, '2025-11-01', '2025-11-30'),
(15, 8, '2025-12-01', '2025-12-15'),
(16, 8, '2025-12-01', '2025-12-15'),
(17, 9, '2026-01-01', '2026-01-31'),
(18, 9, '2026-01-01', '2026-01-31'),
(19, 10, '2026-02-01', '2026-02-28'),
(20, 10, '2026-02-01', '2026-02-28');


INSERT INTO Personel (Ad, Soyad, Gorev, Maas, IseBaslamaTarihi) VALUES
('Ahmet', 'Yılmaz', 'Müze Müdürü', 18500.00, CONVERT(DATE, '01-01-2020', 105)),
('Ayşe', 'Demir', 'Sanat Danışmanı', 14250.50, CONVERT(DATE, '15-03-2021', 105)),
('Mehmet', 'Kara', 'Rehber', 9500.00, CONVERT(DATE, '10-06-2022', 105)),
('Elif', 'Aydın', 'Küratör', 16000.75, CONVERT(DATE, '20-08-2020', 105)),
('Burak', 'Şahin', 'Temizlik Görevlisi', 7200.00, CONVERT(DATE, '01-04-2023', 105)),
('Zeynep', 'Aslan', 'Sanat Restoratörü', 13800.00, CONVERT(DATE, '12-11-2019', 105)),
('Emre', 'Çelik', 'Güvenlik Görevlisi', 8300.00, CONVERT(DATE, '05-02-2021', 105)),
('Melisa', 'Kurt', 'Eğitim Uzmanı', 12500.00, CONVERT(DATE, '22-07-2020', 105)),
('Kerem', 'Işık', 'Bilet Satış Görevlisi', 7500.00, CONVERT(DATE, '18-10-2022', 105)),
('Cansu', 'Koç', 'İletişim Sorumlusu', 11000.00, CONVERT(DATE, '30-05-2021', 105)),
('Hakan', 'Güneş', 'Teknik Personel', 9200.00, CONVERT(DATE, '10-12-2020', 105)),
('Derya', 'Bozkurt', 'Arşiv Sorumlusu', 9800.00, CONVERT(DATE, '14-03-2019', 105)),
('Onur', 'Öztürk', 'Ziyaretçi İlişkileri', 9900.00, CONVERT(DATE, '03-01-2022', 105)),
('Buse', 'Acar', 'Sanat Tarihçisi', 14700.00, CONVERT(DATE, '09-09-2021', 105)),
('Tolga', 'Yalçın', 'Güvenlik Görevlisi', 8450.00, CONVERT(DATE, '11-06-2023', 105)),
('Nazlı', 'Ersoy', 'Grafik Tasarımcı', 11500.00, CONVERT(DATE, '27-08-2022', 105)),
('Mert', 'Polat', 'Bakım Personeli', 7800.00, CONVERT(DATE, '06-04-2023', 105)),
('Sena', 'Kaya', 'Rehber', 9600.00, CONVERT(DATE, '19-07-2021', 105)),
('Can', 'Sezer', 'İdari Personel', 10500.00, CONVERT(DATE, '24-10-2020', 105)),
('Aslı', 'Başar', 'Sergi Koordinatörü', 13950.00, CONVERT(DATE, '17-02-2022', 105));


INSERT INTO EserTransferleri (EserID, KaynakMuze, HedefMuze, Tarih, TransferDurumu) VALUES
(1, 'Topkapı Sarayı', 'İstanbul Modern', CONVERT(DATE, '15-01-2024', 105), 'Tamamlandı'),
(2, 'İstanbul Modern', 'Pera Müzesi', CONVERT(DATE, '20-01-2024', 105), 'Transfer Edildi'),
(3, 'Sabancı Üniversitesi Müzesi', 'Arter', CONVERT(DATE, '25-02-2024', 105), 'Tamamlandı'),
(4, 'Anadolu Medeniyetleri Müzesi', 'Mersin Müzesi', CONVERT(DATE, '05-03-2024', 105), 'İptal Edildi'),
(5, 'Çırağan Sarayı', 'TCDD Demiryolu Müzesi', CONVERT(DATE, '10-04-2024', 105), 'Devam Ediyor'),
(6, 'Hagia Sophia', 'Beyoğlu Kültür Merkezi', CONVERT(DATE, '18-04-2024', 105), 'Tamamlandı'),
(7, 'Kocaeli Müzesi', 'Rahmi M. Koç Müzesi', CONVERT(DATE, '01-05-2024', 105), 'Transfer Edildi'),
(8, 'İstanbul Modern', 'Sakıp Sabancı Müzesi', CONVERT(DATE, '15-06-2024', 105), 'Tamamlandı'),
(9, 'TCDD Demiryolu Müzesi', 'İstanbul Arkeoloji Müzesi', CONVERT(DATE, '25-06-2024', 105), 'Devam Ediyor'),
(10, 'Pera Müzesi', 'Van Müzesi', CONVERT(DATE, '10-07-2024', 105), 'Transfer Edildi'),
(11, 'Müze Turu', 'Zeytinlik Kültür Müzesi', CONVERT(DATE, '12-07-2024', 105), 'İptal Edildi'),
(12, 'Rahmi M. Koç Müzesi', 'İstanbul Modern', CONVERT(DATE, '18-08-2024', 105), 'Devam Ediyor'),
(13, 'Mersin Müzesi', 'Anadolu Medeniyetleri Müzesi', CONVERT(DATE, '22-08-2024', 105), 'Tamamlandı'),
(14, 'Arter', 'Hagia Sophia', CONVERT(DATE, '25-09-2024', 105), 'Transfer Edildi'),
(15, 'Sakıp Sabancı Müzesi', 'Kocaeli Müzesi', CONVERT(DATE, '10-10-2024', 105), 'Devam Ediyor'),
(16, 'Beyoğlu Kültür Merkezi', 'Sabancı Üniversitesi Müzesi', CONVERT(DATE, '14-11-2024', 105), 'İptal Edildi'),
(17, 'İstanbul Arkeoloji Müzesi', 'Topkapı Sarayı', CONVERT(DATE, '19-11-2024', 105), 'Tamamlandı'),
(18, 'Van Müzesi', 'Çırağan Sarayı', CONVERT(DATE, '05-12-2024', 105), 'Devam Ediyor'),
(19, 'Zeytinlik Kültür Müzesi', 'Müze Turu', CONVERT(DATE, '09-12-2024', 105), 'Transfer Edildi'),
(20, 'TCDD Demiryolu Müzesi', 'Pera Müzesi', CONVERT(DATE, '15-12-2024', 105), 'İptal Edildi');


INSERT INTO Ziyaretciler (Ad, Soyad, DogumTarihi, Email, UyelikDurumu) VALUES
('Ali', 'Kaya', CONVERT(DATE, '01-01-1985', 105), 'ali.kaya@example.com', 1),
('Ayşe', 'Öztürk', CONVERT(DATE, '15-02-1990', 105), 'ayse.ozturk@example.com', 0),
('Mehmet', 'Demir', CONVERT(DATE, '22-03-1982', 105), 'mehmet.demir@example.com', 1),
('Elif', 'Arslan', CONVERT(DATE, '10-05-1995', 105), 'elif.arslan@example.com', 1),
('Burak', 'Yılmaz', CONVERT(DATE, '18-06-1993', 105), 'burak.yilmaz@example.com', 0),
('Zeynep', 'Çelik', CONVERT(DATE, '25-07-1988', 105), 'zeynep.celik@example.com', 1),
('Emre', 'Şahin', CONVERT(DATE, '30-08-1980', 105), 'emre.sahin@example.com', 0),
('Melisa', 'Koç', CONVERT(DATE, '14-09-1996', 105), 'melisa.koc@example.com', 1),
('Kerem', 'Işık', CONVERT(DATE, '02-10-1992', 105), 'kerem.isik@example.com', 1),
('Cansu', 'Kurt', CONVERT(DATE, '19-11-1994', 105), 'cansu.kurt@example.com', 0),
('Hakan', 'Yalçın', CONVERT(DATE, '11-12-1987', 105), 'hakan.yalcin@example.com', 1),
('Derya', 'Bozkurt', CONVERT(DATE, '23-01-1989', 105), 'derya.bozkurt@example.com', 0),
('Onur', 'Öztürk', CONVERT(DATE, '08-02-1991', 105), 'onur.ozturk@example.com', 1),
('Buse', 'Acar', CONVERT(DATE, '17-03-1997', 105), 'buse.acar@example.com', 0),
('Tolga', 'Başar', CONVERT(DATE, '12-04-1983', 105), 'tolga.basar@example.com', 1),
('Nazlı', 'Ersoy', CONVERT(DATE, '03-05-1990', 105), 'nazli.ersoy@example.com', 0),
('Mert', 'Polat', CONVERT(DATE, '26-06-1994', 105), 'mert.polat@example.com', 1),
('Sena', 'Kaya', CONVERT(DATE, '07-07-1995', 105), 'sena.kaya@example.com', 0),
('Can', 'Sezer', CONVERT(DATE, '15-08-1986', 105), 'can.sezer@example.com', 1),
('Aslı', 'Başar', CONVERT(DATE, '22-09-1998', 105), 'asli.basar@example.com', 0);


INSERT INTO BiletTurleri (Ad, Fiyat, GecerlilikSuresi) VALUES
('Tam Bilet', 50.00, 30),
('Öğrenci Bileti', 30.00, 30),
('Çocuk Bileti', 15.00, 30),
('Yıllık Üyelik', 300.00, 365),
('Grup Bileti', 200.00, 30),
('VIP Bilet', 100.00, 30),
('Aile Bileti', 120.00, 30),
('Küçük Grup Bileti', 100.00, 30),
('Hafta Sonu Bileti', 60.00, 7),
('İndirimli Bilet', 40.00, 30),
('Erken Rezervasyon Bileti', 45.00, 30),
('Sergi Bileti', 40.00, 30),
('Rehberli Turu Bileti', 80.00, 30),
('Özel Etkinlik Bileti', 150.00, 30),
('Ziyaretçi Bileti', 60.00, 30),
('Konser Bileti', 80.00, 30),
('Tarihi Turlar Bileti', 70.00, 30),
('Kültürel Etkinlik Bileti', 90.00, 30),
('İçeriği Zenginleştirilmiş Bilet', 120.00, 30);


INSERT INTO ZiyaretciGirisKayitlari (ZiyaretciID, GirisTarihi, CikisTarihi, BiletTuru) VALUES
(1,  CONVERT(DATETIME, '14-02-2023 09:20:00', 105), CONVERT(DATETIME, '14-02-2023 11:10:00', 105), 1),
(2,  CONVERT(DATETIME, '22-03-2022 14:30:00', 105), CONVERT(DATETIME, '22-03-2022 16:00:00', 105), 2),
(3,  CONVERT(DATETIME, '07-06-2024 10:45:00', 105), NULL, 3),
(4,  CONVERT(DATETIME, '29-01-2023 13:00:00', 105), CONVERT(DATETIME, '29-01-2023 15:00:00', 105), 4),
(5,  CONVERT(DATETIME, '03-12-2021 12:30:00', 105), NULL, 5),
(6,  CONVERT(DATETIME, '11-07-2024 08:15:00', 105), CONVERT(DATETIME, '11-07-2024 10:00:00', 105), 6),
(7,  CONVERT(DATETIME, '19-09-2022 17:20:00', 105), CONVERT(DATETIME, '19-09-2022 18:45:00', 105), 7),
(8,  CONVERT(DATETIME, '30-05-2023 11:00:00', 105), NULL, 8),
(9,  CONVERT(DATETIME, '05-11-2021 09:40:00', 105), CONVERT(DATETIME, '05-11-2021 11:30:00', 105), 9),
(10, CONVERT(DATETIME, '16-08-2024 13:10:00', 105), CONVERT(DATETIME, '16-08-2024 15:00:00', 105), 10),
(11, CONVERT(DATETIME, '27-04-2023 16:00:00', 105), NULL, 11),
(12, CONVERT(DATETIME, '08-10-2022 10:30:00', 105), CONVERT(DATETIME, '08-10-2022 12:30:00', 105), 12),
(13, CONVERT(DATETIME, '18-03-2021 12:00:00', 105), NULL, 13),
(14, CONVERT(DATETIME, '24-06-2022 15:30:00', 105), CONVERT(DATETIME, '24-06-2022 17:00:00', 105), 14),
(15, CONVERT(DATETIME, '01-01-2023 08:00:00', 105), NULL, 15),
(16, CONVERT(DATETIME, '06-02-2024 09:30:00', 105), CONVERT(DATETIME, '06-02-2024 11:15:00', 105), 16),
(17, CONVERT(DATETIME, '13-05-2021 14:45:00', 105), CONVERT(DATETIME, '13-05-2021 16:45:00', 105), 17),
(18, CONVERT(DATETIME, '21-07-2023 17:10:00', 105), NULL, 18),
(19, CONVERT(DATETIME, '09-09-2022 10:15:00', 105), CONVERT(DATETIME, '09-09-2022 12:00:00', 105), 19),
(20, CONVERT(DATETIME, '12-12-2021 18:00:00', 105), NULL, 20);



INSERT INTO Etkinlikler (Ad, Tur, BaslangicTarihi, BitisTarihi, Aciklama) VALUES
('Sanat Atölyesi', 'Eğitim', CONVERT(DATE, '01-02-2024', 105), CONVERT(DATE, '02-02-2024', 105), 'Sanatçıların rehberliğinde sanat atölyesi.'),
('Müzik Konseri', 'Performans', CONVERT(DATE, '10-03-2024', 105), CONVERT(DATE, '10-03-2024', 105), 'Yerel bir grup tarafından müzik performansı.'),
('Tarihi Turlar', 'Rehberli Gezi', CONVERT(DATE, '15-03-2024', 105), CONVERT(DATE, '15-03-2024', 105), 'Tarihi yerleri rehber eşliğinde keşfedin.'),
('Çocuk Tiyatrosu', 'Performans', CONVERT(DATE, '20-04-2024', 105), CONVERT(DATE, '20-04-2024', 105), 'Çocuklar için tiyatro gösterisi.'),
('Yazlık Film Gecesi', 'Sinema', CONVERT(DATE, '05-05-2024', 105), CONVERT(DATE, '05-05-2024', 105), 'Açık hava film gösterimi.'),
('Kitap Okuma Etkinliği', 'Kültür', CONVERT(DATE, '15-06-2024', 105), CONVERT(DATE, '15-06-2024', 105), 'Yazarla kitap okuma etkinliği.'),
('Fotoğraf Sergisi', 'Sergi', CONVERT(DATE, '01-07-2024', 105), CONVERT(DATE, '15-07-2024', 105), 'Yerel fotoğrafçılardan fotoğraf sergisi.'),
('Tarihi Belgesel Gösterimi', 'Sinema', CONVERT(DATE, '05-08-2024', 105), CONVERT(DATE, '05-08-2024', 105), 'Tarihi bir belgeselin gösterimi.'),
('Gastronomi Turu', 'Gezi', CONVERT(DATE, '10-09-2024', 105), CONVERT(DATE, '10-09-2024', 105), 'Yerel mutfağı keşfedin.'),
('Modern Sanat Sergisi', 'Sergi', CONVERT(DATE, '20-10-2024', 105), CONVERT(DATE, '30-10-2024', 105), 'Modern sanat eserleri sergisi.'),
('Klasik Müzik Konseri', 'Performans', CONVERT(DATE, '05-11-2024', 105), CONVERT(DATE, '05-11-2024', 105), 'Klasik müzik konseri.'),
('Yaz Resim Kursu', 'Eğitim', CONVERT(DATE, '15-12-2024', 105), CONVERT(DATE, '30-12-2024', 105), 'Sanatçılar için yaz resim kursu.'),
('Meydan Konseri', 'Performans', CONVERT(DATE, '10-01-2025', 105), CONVERT(DATE, '10-01-2025', 105), 'Açık havada büyük konser etkinliği.'),
('Sanat Fuarı', 'Fuar', CONVERT(DATE, '20-02-2025', 105), CONVERT(DATE, '25-02-2025', 105), 'Sanatçılar ve galerilerden eserler.'),
('Şiir Akşamı', 'Kültür', CONVERT(DATE, '05-03-2025', 105), CONVERT(DATE, '05-03-2025', 105), 'Şairlerin katılımıyla şiir akşamı.'),
('Kısa Film Festivali', 'Sinema', CONVERT(DATE, '15-04-2025', 105), CONVERT(DATE, '15-04-2025', 105), 'Bağımsız kısa filmler festivali.'),
('Arkeolojik Turlar', 'Rehberli Gezi', CONVERT(DATE, '25-05-2025', 105), CONVERT(DATE, '25-05-2025', 105), 'Antik kalıntıları keşfedin.'),
('Yoga Etkinliği', 'Sağlık', CONVERT(DATE, '05-06-2025', 105), CONVERT(DATE, '05-06-2025', 105), 'Yoga dersleri ve rahatlama etkinliği.'),
('Tango Gösterisi', 'Performans', CONVERT(DATE, '15-07-2025', 105), CONVERT(DATE, '15-07-2025', 105), 'Tango dans gösterisi.'),
('Edebiyat Sohbeti', 'Kültür', CONVERT(DATE, '25-08-2025', 105), CONVERT(DATE, '25-08-2025', 105), 'Edebiyat severlerle kitap ve yazarlar hakkında sohbet.'),
('Sanatçılarla Buluşma', 'Kültür', CONVERT(DATE, '10-09-2025', 105), CONVERT(DATE, '10-09-2025', 105), 'Sanatçılarla interaktif buluşma etkinliği.');


INSERT INTO EtkinlikTurleri (Ad, Aciklama) VALUES
('Konser', 'Müzik performansları'),
('Sergi', 'Sanat eserlerinin sergilendiği etkinlikler'),
('Atölye', 'Katılımcıların aktif olarak katıldığı eğitim etkinlikleri'),
('Konferans', 'Uzman konuşmacıların sunum yaptığı etkinlikler'),
('Seminer', 'Kısa süreli eğitim veya sunum etkinlikleri'),
('Workshop', 'Katılımcıların bir konu üzerinde çalıştığı grup etkinliği'),
('Tiyatro', 'Sahne sanatları gösterisi'),
('Film Gösterimi', 'Sinema filmi gösterimleri'),
('Müzayede', 'Sanat eserlerinin veya diğer değerli ürünlerin satışa sunulduğu etkinlik'),
('Sosyal Sorumluluk Projesi', 'Topluma yönelik yardım amaçlı yapılan etkinlikler'),
('Buluşma', 'Bir araya gelerek yapılan organizasyonlar'),
('Festival', 'Büyük ölçekli kültürel ve sanatsal etkinlikler'),
('Kampanya', 'Bir amaca yönelik yapılan topluluk etkinlikleri'),
('Panel', 'Bir grup konuşmacının tartışma yaptığı etkinlik'),
('Eğlence Etkinliği', 'Eğlencelik, keyifli etkinlikler'),
('Gala', 'Özel etkinlikler, genellikle bir amaç için yapılan büyük kutlamalar');



INSERT INTO EtkinlikKayitlari (ZiyaretciID, EtkinlikID, KayitTarihi) VALUES
(1,  2, CONVERT(DATE, '15-01-2023', 105)),
(2,  3, CONVERT(DATE, '10-02-2023', 105)),
(3,  1, CONVERT(DATE, '05-11-2022', 105)),
(4,  4, CONVERT(DATE, '18-03-2024', 105)),
(5,  2, CONVERT(DATE, '09-07-2023', 105)),
(6,  5, CONVERT(DATE, '22-12-2022', 105)),
(7,  3, CONVERT(DATE, '03-04-2023', 105)),
(8,  1, CONVERT(DATE, '14-08-2021', 105)),
(9,  4, CONVERT(DATE, '27-05-2023', 105)),
(10, 2, CONVERT(DATE, '01-01-2024', 105)),
(11, 3, CONVERT(DATE, '06-06-2023', 105)),
(12, 1, CONVERT(DATE, '11-10-2022', 105)),
(13, 5, CONVERT(DATE, '02-02-2024', 105)),
(14, 2, CONVERT(DATE, '09-09-2023', 105)),
(15, 4, CONVERT(DATE, '25-04-2022', 105)),
(16, 1, CONVERT(DATE, '13-08-2023', 105)),
(17, 3, CONVERT(DATE, '07-04-2024', 105)),
(18, 5, CONVERT(DATE, '16-03-2023', 105)),
(19, 4, CONVERT(DATE, '20-06-2022', 105)),
(20, 2, CONVERT(DATE, '30-12-2023', 105));



INSERT INTO Bagiscilar (Ad, Soyad, Kurum, Email, Telefon) VALUES
('Ahmet', 'Yıldız', 'Sanat ve Kültür Vakfı', 'ahmet.yildiz@skv.org', '+90 212 555 1234'),
('Ayşe', 'Demir', 'Anadolu Sanat Derneği', 'ayse.demir@asd.org.tr', '+90 312 444 5678'),
('Mehmet', 'Kaya', 'Modern Sanatlar Enstitüsü', 'mehmet.kaya@mse.org', '+90 216 333 6789'),
('Elif', 'Aydın', 'Müze Dostları Derneği', 'elif.aydin@mdd.org.tr', '+90 232 456 7890'),
('Burak', 'Şahin', 'Tarih ve Kültür Kurumu', 'burak.sahin@tkk.org', '+90 224 999 1122'),
('Zeynep', 'Koç', 'Çağdaş Sanat Platformu', 'zeynep.koc@csp.org.tr', '+90 212 321 4567'),
('Hakan', 'Yılmaz', 'İstanbul Kültür Vakfı', 'hakan.yilmaz@ikv.org.tr', '+90 212 765 4321'),
('Fatma', 'Çelik', 'Anadolu Mirası Derneği', 'fatma.celik@amd.org.tr', '+90 312 987 6543'),
('Mert', 'Aslan', 'Sanat Tarihi Vakfı', 'mert.aslan@stv.org', '+90 532 111 2233'),
('Selin', 'Kurt', 'Kültürel Mirası Koruma Derneği', 'selin.kurt@kmkd.org', '+90 555 666 7788'),
('Ali', 'Güneş', 'Türkiye Sanat Vakfı', 'ali.gunes@tsv.org.tr', '+90 212 345 6789'),
('Deniz', 'Arslan', 'Görsel Sanatlar Derneği', 'deniz.arslan@gsd.org', '+90 312 123 4567'),
('Canan', 'Er', 'Müze Gelişim Vakfı', 'canan.er@mgv.org.tr', '+90 216 888 9999'),
('Emre', 'Toprak', 'Sanat ve Mimarlık Derneği', 'emre.toprak@smd.org', '+90 212 121 2121'),
('Buse', 'Kaya', 'Kültür Elçileri Platformu', 'buse.kaya@kep.org.tr', '+90 312 777 8888'),
('Yusuf', 'Acar', 'Tarihi Eserleri Koruma Vakfı', 'yusuf.acar@tekv.org', '+90 552 333 4444'),
('Derya', 'Yalçın', 'Evrensel Sanat Topluluğu', 'derya.yalcin@est.org.tr', '+90 530 444 5555'),
('Kerem', 'Aksoy', 'Sanat Koleksiyoncuları Derneği', 'kerem.aksoy@skd.org', '+90 533 222 1111'),
('Aslı', 'Bozkurt', 'Kültür ve Sanat İnisiyatifi', 'asli.bozkurt@ksi.org.tr', '+90 312 654 9870'),
('Tolga', 'Öztürk', 'Arkeoloji Dostları Derneği', 'tolga.ozturk@add.org', '+90 212 789 1234');



INSERT INTO Bagislar (BagisciID, Miktar, BagisTarihi, KullanimAlani) VALUES
(1, 10000.00, CONVERT(DATE, '2023-01-15', 23), 'Yeni sergi salonu yapımı'),
(2, 5000.00, CONVERT(DATE, '2023-03-10', 23), 'Eser restorasyon çalışmaları'),
(3, 7500.50, CONVERT(DATE, '2022-11-20', 23), 'Dijital koleksiyon altyapısı'),
(4, 3200.00, CONVERT(DATE, '2023-05-05', 23), 'Eser güvenlik sistemleri'),
(5, 9800.00, CONVERT(DATE, '2022-09-12', 23), 'Müze aydınlatma sistemi'),
(6, 4500.75, CONVERT(DATE, '2024-02-25', 23), 'Multimedya rehber cihazları'),
(7, 6000.00, CONVERT(DATE, '2024-03-14', 23), 'Çocuklar için eğitim alanı'),
(8, 8500.00, CONVERT(DATE, '2023-12-01', 23), 'Engelli erişim rampaları'),
(9, 2000.00, CONVERT(DATE, '2023-06-18', 23), 'Müze içi yönlendirme tabelaları'),
(10, 10500.00, CONVERT(DATE, '2022-08-22', 23), 'Tarihi belge dijitalleştirme'),
(11, 4000.00, CONVERT(DATE, '2023-07-03', 23), 'Müze personel eğitimi'),
(12, 9100.90, CONVERT(DATE, '2024-01-10', 23), 'Sanat eserleri taşınma maliyeti'),
(13, 3600.00, CONVERT(DATE, '2022-10-28', 23), 'Arşiv odası yenilemesi'),
(14, 15000.00, CONVERT(DATE, '2024-04-02', 23), 'Geçici sergi organizasyonu'),
(15, 4900.00, CONVERT(DATE, '2023-02-19', 23), 'Müze kafeterya geliştirme'),
(16, 5200.00, CONVERT(DATE, '2023-11-11', 23), 'Bilet sistemi modernizasyonu'),
(17, 2700.00, CONVERT(DATE, '2022-07-07', 23), 'Giriş alanı dekorasyonu'),
(18, 8800.00, CONVERT(DATE, '2024-03-27', 23), 'Müze web sitesi yenileme'),
(19, 3400.00, CONVERT(DATE, '2023-09-15', 23), 'Sesli rehber uygulaması'),
(20, 7900.00, CONVERT(DATE, '2023-12-25', 23), 'Müze tanıtım kampanyası');



INSERT INTO MuzeGelirleri (KaynakTuru, Tutar, Tarih) VALUES
('Bilet Satışı', 1500.00, CONVERT(DATE, '01-01-2024', 105)),
('Bağış', 2000.00, CONVERT(DATE, '02-01-2024', 105)),
('Etkinlik Geliri', 800.00, CONVERT(DATE, '03-01-2024', 105)),
('Bilet Satışı', 1800.00, CONVERT(DATE, '04-01-2024', 105)),
('Bağış', 2500.00, CONVERT(DATE, '05-01-2024', 105)),
('Bilet Satışı', 1300.00, CONVERT(DATE, '06-01-2024', 105)),
('Etkinlik Geliri', 950.00, CONVERT(DATE, '07-01-2024', 105)),
('Bağış', 3000.00, CONVERT(DATE, '08-01-2024', 105)),
('Bilet Satışı', 1200.00, CONVERT(DATE, '09-01-2024', 105)),
('Etkinlik Geliri', 500.00, CONVERT(DATE, '10-01-2024', 105)),
('Bağış', 2200.00, CONVERT(DATE, '11-01-2024', 105)),
('Bilet Satışı', 1700.00, CONVERT(DATE, '12-01-2024', 105)),
('Etkinlik Geliri', 1000.00, CONVERT(DATE, '13-01-2024', 105)),
('Bilet Satışı', 1400.00, CONVERT(DATE, '14-01-2024', 105)),
('Bağış', 1800.00, CONVERT(DATE, '15-01-2024', 105)),
('Etkinlik Geliri', 750.00, CONVERT(DATE, '16-01-2024', 105)),
('Bilet Satışı', 1600.00, CONVERT(DATE, '17-01-2024', 105)),
('Bağış', 2700.00, CONVERT(DATE, '18-01-2024', 105)),
('Bilet Satışı', 1100.00, CONVERT(DATE, '19-01-2024', 105)),
('Etkinlik Geliri', 850.00, CONVERT(DATE, '20-01-2024', 105));

SELECT Museum();



INSERT INTO MuzeGiderleri (Aciklama, Tutar, Tarih) VALUES
('Yıllık bakım ve onarım', 1200.00, CONVERT(DATE, '01-01-2024', 105)),
('Sergi düzenleme masrafları', 2000.00, CONVERT(DATE, '02-01-2024', 105)),
('Ekipman alımı', 1500.00, CONVERT(DATE, '03-01-2024', 105)),
('Personel maaşları', 5000.00, CONVERT(DATE, '04-01-2024', 105)),
('Elektrik ve su giderleri', 600.00, CONVERT(DATE, '05-01-2024', 105)),
('Yazılım lisans ücretleri', 750.00, CONVERT(DATE, '06-01-2024', 105)),
('Sergi malzemeleri', 900.00, CONVERT(DATE, '07-01-2024', 105)),
('Pazarlama ve reklam masrafları', 1200.00, CONVERT(DATE, '08-01-2024', 105)),
('Bilet satış sistemi güncelleme', 400.00, CONVERT(DATE, '09-01-2024', 105)),
('Kırtasiye malzemeleri', 300.00, CONVERT(DATE, '10-01-2024', 105)),
('Sigorta ödemeleri', 1000.00, CONVERT(DATE, '11-01-2024', 105)),
('Sergi açılışı için catering', 850.00, CONVERT(DATE, '12-01-2024', 105)),
('İç mekan düzenlemesi', 1500.00, CONVERT(DATE, '13-01-2024', 105)),
('Yol masrafları', 200.00, CONVERT(DATE, '14-01-2024', 105)),
('Araç kiralama', 500.00, CONVERT(DATE, '15-01-2024', 105)),
('Güvenlik hizmetleri', 1000.00, CONVERT(DATE, '16-01-2024', 105)),
('Çalışan eğitim giderleri', 600.00, CONVERT(DATE, '17-01-2024', 105)),
('Temizlik hizmetleri', 300.00, CONVERT(DATE, '18-01-2024', 105)),
('Çalışan maaşları (ekstra)', 1500.00, CONVERT(DATE, '19-01-2024', 105)),
('Yılbaşı etkinliği gideri', 700.00, CONVERT(DATE, '20-01-2024', 105));


INSERT INTO EserBakimKayitlari (EserID, BakimTarihi, YapilanIslem, SorumluKisi) VALUES
(1, CONVERT(DATE, '15-03-2023', 105), 'Temizlik ve bakım', 2),
(2, CONVERT(DATE, '22-07-2022', 105), 'Renk tazeleme', 3),
(3, CONVERT(DATE, '10-11-2021', 105), 'Yüzey düzeltme', 4),
(4, CONVERT(DATE, '03-05-2024', 105), 'Restorasyon', 5),
(5, CONVERT(DATE, '27-08-2023', 105), 'Zarar tespiti ve onarım', 6),
(6, CONVERT(DATE, '19-12-2022', 105), 'Yüzey temizliği', 7),
(7, CONVERT(DATE, '07-06-2023', 105), 'Materyal yenileme', 8),
(8, CONVERT(DATE, '25-09-2024', 105), 'Görsel düzenleme', 9),
(9, CONVERT(DATE, '04-01-2022', 105), 'Boyama ve yenileme', 10),
(10, CONVERT(DATE, '14-04-2023', 105), 'Yapısal onarım', 11),
(11, CONVERT(DATE, '30-10-2023', 105), 'Koruyucu kaplama uygulama', 12),
(12, CONVERT(DATE, '11-02-2021', 105), 'Yüzey bakımı', 13),
(13, CONVERT(DATE, '06-06-2024', 105), 'İz bırakma onarımı', 14),
(14, CONVERT(DATE, '08-03-2022', 105), 'Yer değişikliği', 15),
(15, CONVERT(DATE, '12-11-2022', 105), 'İzleme ve temizlik', 16),
(16, CONVERT(DATE, '01-08-2021', 105), 'Restorasyon ve koruma', 17),
(17, CONVERT(DATE, '17-01-2024', 105), 'Yüzey temizliği', 18),
(18, CONVERT(DATE, '28-02-2023', 105), 'Dokuma bakımı', 19),
(19, CONVERT(DATE, '19-09-2022', 105), 'Ekipman bakım çalışması', 20),
(20, CONVERT(DATE, '23-12-2021', 105), 'Yapısal onarım ve boya', 1);



INSERT INTO SanatAkimlari (Ad, Aciklama) VALUES
('Rönesans', '15. yüzyılda başlayan klasik sanat akımı'),
('Barok', 'Dramatik anlatım ve detaylı süslemeleriyle bilinen akım'),
('Neoklasizm', 'Antik Yunan ve Roma sanatının yeniden yorumu'),
('Romantizm', 'Duygu ve bireyselliği öne çıkaran sanat akımı'),
('Empresyonizm', 'Işık ve anlık izlenimlerin yansıtıldığı akım'),
('Ekspresyonizm', 'İçsel duygu durumlarını abartılı biçimle yansıtan akım'),
('Kübizm', 'Doğayı geometrik formlarla ifade eden sanat anlayışı'),
('Fütürizm', 'Hız, teknoloji ve modernizmi konu alan akım'),
('Dadaizm', 'Sanatın mantıksızlık ve rastlantı ile ele alındığı akım'),
('Sürrealizm', 'Bilinçaltı dünyayı ve rüyaları yansıtan akım'),
('Pop Art', 'Popüler kültür imgeleriyle yapılan sanat'),
('Minimalizm', 'Sadelik ve arınmışlık üzerine kurulu sanat akımı'),
('Soyut Dışavurumculuk', 'Duyguların soyut biçimlerle ifade edilmesi'),
('Konseptüel Sanat', 'Fikirin sanatın önüne geçtiği akım'),
('Postmodernizm', 'Modernizme tepki olarak ortaya çıkan eklektik sanat akımı'),
('Dijital Sanat', 'Bilgisayar teknolojisiyle oluşturulan sanat'),
('Enstalasyon Sanatı', 'Mekâna özel üç boyutlu sanat uygulamaları'),
('Yeni Medya Sanatı', 'İnteraktif dijital teknolojilerle yapılan sanat'),
('Street Art', 'Kamusal alanlarda yapılan sanat, genellikle politik içerikli'),
('Naif Sanat', 'Eğitim almamış sanatçıların içtenlikli ve sade üslupları');


INSERT INTO SanatciAkim (SanatciID, AkimID) VALUES
(1, 1),   -- Leonardo da Vinci → Rönesans
(2, 5),   -- Vincent van Gogh → Empresyonizm
(3, 7),   -- Pablo Picasso → Kübizm
(4, 4),   -- Frida Kahlo → Romantizm
(5, 10),  -- Salvador Dalí → Sürrealizm
(6, 5),   -- Claude Monet → Empresyonizm
(7, 1),   -- Michelangelo → Rönesans
(8, 13),  -- Jackson Pollock → Soyut Dışavurumculuk
(9, 11),  -- Andy Warhol → Pop Art
(10, 19), -- İbrahim Balaban → Street Art
(11, 19), -- Banksy → Street Art
(12, 16), -- Ayşe Yılmaz → Dijital Sanat
(13, 14), -- Ali Demir → Konseptüel Sanat
(14, 16), -- Elif Kaya → Dijital Sanat
(15, 7),  -- Kazimir Malevich → Kübizm
(16, 17), -- Yayoi Kusama → Enstalasyon Sanatı
(17, 2),  -- Henri Matisse → Barok
(18, 12), -- Georgia O’Keeffe → Minimalizm
(19, 6),  -- Lucian Freud → Ekspresyonizm
(20, 16); -- Zehra Arslan → Dijital Sanat


INSERT INTO Adminler (KullaniciAdi, SifreHash, Ad, Soyad, Email, YetkiSeviyesi) VALUES
('admin01', '5f4dc', 'Ahmet', 'Yılmaz', 'ahmet.yilmaz@muze.com', 'Tam Yetki'),
('admin02', 'e99a', 'Mehmet', 'Kaya', 'mehmet.kaya@muze.com', 'Sınırlı'),
('admin03', '25d5', 'Ayşe', 'Demir', 'ayse.demir@muze.com', 'Tam Yetki'),
('admin04', '1d2d', 'Zeynep', 'Çelik', 'zeynep.celik@muze.com', 'Sınırlı'),
('admin05', '03c6', 'Ali', 'Yıldız', 'ali.yildiz@muze.com', 'Tam Yetki'),
('admin06', 'c4ca', 'Veli', 'Güzel', 'veli.guzel@muze.com', 'Sınırlı'),
('admin07', '098f', 'Fatma', 'Şahin', 'fatma.sahin@muze.com', 'Tam Yetki'),
('admin08', '9a03', 'Burak', 'Sarı', 'burak.sari@muze.com', 'Sınırlı'),
('admin09', 'ac34', 'Esra', 'Aydın', 'esra.aydin@muze.com', 'Tam Yetki'),
('admin10', '27e3', 'Hakan', 'Kuş', 'hakan.kus@muze.com', 'Sınırlı'),
('admin11', 'c20a', 'Cem', 'Köseoğlu', 'cem.koseoglu@muze.com', 'Tam Yetki'),
('admin12', 'd2d2', 'Seda', 'Pekdemir', 'seda.pekdemir@muze.com', 'Sınırlı'),
('admin13', 'ab56', 'Kemal', 'Doğan', 'kemal.dogan@muze.com', 'Tam Yetki'),
('admin14', '5f9d', 'Serdar', 'Büyük', 'serdar.buyuk@muze.com', 'Sınırlı'),
('admin15', '7c4a', 'Emine', 'Akdeniz', 'emine.akdeniz@muze.com', 'Tam Yetki'),
('admin16', 'd3d9', 'İsmail', 'Çolak', 'ismail.colak@muze.com', 'Sınırlı'),
('admin17', '5a10', 'Aylin', 'Balkan', 'aylin.balkan@muze.com', 'Tam Yetki'),
('admin18', '8d96', 'Deniz', 'Güler', 'deniz.guler@muze.com', 'Sınırlı'),
('admin19', 'abf3f', 'Selim', 'Yalçın', 'selim.yalcin@muze.com', 'Tam Yetki'),
('admin20', '76a2', 'Duygu', 'Kara', 'duygu.kara@muze.com', 'Sınırlı');

