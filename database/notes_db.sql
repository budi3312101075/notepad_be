-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Feb 2024 pada 03.16
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `notepad`
--

CREATE TABLE `notepad` (
  `id` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `tanggal` date NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `notepad`
--

INSERT INTO `notepad` (`id`, `judul`, `deskripsi`, `tanggal`, `is_deleted`) VALUES
(45, 'tes notes', '<ol><li>notes 1</li><li>notes 23</li></ol><h1><strong>wdadad</strong></h1><p>d<u>wdadad</u></p><p><u>dwdwdwdwd</u></p><p><em><u>dwdwdwdwd</u></em></p><p><strong><em><u>dwdwdw</u></em></strong></p><ul><li><strong><em><u>dwdwdwd</u></em></strong></li></ul>', '2024-02-24', 1),
(46, 'Notes 2', '<p>dwd</p><h1>dwdwdwd</h1>', '2024-02-24', 1),
(47, 'Notes 2', '<p>dwd</p><h1>dwdwdwd</h1>', '2024-02-24', 1),
(48, 'dw', '<p>dwdw</p>', '2024-02-24', 1),
(49, 'dw', '<p>dwdwdw</p>', '2024-02-24', 1),
(50, 'dwd', '<p>dwdwd</p>', '2024-02-24', 1),
(51, 'dwdwdwd', '<p>dwdwddwdwd</p>', '2024-02-24', 1),
(52, 'dwdwdwd', '<ol><li>dwdwddwdwd</li></ol>', '2024-02-24', 1),
(53, 'dwdwdwd', '<ol><li>dwdwddwdwd</li></ol><ul><li><br></li></ul>', '2024-02-24', 1),
(54, 'dwdwdwd', '<ol><li>dwdwddwdwd</li></ol><ul><li>dwdwd</li></ul>', '2024-02-24', 1),
(55, 'dwdwdwd', '<ol><li>d<a href=\"wdwddwdwd\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><em><u>wdwddwdwd</u></em></strong></a></li></ol><ul><li>d<strong>wdwd</strong></li></ul>', '2024-02-24', 1),
(56, 'dwdw', '<p>wdwdwd</p>', '2024-02-24', 1),
(57, 'dwdw', '<p>dwdwdwd</p>', '2024-02-24', 1),
(58, 'dadawda', '<p>dawdawdada</p>', '2024-02-24', 1),
(59, 'dadawda', '<p>dawdawdada</p>', '2024-02-24', 1),
(60, 'dadawda', '<p>dawdawdada</p>', '2024-02-24', 1),
(61, 'dadawda', '<p>dawdawdada</p>', '2024-02-24', 1),
(62, 'dadawda', '<p>dawdawdada</p>', '2024-02-24', 1),
(63, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(64, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(65, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(66, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(67, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(68, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(69, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(70, 'dwddw', '<p>dwdwdw</p>', '2024-02-24', 1),
(71, 'dwddw', '<p>dwdwdw</p>', '2024-02-24', 1),
(72, 'dwd', '<p>dwd</p>', '2024-02-24', 1),
(73, 'dwdwd', '<p>dwd</p>', '2024-02-24', 1),
(74, 'dwd', '<p>dwe</p>', '2024-02-24', 1),
(75, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(76, 'dw', '<p>dwdwd</p>', '2024-02-24', 1),
(77, 'dwd', '<p>dwdw</p>', '2024-02-24', 1),
(78, 'dwddwdw', '<p>dwdwdwd</p>', '2024-02-24', 1),
(79, 'dd', '<p>dwdwd</p>', '2024-02-24', 1),
(80, 'dwdw', '<p>dwdwdw</p>', '2024-02-24', 1),
(81, 'wa', '<p>a</p>', '2024-02-24', 1),
(82, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(83, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(84, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(85, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(86, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(87, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(88, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(89, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(90, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(91, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(92, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(93, 'dw', '<p>sdw</p>', '2024-02-24', 1),
(94, 'dwdw', '<ol><li>ddwdwd<strong><em><u>dwdwdwdw</u></em></strong></li><li><strong><em><u>dw</u></em></strong></li><li><strong><em><u>dw</u></em></strong></li><li><strong><em><u>dw</u></em></strong></li><li><strong><em><u>d</u></em></strong></li></ol><ul><li><strong><em><u>wddddw</u></em></strong></li><li><strong><em><u>dwdwd</u></em></strong></li></ul>', '2024-02-24', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `notepad`
--
ALTER TABLE `notepad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `notepad`
--
ALTER TABLE `notepad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
