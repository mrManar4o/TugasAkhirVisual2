-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 16.16
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungan`
--

CREATE TABLE `tbl_hubungan` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `ortu_id` int(11) NOT NULL,
  `status_hub_anak` char(50) NOT NULL,
  `keterangan` char(50) NOT NULL,
  `status_ortu` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kls`
--

CREATE TABLE `tbl_kls` (
  `id` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kls`
--

INSERT INTO `tbl_kls` (`id`, `nama`, `jurusan`, `jenis`) VALUES
(1, '10', 'B', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ortu`
--

CREATE TABLE `tbl_ortu` (
  `id` int(10) NOT NULL,
  `nik` char(50) NOT NULL,
  `nama` char(50) NOT NULL,
  `pendidikan` char(50) NOT NULL,
  `pekerjaan` char(50) NOT NULL,
  `telp` text NOT NULL,
  `alamat` char(50) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `agama` char(50) NOT NULL,
  `is_active` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_poin`
--

CREATE TABLE `tbl_poin` (
  `id` int(11) NOT NULL,
  `nama_poin` int(11) NOT NULL,
  `bobot` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `poin_id` int(11) NOT NULL,
  `wali_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(10) NOT NULL,
  `nis` char(20) NOT NULL,
  `nisn` char(20) NOT NULL,
  `nama_siswa` varchar(60) NOT NULL,
  `nik` char(20) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telp` char(150) NOT NULL,
  `hp` char(150) NOT NULL,
  `status` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_userid` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id` int(10) NOT NULL,
  `nik/nip` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `pendidikan` char(60) NOT NULL,
  `telp` char(16) NOT NULL,
  `matpel` char(30) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kls`
--
ALTER TABLE `tbl_kls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kls`
--
ALTER TABLE `tbl_kls`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
