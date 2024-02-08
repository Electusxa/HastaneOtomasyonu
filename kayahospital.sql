-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Şub 2024, 22:01:12
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

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
  `ad` varchar(45) DEFAULT NULL,
  `soyad` varchar(45) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular1`
--

CREATE TABLE `duyurular1` (
  `idduyurular` int(11) NOT NULL,
  `DuyuruY` varchar(45) DEFAULT NULL,
  `duyurumesaj` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `hastaadres` varchar(45) DEFAULT NULL,
  `hastamesaj` varchar(45) DEFAULT NULL,
  `hastapol` varchar(45) DEFAULT NULL,
  `kayityetkilisi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `onaykod`
--

CREATE TABLE `onaykod` (
  `id` int(11) NOT NULL,
  `Onaykod` varchar(45) DEFAULT NULL,
  `Mail` varchar(200) DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `receteler`
--

CREATE TABLE `receteler` (
  `ReceteNo` int(11) NOT NULL,
  `HastaTC` varchar(45) DEFAULT NULL,
  `HastaAd` varchar(45) DEFAULT NULL,
  `HastaSoyad` varchar(45) DEFAULT NULL,
  `ReceteTarih` varchar(45) DEFAULT NULL,
  `İlaclar` varchar(200) DEFAULT NULL,
  `K_Talimat` varchar(200) DEFAULT NULL,
  `DoktorTC` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `YetkiliTC` varchar(30) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`YetkiliTC`, `Username`, `Password`, `Email`) VALUES
('3123', 'Ali', 'q/OFvkcGj7M=', 'alifiratpolat992@gmail.com');

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
  ADD PRIMARY KEY (`idduyurular`);

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
  MODIFY `idduyurular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `onaykod`
--
ALTER TABLE `onaykod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
