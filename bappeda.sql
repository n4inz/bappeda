-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 02 Feb 2019 pada 20.23
-- Versi Server: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bappeda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `apbds`
--

CREATE TABLE `apbds` (
  `id` int(10) UNSIGNED NOT NULL,
  `KodeApbd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `YgBertanggungJawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JumlahAnggaran` int(11) NOT NULL,
  `SumberDana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Penjelasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `apbds`
--

INSERT INTO `apbds` (`id`, `KodeApbd`, `YgBertanggungJawab`, `Uraian`, `JumlahAnggaran`, `SumberDana`, `Penjelasan`, `created_at`, `updated_at`) VALUES
(4, 'dfdf', 'doi', 'doi', 398, 'isdoi', 'iodsio', '2019-01-12 20:09:00', '2019-01-12 20:09:00'),
(5, 'sdado', 'isdoi', 'isoi', 3343, 'dfdf', 'sddfdfd', '2019-01-12 20:09:14', '2019-01-12 20:09:14'),
(6, 'dfdflk', 'dlkfkd', 'dlkf', 837, 'difoifo', 'dofisi', '2019-01-12 20:09:38', '2019-01-12 20:09:38'),
(7, 'ffdflk', 'kldsk', 'lkdslk', 34, 'ksldk', 'lskdalkd', '2019-01-12 20:09:46', '2019-01-12 20:09:46'),
(8, 'ccvc', 'lkdlfk', 'lkdflk', 3984, 'dlk', 'ldksld', '2019-01-12 20:09:55', '2019-01-12 20:09:55'),
(9, 'dfdf', 'dk', 'lksdl', 3883, 'idoi', 'osidoi', '2019-01-12 20:10:03', '2019-01-12 20:10:03'),
(10, 'sdsd', 'dskl', 'lsdk', 33, 'kddl', 'lksklaakl', '2019-01-12 20:10:12', '2019-01-12 20:10:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `infos`
--

INSERT INTO `infos` (`id`, `kode`, `info`, `created_at`, `updated_at`) VALUES
(1, 'kkl6', 'sds dfd nainssldmsdlslm', NULL, '2019-01-12 05:41:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inovasis`
--

CREATE TABLE `inovasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `NamaLengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nip` int(11) NOT NULL,
  `Pangkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Motifasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pandangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inovasis`
--

INSERT INTO `inovasis` (`id`, `NamaLengkap`, `Nip`, `Pangkat`, `Motifasi`, `Pandangan`, `created_at`, `updated_at`) VALUES
(1, 'djskdj', 9898, 'Riset', 'jskjd', 'kjsdkjd', '2019-01-16 00:06:29', '2019-01-16 00:06:29'),
(2, 'sdsd', 2993829, 'Riset', 'kskdsj', 'sdjkd', '2019-01-16 05:57:12', '2019-01-16 05:57:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paga_pokok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paga_harian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` int(11) NOT NULL,
  `realisasi_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporans`
--

INSERT INTO `laporans` (`id`, `kode`, `program`, `kegiatan`, `volume`, `satuan`, `paga_pokok`, `paga_harian`, `target`, `realisasi_kegiatan`, `nama_kegiatan`, `created_at`, `updated_at`) VALUES
(1, 'sdsdjk', 'kdsjk', 'kjsdkj', 'kjkjk', 'jkjksdj', 'kjdskj', 'kjdskj', 23, 72387, 'wjkejk', '2019-01-12 05:43:45', '2019-01-12 05:43:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(47, '2014_10_12_000000_create_users_table', 1),
(48, '2014_10_12_100000_create_password_resets_table', 1),
(49, '2018_11_24_132053_create_admins_table', 1),
(80, '2018_12_03_034625_create_laporans_table', 2),
(81, '2018_12_03_060107_create_workshops_table', 2),
(82, '2018_12_07_080312_create_skpds_table', 2),
(83, '2018_12_11_064244_create_infos_table', 2),
(84, '2019_01_05_065500_create_surats_table', 2),
(85, '2019_01_08_124204_create_penelitians_table', 2),
(86, '2019_01_12_094454_create_apbds_table', 2),
(87, '2019_01_12_101327_create_rkpds_table', 2),
(88, '2019_01_16_075548_create_inovasis_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitians`
--

CREATE TABLE `penelitians` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penelitians`
--

INSERT INTO `penelitians` (`id`, `nama`, `institute`, `proposal`, `identitas`, `jenis_penelitian`, `created_at`, `updated_at`) VALUES
(1, 'sdsa', 'sdads', 'Proposal Kelompok 6.pdf', 'btkwallet.png', 'Survei', '2019-01-14 05:46:57', '2019-01-14 05:46:57'),
(2, 'sdsada', 'sdfdlfl', 'recovery.pdf', 'indodax.png', 'Studi Kasus', '2019-01-14 05:48:29', '2019-01-14 05:48:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rkpds`
--

CREATE TABLE `rkpds` (
  `id` int(10) UNSIGNED NOT NULL,
  `KodeRkpd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `YgBertanggungJawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TaksiranBiaya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SumberDana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WaktuPengerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WaktuPenyelesaiaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JenisPembangunan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lampiran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rkpds`
--

INSERT INTO `rkpds` (`id`, `KodeRkpd`, `YgBertanggungJawab`, `TaksiranBiaya`, `SumberDana`, `WaktuPengerjaan`, `WaktuPenyelesaiaan`, `Lokasi`, `JenisPembangunan`, `Lampiran`, `created_at`, `updated_at`) VALUES
(7, 'dsdsd', 'woisodi', '232', 'woie', '2019-01-11', '2019-01-25', 'dsds', 'sdasda', '209.png', '2019-01-14 05:32:39', '2019-01-14 05:32:39'),
(8, 'skkdlksl', 'ldsklk', '23', 'wldsk', '2019-01-05', '2019-01-12', 'sdsa', 'dasda', '635.png', '2019-01-14 05:32:56', '2019-01-14 05:32:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skpds`
--

CREATE TABLE `skpds` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_program` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pendanaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prioritas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_usulan` int(11) NOT NULL,
  `jumlah_disetuju_i` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skpds`
--

INSERT INTO `skpds` (`id`, `kode_program`, `program_kegiatan`, `jenis_pendanaan`, `lokasi`, `satuan`, `sasaran`, `prioritas`, `jumlah_usulan`, `jumlah_disetuju_i`, `created_at`, `updated_at`) VALUES
(1, 'sdsdkj', 'dskj', 'kj', 'jkjd', 'jkjk', 'kdjsk', 'kdsjk', 22, 232, '2019-01-12 05:44:10', '2019-01-12 05:44:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surats`
--

CREATE TABLE `surats` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengurus` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pengurus`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@user.com', '$2y$10$ftE9ptvXG.taR.VsP6vW4.PoLOSa0mUIR1vIzTYtTmKx.r0rNseEC', 0, 'l1Vr0nsRMTqLHKJt5PsfpOhAridlnSA7sfHdQ2SKrMgQ4tLATBxnym1NxU4w', '2019-01-12 05:23:42', '2019-01-12 05:23:42'),
(2, 'pengurus', 'pengurus@pengurus.com', '$2y$10$cXpRbBf6IzSfk6RFleEtxeUo7NSVfhuvwHZCBgw5wISRPzI4uh0QG', 1, 'vRfKWnLB3vIdhmPpDLmY4QHf622H9nNEs34r9yGtCLBfMe6axBo57Tt2xhU1', '2019-01-12 05:24:02', '2019-01-12 05:24:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `workshops`
--

CREATE TABLE `workshops` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pendaftar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `workshops`
--

INSERT INTO `workshops` (`id`, `nama_instansi`, `nama_pendaftar`, `jabatan`, `alamat`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 'sdkksdj', 'djskj', 'kjdskj', 'dssdk', 98, '2019-01-12 05:43:58', '2019-01-12 05:43:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `apbds`
--
ALTER TABLE `apbds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inovasis`
--
ALTER TABLE `inovasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penelitians`
--
ALTER TABLE `penelitians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rkpds`
--
ALTER TABLE `rkpds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skpds`
--
ALTER TABLE `skpds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surats`
--
ALTER TABLE `surats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `apbds`
--
ALTER TABLE `apbds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inovasis`
--
ALTER TABLE `inovasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `penelitians`
--
ALTER TABLE `penelitians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rkpds`
--
ALTER TABLE `rkpds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `skpds`
--
ALTER TABLE `skpds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `surats`
--
ALTER TABLE `surats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
