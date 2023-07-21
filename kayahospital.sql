-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Tem 2023, 23:10:17
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kayahospital`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doktorlar`
--

CREATE TABLE `doktorlar` (
  `tc` int(11) NOT NULL,
  `Ad` varchar(45) DEFAULT NULL,
  `Soyad` varchar(45) DEFAULT NULL,
  `cinsiyet` varchar(45) DEFAULT NULL,
  `dogumyer` varchar(45) DEFAULT NULL,
  `ddogumt` varchar(45) DEFAULT NULL,
  `telno` varchar(45) DEFAULT NULL,
  `sabittel` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `poliklinik` varchar(45) DEFAULT NULL,
  `sifre` varchar(200) DEFAULT NULL,
  `kayityetkilisi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `doktorlar`
--

INSERT INTO `doktorlar` (`tc`, `Ad`, `Soyad`, `cinsiyet`, `dogumyer`, `ddogumt`, `telno`, `sabittel`, `mail`, `poliklinik`, `sifre`, `kayityetkilisi`) VALUES
(393, 'Aasv', 'polat', 'Kadın', 'Sivas', '21.05.2023 16:09:20', '(666) 546-4564', '(654) 632-4341', 'kjasd', 'Aile Hekimliği', 'YEpLCwXyKZM=', 'Ali'),
(12345, 'Ali Fırat', 'Polat', 'Erkek ', 'İstanbul', '23.04.1981 00:54:20', '05447245771', '02167245771', 'afp992@gmail.com', 'Aile Hekimliği', 'AhmetStone1', 'Ali'),
(123123, 'asdasd', 'asdasd', 'Erkek ', 'Sivas', '26.04.2023 20:54:04', '(544) 724-5771', '(546) 500-2613', 'easd123', 'Aile Hekimliği', '1234', 'Ali'),
(1231235, 'asdv', 'asdaew', 'Erkek ', 'Sivas', '15.05.2023 21:06:07', '(555) 555-5555', '(444) 444-4444', '1231', 'Aile Hekimliği', 'eBmjdjsG/kw=', 'Ali');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular1`
--

CREATE TABLE `duyurular1` (
  `duyuruid` int(11) NOT NULL,
  `DuyuruY` varchar(45) DEFAULT NULL,
  `duyurumesajı` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `duyurular1`
--

INSERT INTO `duyurular1` (`duyuruid`, `DuyuruY`, `duyurumesajı`) VALUES
(2, NULL, '123'),
(3, 'Ali', 'Sea'),
(4, 'Ali', 'Ananızı sikeyim hastane de su yok'),
(5, 'Ali', 'Ananızı sikiyim hastanede su kalmamış'),
(6, 'Ali', 'atatürk');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hastalar`
--

CREATE TABLE `hastalar` (
  `tc` varchar(45) NOT NULL,
  `ad` varchar(45) DEFAULT NULL,
  `soyad` varchar(45) DEFAULT NULL,
  `cinsiyet` varchar(45) DEFAULT NULL,
  `dogumyer` varchar(45) DEFAULT NULL,
  `dogumtarih` varchar(45) DEFAULT NULL,
  `anneadi` varchar(45) DEFAULT NULL,
  `annetel` varchar(45) DEFAULT NULL,
  `babaadi` varchar(45) DEFAULT NULL,
  `babatel` varchar(45) DEFAULT NULL,
  `hastatel` varchar(45) DEFAULT NULL,
  `hastamail` varchar(45) DEFAULT NULL,
  `hastaadres` varchar(100) DEFAULT NULL,
  `hastamesaj` varchar(45) DEFAULT NULL,
  `hastapol` varchar(45) DEFAULT NULL,
  `kayityetkilisi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hastalar`
--

INSERT INTO `hastalar` (`tc`, `ad`, `soyad`, `cinsiyet`, `dogumyer`, `dogumtarih`, `anneadi`, `annetel`, `babaadi`, `babatel`, `hastatel`, `hastamail`, `hastaadres`, `hastamesaj`, `hastapol`, `kayityetkilisi`) VALUES
('123214', 'Ali', 'asdasd', 'Erkek ', 'Sivas', '24.04.2023 16:39:40', 'asdd', '(123) 4  -', 'asdv', '12345', '(123) 14 -', 'electusxa@outlook.com', 'asd', 'asd', 'Aile Hekimliği', 'Ali');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `onaykod`
--

CREATE TABLE `onaykod` (
  `id` int(11) NOT NULL,
  `onaykod` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `poliklinikler`
--

CREATE TABLE `poliklinikler` (
  `id` int(11) NOT NULL,
  `pAd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `poliklinikler`
--

INSERT INTO `poliklinikler` (`id`, `pAd`) VALUES
(1, 'Aile Hekimliği'),
(2, 'Çocuk Sağlığı ve Hastalıklaır'),
(3, 'İç Hastalıklar'),
(4, 'Cildiye'),
(5, 'Radyoloji'),
(6, 'Psikolog'),
(7, 'Psikiyatri'),
(8, 'Nöroloji'),
(9, 'Nefroloji'),
(10, 'Göğüs Hastalıkları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevular`
--

CREATE TABLE `randevular` (
  `HastaTC` varchar(45) NOT NULL,
  `Poliklinik` varchar(45) DEFAULT NULL,
  `Doktor` varchar(45) DEFAULT NULL,
  `DoktorTC` varchar(45) DEFAULT NULL,
  `HastaMsg` varchar(45) DEFAULT NULL,
  `Tarih` varchar(45) DEFAULT NULL,
  `RandevuSaati` varchar(45) DEFAULT NULL,
  `KayitYetkilisi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `randevular`
--

INSERT INTO `randevular` (`HastaTC`, `Poliklinik`, `Doktor`, `DoktorTC`, `HastaMsg`, `Tarih`, `RandevuSaati`, `KayitYetkilisi`) VALUES
('123214', 'Aile Hekimliği', 'Ali Fırat Polat', NULL, 'Sa', '22 Mayıs 2023 Pazartesi', '9.30', 'Ali');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `receteler`
--

CREATE TABLE `receteler` (
  `ReceteNo` varchar(45) NOT NULL,
  `HastaTC` varchar(45) DEFAULT NULL,
  `HastaAd` varchar(45) DEFAULT NULL,
  `HastaSoyad` varchar(45) DEFAULT NULL,
  `ReceteTarih` varchar(45) DEFAULT NULL,
  `İlaclar` varchar(200) DEFAULT NULL,
  `K_Talimat` varchar(200) DEFAULT NULL,
  `DoktorTC` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `receteler`
--

INSERT INTO `receteler` (`ReceteNo`, `HastaTC`, `HastaAd`, `HastaSoyad`, `ReceteTarih`, `İlaclar`, `K_Talimat`, `DoktorTC`) VALUES
('17947', '123214', 'Ali', 'asdasd', '31.05.2023 21:22:48', 'Parol Dolereks', 'Kafanısa göre içsin elbet bir gün hepimiz ölücez', '393'),
('32523', '123214', 'Ali', 'asdasd', '18.07.2023 02:08:30', 'parol', 'test', '393'),
('3641', '123214', 'asdasd', 'asdasd', '21.05.2023 16:10:19', 'parol,dolerex,ahmet kaya vitamini', 'Parol dan çok çok 6 saatte 1 tane kullansın dolerex canı sıkılınca ahmet kayada morali bozulunca kullansın', '393');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `YetkiliTC` varchar(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`YetkiliTC`, `Username`, `Password`, `Email`) VALUES
('12', 'Ali', 'RkMI88DMGX8=', 'electusxa@outlook.com'),
('123', 'asd', 'YEpLCwXyKZM=', 'ahmet'),
('124', 'asdasv', '2epfQ7T4S88=', 'wqe'),
('393', 'asd', 'LZcM3MX1jPQ=', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `doktorlar`
--
ALTER TABLE `doktorlar`
  ADD PRIMARY KEY (`tc`);

--
-- Tablo için indeksler `duyurular1`
--
ALTER TABLE `duyurular1`
  ADD PRIMARY KEY (`duyuruid`);

--
-- Tablo için indeksler `hastalar`
--
ALTER TABLE `hastalar`
  ADD PRIMARY KEY (`tc`);

--
-- Tablo için indeksler `onaykod`
--
ALTER TABLE `onaykod`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `poliklinikler`
--
ALTER TABLE `poliklinikler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `randevular`
--
ALTER TABLE `randevular`
  ADD PRIMARY KEY (`HastaTC`);

--
-- Tablo için indeksler `receteler`
--
ALTER TABLE `receteler`
  ADD PRIMARY KEY (`ReceteNo`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`YetkiliTC`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `duyurular1`
--
ALTER TABLE `duyurular1`
  MODIFY `duyuruid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `onaykod`
--
ALTER TABLE `onaykod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
