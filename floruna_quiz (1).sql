-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2024 pada 18.11
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
-- Database: `floruna quiz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `game_session`
--

CREATE TABLE `game_session` (
  `id_game_session` int(100) NOT NULL,
  `id_user` int(10) NOT NULL,
  `date_time` date NOT NULL DEFAULT current_timestamp(),
  `score` int(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `level` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihan jawaban`
--

CREATE TABLE `pilihan jawaban` (
  `id` int(10) NOT NULL,
  `isi jawaban` varchar(100) NOT NULL,
  `gambar` varchar(10) DEFAULT NULL,
  `id soal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pilihan jawaban`
--

INSERT INTO `pilihan jawaban` (`id`, `isi jawaban`, `gambar`, `id soal`) VALUES
(123, '1', NULL, 123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_beginner`
--

CREATE TABLE `soal_beginner` (
  `id_soal` int(100) NOT NULL,
  `isi_soal` varchar(100) NOT NULL,
  `gambar_soal` varchar(100) DEFAULT NULL,
  `level` int(12) NOT NULL,
  `score` int(100) NOT NULL,
  `id_jawaban` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal_beginner`
--

INSERT INTO `soal_beginner` (`id_soal`, `isi_soal`, `gambar_soal`, `level`, `score`, `id_jawaban`) VALUES
(123, '', NULL, 1, 10, NULL),
(456, 'manakah hewan mamalia?', NULL, 2, 20, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_hard`
--

CREATE TABLE `soal_hard` (
  `Id_soal` int(100) NOT NULL,
  `isi_soal` varchar(100) NOT NULL,
  `gambar_soal` int(100) DEFAULT NULL,
  `level` int(12) NOT NULL,
  `score` int(100) NOT NULL,
  `id_jawaban` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal_hard`
--

INSERT INTO `soal_hard` (`Id_soal`, `isi_soal`, `gambar_soal`, `level`, `score`, `id_jawaban`) VALUES
(123, 'hewan apa yang tidak tidur?', 0, 3, 22, ''),
(666, 'hewan yang tidak mati?', NULL, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_medium`
--

CREATE TABLE `soal_medium` (
  `Id_soal` int(100) NOT NULL,
  `isi_soal` varchar(100) NOT NULL,
  `gambar_soal` int(100) DEFAULT NULL,
  `level` int(12) NOT NULL,
  `score` int(100) NOT NULL,
  `id_jawaban` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal_medium`
--

INSERT INTO `soal_medium` (`Id_soal`, `isi_soal`, `gambar_soal`, `level`, `score`, `id_jawaban`) VALUES
(123, 'hewan yang bertelur?', 0, 1, 10, ''),
(253, 'hewan apa yang bertelur?', 0, 5, 30, ''),
(888, 'hewan mana yang berkaki 4', NULL, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(123, 'abas', '2312602');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `game_session`
--
ALTER TABLE `game_session`
  ADD PRIMARY KEY (`id_game_session`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pilihan jawaban`
--
ALTER TABLE `pilihan jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id soal` (`id soal`);

--
-- Indeks untuk tabel `soal_beginner`
--
ALTER TABLE `soal_beginner`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_jawaban` (`id_jawaban`);

--
-- Indeks untuk tabel `soal_hard`
--
ALTER TABLE `soal_hard`
  ADD PRIMARY KEY (`Id_soal`),
  ADD KEY `id_jawaban` (`id_jawaban`);

--
-- Indeks untuk tabel `soal_medium`
--
ALTER TABLE `soal_medium`
  ADD PRIMARY KEY (`Id_soal`),
  ADD KEY `id_jawaban` (`id_jawaban`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
