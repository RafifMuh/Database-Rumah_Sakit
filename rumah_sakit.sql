-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2025 pada 07.48
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumah_sakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`AdminID`, `UserName`) VALUES
(1000, 'Ardianto'),
(1001, 'Bella'),
(1002, 'Chandra'),
(1003, 'Dwi'),
(1004, 'Eka'),
(1005, 'Farhan'),
(1006, 'Galih'),
(1007, 'Hana'),
(1008, 'Indra'),
(1009, 'Joko'),
(1010, 'Karina'),
(1011, 'Lila'),
(1012, 'Muhammad'),
(1013, 'Nadia'),
(1014, 'Oki'),
(1015, 'Prita'),
(1016, 'Qiana'),
(1017, 'Rizki'),
(1018, 'Sari'),
(1019, 'Taufik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `apotek`
--

CREATE TABLE `apotek` (
  `ApotekID` int(11) NOT NULL,
  `ApotekerID` int(11) DEFAULT NULL,
  `ResepID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `apoteker`
--

CREATE TABLE `apoteker` (
  `ApotekerID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `apoteker`
--

INSERT INTO `apoteker` (`ApotekerID`, `Username`) VALUES
(2000, 'Alif'),
(2001, 'Bima'),
(2002, 'Citra'),
(2003, 'Dinda'),
(2004, 'Elina'),
(2005, 'Faisal'),
(2006, 'Gita'),
(2007, 'Haris'),
(2008, 'Intan'),
(2009, 'Junaid'),
(2010, 'Kiara'),
(2011, 'Lestari'),
(2012, 'Miko'),
(2013, 'Nabila'),
(2014, 'Oskar'),
(2015, 'Puspa'),
(2016, 'Qomar'),
(2017, 'Rani'),
(2018, 'Surya'),
(2019, 'Tessa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `DokterID` int(11) NOT NULL,
  `NamaDokter` varchar(50) NOT NULL,
  `Spesialis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`DokterID`, `NamaDokter`, `Spesialis`) VALUES
(3000, 'Alexander', 'Anak'),
(3001, 'Emma', 'Umum'),
(3002, 'Noah', 'Umum'),
(3003, 'Olivia', 'Kulit'),
(3004, 'James', 'Kulit'),
(3005, 'Isabella', 'Jantung'),
(3006, 'Lucas', 'Jantung'),
(3007, 'Ava', 'Bedah'),
(3008, 'Ethan', 'Bedah'),
(3009, 'Mia', 'Gigi'),
(3010, 'Mason', 'Gigi'),
(3011, 'Harper', 'THT'),
(3012, 'Benjamin', 'THT'),
(3013, 'Charlotte', 'Paru'),
(3014, 'Henry', 'Paru'),
(3015, 'Amelia', 'Saraf'),
(3016, 'Oliver', 'Saraf'),
(3017, 'Lily', 'Kesehatan Mental');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab`
--

CREATE TABLE `lab` (
  `LabID` int(11) NOT NULL,
  `HasilLab` varchar(50) NOT NULL,
  `DokterID` int(11) DEFAULT NULL,
  `PemeriksaanID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `PasienID` int(11) NOT NULL,
  `NamaPasien` varchar(50) NOT NULL,
  `TempatLahir` varchar(100) DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Alamat` varchar(100) NOT NULL,
  `JenisKelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `PendaftaranID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`PasienID`, `NamaPasien`, `TempatLahir`, `TanggalLahir`, `Alamat`, `JenisKelamin`, `PendaftaranID`) VALUES
(4000, 'Ujang', 'Bojonegoro', '2000-05-20', 'Jl Mangga No.32, \r\nKota Pontianak', 'Laki-laki', 5000),
(4001, 'Ahmad', 'Jakarta', '1990-03-15', 'Jl. Merdeka No. 10, \r\nJakarta', 'Laki-laki', 5001),
(4002, 'Siti', 'Bandung', '1985-07-22', 'Jl. Anggrek No. 5, \r\nBandung', 'Perempuan', 5002),
(4003, 'Joko', 'Surabaya', '1992-11-10', 'Jl. Raya No. 34, \r\nSurabaya', 'Laki-laki', 5003),
(4004, 'Linda', 'Medan', '1988-06-25', 'Jl. Kembang No. 8, \r\nMedan', 'Perempuan', 5004),
(4005, 'Rudi', 'Makassar', '1995-02-17', 'Jl. Raya Makassar No. \r\n4, Makassar', 'Laki-laki', 5005),
(4006, 'Ayu', 'Yogyakarta', '1998-09-30', 'Jl. Mangga No. 21, \r\nYogyakarta', 'Perempuan', 5006),
(4007, 'Budi', 'Denpasar', '1993-12-12', 'Jl. Kenanga No. 15, \r\nDenpasar', 'Laki-laki', 5007),
(4008, 'Dinda', 'Palembang', '1991-01-18', 'Jl. Nangka No. 40, \r\nPalembang', 'Perempuan', 5008),
(4009, 'Eka', 'Pontianak', '1987-05-03', 'Jl. Bambu No. 60, \r\nPontianak', 'Perempuan', 5009),
(4010, 'Tomy', 'Solo', '1989-08-27', 'Jl. Anggrek No. 12, \r\nSolo', 'Laki-laki', 5010),
(4011, 'Rina', 'Boyolali', '1994-04-14', 'Jl. Rimba No. 30, \r\nBoyolali', 'Perempuan', 5011),
(4012, 'Lusi', 'Bali', '1996-06-05', 'Jl. Laut No. 22, Bali', 'Perempuan', 5012),
(4013, 'Fadil', 'Tangerang', '1990-03-09', 'Jl. Serut No. 3, \r\nTangerang', 'Laki-laki', 5013),
(4014, 'Putri', 'Bali', '1997-10-12', 'Jl. Pahlawan No. 5, \r\nBali', 'Perempuan', 5014),
(4015, 'Lili', 'Bogor', '1992-01-20', 'Jl. Merpati No. 18, \r\nBogor', 'Perempuan', 5015),
(4016, 'Anton', 'Bekasi', '1986-02-13', 'Jl. Bukit No. 9, \r\nBekasi', 'Laki-laki', 5016),
(4017, 'Maya', 'Semarang', '1994-07-07', 'Jl. Cempaka No. 2, \r\nSemarang', 'Perempuan', 5017),
(4018, 'Reza', 'Jakarta', '1993-11-25', 'Jl. Raya Jakarta No. \r\n17, Jakarta', 'Laki-laki', 5018),
(4019, 'Dina', 'Malang', '1990-09-30', 'Jl. Lembah No. 25, \r\nMalang', 'Perempuan', 5019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `PembayaranID` int(11) NOT NULL,
  `RekamMedisID` int(11) DEFAULT NULL,
  `ResepID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `PemeriksaanID` int(11) NOT NULL,
  `WaktuPemeriksaan` datetime DEFAULT NULL,
  `RiwayatPenyakit` varchar(100) DEFAULT NULL,
  `HasilPemeriksaan` varchar(100) DEFAULT NULL,
  `RuangPoliID` int(11) DEFAULT NULL,
  `PasienID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `PendaftaranID` int(11) NOT NULL,
  `NoAntrian` int(11) NOT NULL,
  `TanggalDaftar` date NOT NULL,
  `AdminID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`PendaftaranID`, `NoAntrian`, `TanggalDaftar`, `AdminID`) VALUES
(5000, 1, '2024-01-30', 1000),
(5001, 2, '2024-02-07', 1001),
(5002, 3, '2024-02-19', 1002),
(5003, 4, '2024-03-22', 1003),
(5004, 5, '2024-03-29', 1004),
(5005, 6, '2024-04-10', 1005),
(5006, 7, '2024-04-17', 1006),
(5007, 8, '2024-05-06', 1007),
(5008, 9, '2024-05-12', 1008),
(5009, 10, '2024-06-03', 1009),
(5010, 11, '2024-06-14', 1010),
(5011, 12, '2024-07-02', 1011),
(5012, 13, '2024-07-15', 1012),
(5013, 14, '2024-08-05', 1013),
(5014, 15, '2024-08-19', 1014),
(5015, 16, '2024-09-11', 1015),
(5016, 17, '2024-09-18', 1016),
(5017, 18, '2024-10-09', 1017),
(5018, 19, '2024-10-25', 1018),
(5019, 20, '2024-11-10', 1019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekammedis`
--

CREATE TABLE `rekammedis` (
  `RekamMedisID` int(11) NOT NULL,
  `PemeriksaanID` int(11) DEFAULT NULL,
  `LabID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep`
--

CREATE TABLE `resep` (
  `ResepID` int(11) NOT NULL,
  `NamaObat` varchar(50) NOT NULL,
  `JenisObat` varchar(50) NOT NULL,
  `RekamMedisID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangpoli`
--

CREATE TABLE `ruangpoli` (
  `RuangPoliID` int(11) NOT NULL,
  `NamaRuang` varchar(50) NOT NULL,
  `NomerRuang` int(11) DEFAULT NULL,
  `DokterID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruangpoli`
--

INSERT INTO `ruangpoli` (`RuangPoliID`, `NamaRuang`, `NomerRuang`, `DokterID`) VALUES
(6000, 'Poli Anak', 101, 3000),
(6001, 'Poli Gigi', 102, 3001),
(6002, 'Poli Umum', 103, 3002),
(6003, 'Poli Bedah', 104, 3003),
(6004, 'Poli Kandungan', 105, 3004),
(6005, 'Poli Jantung', 106, 3005),
(6006, 'Poli Paru', 107, 3006),
(6007, 'Poli Saraf', 108, 3007),
(6008, 'Poli THT', 109, 3008),
(6009, 'Poli Mata', 110, 3009),
(6010, 'Poli Gizi', 111, 3010),
(6011, 'Poli Kulit', 112, 3011),
(6012, 'Poli Psikiatri', 113, 3012),
(6013, 'Poli Rehabilitasi', 114, 3013),
(6014, 'Poli Geriatri', 115, 3014),
(6015, 'Poli Endokrin', 116, 3015),
(6016, 'Poli Hematologi', 117, 3016),
(6017, 'Poli Onkologi', 118, 3017),
(6018, 'Poli Urologi', 119, 3018),
(6019, 'Poli Ortopedi', 120, 3019),
(6020, 'Poli Anak', 101, 3000),
(6021, 'Poli Gigi', 102, 3001),
(6022, 'Poli Umum', 103, 3002),
(6023, 'Poli Bedah', 104, 3003),
(6024, 'Poli Kandungan', 105, 3004),
(6025, 'Poli Jantung', 106, 3005),
(6026, 'Poli Paru', 107, 3006),
(6027, 'Poli Saraf', 108, 3007),
(6028, 'Poli THT', 109, 3008),
(6029, 'Poli Mata', 110, 3009),
(6030, 'Poli Gizi', 111, 3010),
(6031, 'Poli Kulit', 112, 3011),
(6032, 'Poli Psikiatri', 113, 3012),
(6033, 'Poli Rehabilitasi', 114, 3013),
(6034, 'Poli Geriatri', 115, 3014),
(6035, 'Poli Endokrin', 116, 3015),
(6036, 'Poli Hematologi', 117, 3016),
(6037, 'Poli Onkologi', 118, 3017),
(6038, 'Poli Urologi', 119, 3018),
(6039, 'Poli Ortopedi', 120, 3019),
(6040, 'Poli Anak', 101, 3000),
(6041, 'Poli Gigi', 102, 3001),
(6042, 'Poli Umum', 103, 3002),
(6043, 'Poli Bedah', 104, 3003),
(6044, 'Poli Kandungan', 105, 3004),
(6045, 'Poli Jantung', 106, 3005),
(6046, 'Poli Paru', 107, 3006),
(6047, 'Poli Saraf', 108, 3007),
(6048, 'Poli THT', 109, 3008),
(6049, 'Poli Mata', 110, 3009),
(6050, 'Poli Gizi', 111, 3010),
(6051, 'Poli Kulit', 112, 3011),
(6052, 'Poli Psikiatri', 113, 3012),
(6053, 'Poli Rehabilitasi', 114, 3013),
(6054, 'Poli Geriatri', 115, 3014),
(6055, 'Poli Endokrin', 116, 3015),
(6056, 'Poli Hematologi', 117, 3016),
(6057, 'Poli Onkologi', 118, 3017),
(6058, 'Poli Urologi', 119, 3018),
(6059, 'Poli Ortopedi', 120, 3019),
(6060, 'Poli Anak', 101, 3000),
(6061, 'Poli Gigi', 102, 3001),
(6062, 'Poli Umum', 103, 3002),
(6063, 'Poli Bedah', 104, 3003),
(6064, 'Poli Kandungan', 105, 3004),
(6065, 'Poli Jantung', 106, 3005),
(6066, 'Poli Paru', 107, 3006),
(6067, 'Poli Saraf', 108, 3007),
(6068, 'Poli THT', 109, 3008),
(6069, 'Poli Mata', 110, 3009),
(6070, 'Poli Gizi', 111, 3010),
(6071, 'Poli Kulit', 112, 3011),
(6072, 'Poli Psikiatri', 113, 3012),
(6073, 'Poli Rehabilitasi', 114, 3013),
(6074, 'Poli Geriatri', 115, 3014),
(6075, 'Poli Endokrin', 116, 3015),
(6076, 'Poli Hematologi', 117, 3016),
(6077, 'Poli Onkologi', 118, 3017),
(6078, 'Poli Urologi', 119, 3018),
(6079, 'Poli Ortopedi', 120, 3019),
(6080, 'Poli Anak', 101, 3000),
(6081, 'Poli Gigi', 102, 3001),
(6082, 'Poli Umum', 103, 3002),
(6083, 'Poli Bedah', 104, 3003),
(6084, 'Poli Kandungan', 105, 3004),
(6085, 'Poli Jantung', 106, 3005),
(6086, 'Poli Paru', 107, 3006),
(6087, 'Poli Saraf', 108, 3007),
(6088, 'Poli THT', 109, 3008),
(6089, 'Poli Mata', 110, 3009),
(6090, 'Poli Gizi', 111, 3010),
(6091, 'Poli Kulit', 112, 3011),
(6092, 'Poli Psikiatri', 113, 3012),
(6093, 'Poli Rehabilitasi', 114, 3013),
(6094, 'Poli Geriatri', 115, 3014),
(6095, 'Poli Endokrin', 116, 3015),
(6096, 'Poli Hematologi', 117, 3016),
(6097, 'Poli Onkologi', 118, 3017),
(6098, 'Poli Urologi', 119, 3018),
(6099, 'Poli Ortopedi', 120, 3019),
(6100, 'Poli Anak', 101, 3000),
(6101, 'Poli Gigi', 102, 3001),
(6102, 'Poli Umum', 103, 3002),
(6103, 'Poli Bedah', 104, 3003),
(6104, 'Poli Kandungan', 105, 3004),
(6105, 'Poli Jantung', 106, 3005),
(6106, 'Poli Paru', 107, 3006),
(6107, 'Poli Saraf', 108, 3007),
(6108, 'Poli THT', 109, 3008),
(6109, 'Poli Mata', 110, 3009),
(6110, 'Poli Gizi', 111, 3010),
(6111, 'Poli Kulit', 112, 3011),
(6112, 'Poli Psikiatri', 113, 3012),
(6113, 'Poli Rehabilitasi', 114, 3013),
(6114, 'Poli Geriatri', 115, 3014),
(6115, 'Poli Endokrin', 116, 3015),
(6116, 'Poli Hematologi', 117, 3016),
(6117, 'Poli Onkologi', 118, 3017),
(6118, 'Poli Urologi', 119, 3018),
(6119, 'Poli Ortopedi', 120, 3019),
(6120, 'Poli Anak', 101, 3000),
(6121, 'Poli Gigi', 102, 3001),
(6122, 'Poli Umum', 103, 3002),
(6123, 'Poli Bedah', 104, 3003),
(6124, 'Poli Kandungan', 105, 3004),
(6125, 'Poli Jantung', 106, 3005),
(6126, 'Poli Paru', 107, 3006),
(6127, 'Poli Saraf', 108, 3007),
(6128, 'Poli THT', 109, 3008),
(6129, 'Poli Mata', 110, 3009),
(6130, 'Poli Gizi', 111, 3010),
(6131, 'Poli Kulit', 112, 3011),
(6132, 'Poli Psikiatri', 113, 3012),
(6133, 'Poli Rehabilitasi', 114, 3013),
(6134, 'Poli Geriatri', 115, 3014),
(6135, 'Poli Endokrin', 116, 3015),
(6136, 'Poli Hematologi', 117, 3016),
(6137, 'Poli Onkologi', 118, 3017),
(6138, 'Poli Urologi', 119, 3018),
(6139, 'Poli Ortopedi', 120, 3019),
(6140, 'Poli Anak', 101, 3000),
(6141, 'Poli Gigi', 102, 3001),
(6142, 'Poli Umum', 103, 3002),
(6143, 'Poli Bedah', 104, 3003),
(6144, 'Poli Kandungan', 105, 3004),
(6145, 'Poli Jantung', 106, 3005),
(6146, 'Poli Paru', 107, 3006),
(6147, 'Poli Saraf', 108, 3007),
(6148, 'Poli THT', 109, 3008),
(6149, 'Poli Mata', 110, 3009),
(6150, 'Poli Gizi', 111, 3010),
(6151, 'Poli Kulit', 112, 3011),
(6152, 'Poli Psikiatri', 113, 3012),
(6153, 'Poli Rehabilitasi', 114, 3013),
(6154, 'Poli Geriatri', 115, 3014),
(6155, 'Poli Endokrin', 116, 3015),
(6156, 'Poli Hematologi', 117, 3016),
(6157, 'Poli Onkologi', 118, 3017),
(6158, 'Poli Urologi', 119, 3018),
(6159, 'Poli Ortopedi', 120, 3019),
(6160, 'Poli Anak', 101, 3000),
(6161, 'Poli Gigi', 102, 3001),
(6162, 'Poli Umum', 103, 3002),
(6163, 'Poli Bedah', 104, 3003),
(6164, 'Poli Kandungan', 105, 3004),
(6165, 'Poli Jantung', 106, 3005),
(6166, 'Poli Paru', 107, 3006),
(6167, 'Poli Saraf', 108, 3007),
(6168, 'Poli THT', 109, 3008),
(6169, 'Poli Mata', 110, 3009),
(6170, 'Poli Gizi', 111, 3010),
(6171, 'Poli Kulit', 112, 3011),
(6172, 'Poli Psikiatri', 113, 3012),
(6173, 'Poli Rehabilitasi', 114, 3013),
(6174, 'Poli Geriatri', 115, 3014),
(6175, 'Poli Endokrin', 116, 3015),
(6176, 'Poli Hematologi', 117, 3016),
(6177, 'Poli Onkologi', 118, 3017),
(6178, 'Poli Urologi', 119, 3018),
(6179, 'Poli Ortopedi', 120, 3019),
(6180, 'Poli Anak', 101, 3000),
(6181, 'Poli Gigi', 102, 3001),
(6182, 'Poli Umum', 103, 3002),
(6183, 'Poli Bedah', 104, 3003),
(6184, 'Poli Kandungan', 105, 3004),
(6185, 'Poli Jantung', 106, 3005),
(6186, 'Poli Paru', 107, 3006),
(6187, 'Poli Saraf', 108, 3007),
(6188, 'Poli THT', 109, 3008),
(6189, 'Poli Mata', 110, 3009),
(6190, 'Poli Gizi', 111, 3010),
(6191, 'Poli Kulit', 112, 3011),
(6192, 'Poli Psikiatri', 113, 3012),
(6193, 'Poli Rehabilitasi', 114, 3013),
(6194, 'Poli Geriatri', 115, 3014),
(6195, 'Poli Endokrin', 116, 3015),
(6196, 'Poli Hematologi', 117, 3016),
(6197, 'Poli Onkologi', 118, 3017),
(6198, 'Poli Urologi', 119, 3018),
(6199, 'Poli Ortopedi', 120, 3019),
(6200, 'Poli Anak', 101, 3000),
(6201, 'Poli Gigi', 102, 3001),
(6202, 'Poli Umum', 103, 3002),
(6203, 'Poli Bedah', 104, 3003),
(6204, 'Poli Kandungan', 105, 3004),
(6205, 'Poli Jantung', 106, 3005),
(6206, 'Poli Paru', 107, 3006),
(6207, 'Poli Saraf', 108, 3007),
(6208, 'Poli THT', 109, 3008),
(6209, 'Poli Mata', 110, 3009),
(6210, 'Poli Gizi', 111, 3010),
(6211, 'Poli Kulit', 112, 3011),
(6212, 'Poli Psikiatri', 113, 3012),
(6213, 'Poli Rehabilitasi', 114, 3013),
(6214, 'Poli Geriatri', 115, 3014),
(6215, 'Poli Endokrin', 116, 3015),
(6216, 'Poli Hematologi', 117, 3016),
(6217, 'Poli Onkologi', 118, 3017),
(6218, 'Poli Urologi', 119, 3018),
(6219, 'Poli Ortopedi', 120, 3019),
(6220, 'Poli Anak', 101, 3000),
(6221, 'Poli Gigi', 102, 3001),
(6222, 'Poli Umum', 103, 3002),
(6223, 'Poli Bedah', 104, 3003),
(6224, 'Poli Kandungan', 105, 3004),
(6225, 'Poli Jantung', 106, 3005),
(6226, 'Poli Paru', 107, 3006),
(6227, 'Poli Saraf', 108, 3007),
(6228, 'Poli THT', 109, 3008),
(6229, 'Poli Mata', 110, 3009),
(6230, 'Poli Gizi', 111, 3010),
(6231, 'Poli Kulit', 112, 3011),
(6232, 'Poli Psikiatri', 113, 3012),
(6233, 'Poli Rehabilitasi', 114, 3013),
(6234, 'Poli Geriatri', 115, 3014),
(6235, 'Poli Endokrin', 116, 3015),
(6236, 'Poli Hematologi', 117, 3016),
(6237, 'Poli Onkologi', 118, 3017),
(6238, 'Poli Urologi', 119, 3018),
(6239, 'Poli Ortopedi', 120, 3019);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indeks untuk tabel `apotek`
--
ALTER TABLE `apotek`
  ADD PRIMARY KEY (`ApotekID`);

--
-- Indeks untuk tabel `apoteker`
--
ALTER TABLE `apoteker`
  ADD PRIMARY KEY (`ApotekerID`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`DokterID`);

--
-- Indeks untuk tabel `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`LabID`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`PasienID`),
  ADD KEY `pasien` (`PendaftaranID`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`PembayaranID`);

--
-- Indeks untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`PemeriksaanID`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`PendaftaranID`),
  ADD KEY `admin` (`AdminID`);

--
-- Indeks untuk tabel `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD PRIMARY KEY (`RekamMedisID`);

--
-- Indeks untuk tabel `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`ResepID`);

--
-- Indeks untuk tabel `ruangpoli`
--
ALTER TABLE `ruangpoli`
  ADD PRIMARY KEY (`RuangPoliID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT untuk tabel `apotek`
--
ALTER TABLE `apotek`
  MODIFY `ApotekID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `apoteker`
--
ALTER TABLE `apoteker`
  MODIFY `ApotekerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `DokterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3018;

--
-- AUTO_INCREMENT untuk tabel `lab`
--
ALTER TABLE `lab`
  MODIFY `LabID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `PasienID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4020;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `PembayaranID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `PemeriksaanID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `PendaftaranID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5020;

--
-- AUTO_INCREMENT untuk tabel `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `RekamMedisID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `resep`
--
ALTER TABLE `resep`
  MODIFY `ResepID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ruangpoli`
--
ALTER TABLE `ruangpoli`
  MODIFY `RuangPoliID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6240;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
