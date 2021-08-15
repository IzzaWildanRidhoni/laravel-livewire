-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Agu 2021 pada 03.58
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_livewire`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Regan Schultz', '+15648188789', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(2, 'Bernice Herman', '+14842846605', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(3, 'Mr. Savion Lebsack PhD', '+17753575560', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(4, 'Triston Sanford II', '+14695748930', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(5, 'Miss Guadalupe Mohr Sr.', '+19795455107', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(6, 'Reymundo Oberbrunner V', '+17704181064', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(7, 'Madisen Eichmann', '+16519231546', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(8, 'Darryl Williamson', '+16502543827', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(9, 'Brandon Stamm II', '+18387751073', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(10, 'Mrs. Ciara Marquardt', '+14134112728', '2021-08-13 21:22:56', '2021-08-13 21:22:56'),
(11, 'budi', '08564330143', '2021-08-13 22:38:33', '2021-08-13 22:38:33'),
(12, 'budi', '08564330143', '2021-08-13 22:41:12', '2021-08-13 22:41:12'),
(13, 'yudi', '9088', '2021-08-13 22:41:26', '2021-08-13 22:41:26'),
(14, 'izza wildan', '085643301453', '2021-08-13 22:41:46', '2021-08-13 22:41:46'),
(15, 'agusta', '09888', '2021-08-13 22:46:37', '2021-08-13 22:46:37'),
(16, 'arin', '081212', '2021-08-13 22:47:12', '2021-08-13 22:47:12'),
(17, 'munawaroh', '1293123', '2021-08-13 22:48:43', '2021-08-13 22:48:43'),
(18, 'risah imroatul', '082323973', '2021-08-13 22:53:42', '2021-08-13 22:53:42'),
(19, 'aris mustofa', '082323973942', '2021-08-13 22:54:33', '2021-08-13 22:54:33'),
(20, 'mahendra', '982132193', '2021-08-13 22:57:03', '2021-08-13 22:57:03'),
(21, 'hega', '90213', '2021-08-13 22:58:31', '2021-08-13 22:58:31'),
(22, 'alpinooo', '92183', '2021-08-13 23:00:32', '2021-08-13 23:00:32'),
(23, 'gunawan', '1923', '2021-08-13 23:03:01', '2021-08-13 23:03:01'),
(28, 'yuanda hanif hisyam', '+6289012', '2021-08-13 23:17:02', '2021-08-13 23:17:02'),
(30, 'andi', '123456123', '2021-08-14 03:22:59', '2021-08-14 03:28:05'),
(31, 'agustai', '081213123', '2021-08-14 03:37:48', '2021-08-14 03:37:48'),
(32, 'thoriqo', '+62123123', '2021-08-14 18:18:54', '2021-08-14 18:19:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_14_040635_create_contacts_table', 1);

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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wildan', 'swildan@gmail.com', NULL, '$2y$10$epmsAoP7zlJFs4NCozTwXOOw3bMfv/EBJcgoRV5o2UhY7SlHd/X82', NULL, '2021-08-13 21:41:05', '2021-08-13 21:41:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
