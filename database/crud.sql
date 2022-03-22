-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2022 pada 21.46
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `productdata`
--

CREATE TABLE `productdata` (
  `id` int(11) NOT NULL,
  `nameProduct` varchar(128) NOT NULL,
  `prizeProduct` varchar(128) NOT NULL,
  `manyProduct` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `productdata`
--

INSERT INTO `productdata` (`id`, `nameProduct`, `prizeProduct`, `manyProduct`) VALUES
(3, 'nasi goreng', '15000', '20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `productdata`
--
ALTER TABLE `productdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `productdata`
--
ALTER TABLE `productdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
