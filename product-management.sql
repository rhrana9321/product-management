-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 05:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_06_183613_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Voluptatem rerum as', 'Jillian Love', 'Harum voluptas et qu', 564.00, 9, 'products/LOBCr7xTgkkD160q19jRKCIAalk0A51NiyiBBART.jpg', '2024-11-09 10:13:39', '2024-11-09 10:13:39'),
(6, 'Do quos voluptatibus', 'Janna Wilcox', 'Minim dolor sint ne', 1.00, 0, 'products/yluEbnL6g490lq0G2zLK9KK1zyrih0j18h9xstNf.png', '2024-11-09 10:14:20', '2024-11-09 10:14:20'),
(7, 'Non est voluptatibus', 'Alyssa Santana', 'Ab eligendi in autem', 923.00, 45, 'products/HXjXxKwAKU2EPR4TRBNyZdbelRBKugqcZOmx3SmX.jpg', '2024-11-09 10:14:34', '2024-11-09 10:14:34'),
(8, 'Ad veniam esse dolo', 'Lance Olsen', 'Enim assumenda et ul', 183.00, 65, 'products/RB19h8Cf1OKVj66FE3hLRVXAYLNQ44popFfGun76.jpg', '2024-11-09 10:14:54', '2024-11-09 10:14:54'),
(9, 'Voluptas adipisicing', 'Fallon Ryan', 'Esse provident pra', 118.00, 23, 'products/smwitisAzL0mTLYk6so8s40lUrua2HC9hjRIF9df.jpg', '2024-11-09 10:15:09', '2024-11-09 10:15:09'),
(10, 'Rem eiusmod suscipit', 'Kylie Perez', 'In excepteur velit e', 375.00, 47, 'products/IBTornSrcsr4WTWaUGJG7XkO3GjirDTGR5URhcgq.jpg', '2024-11-09 10:23:47', '2024-11-09 10:23:47'),
(11, 'Asperiores dignissim', 'Isabella Sweet', 'Laudantium commodo', 829.00, 61, 'products/IReDyBGaN2GL8XBmMJ0DQ34Lr3OUFD1lM4eM9yt7.jpg', '2024-11-09 10:24:15', '2024-11-09 10:24:15'),
(12, 'Odio numquam optio', 'Peter Dean', 'Praesentium obcaecat', 646.00, 3, 'products/PH1MPe15xgwm59VFC6iFARsiUJGmE4FUMNJwHmjm.jpg', '2024-11-09 10:24:28', '2024-11-09 10:24:28'),
(13, 'Nobis omnis ad conse', 'Colt Giles', 'Ipsum debitis dolor', 721.00, 44, 'products/jIQ24v2ZXvJcz8qdNK0lpG9cCMIaGFivV9RXUpX2.jpg', '2024-11-09 10:24:41', '2024-11-09 10:24:41'),
(14, 'Velit harum sint c', 'Chase Odonnell', 'Ipsum officiis assu', 637.00, 73, 'products/vzXuGnWemYpglfEyOmdO5rInNLPHSjSsr7CnPPRk.jpg', '2024-11-09 10:24:54', '2024-11-09 10:24:54'),
(15, 'Repudiandae cillum e', 'Yvette Crane', 'Doloremque laborum', 831.00, 89, 'products/GPbpaIxmbwriW9SwUeuLjeyDHwYrqMy182RoE2HV.jpg', '2024-11-09 10:25:12', '2024-11-09 10:25:12'),
(16, 'Dolores aliquid volu', 'Jackson Browning', 'Accusantium voluptat', 743.00, 5, 'products/ToxnHY5oVYktvJQQlSBKTV7iNDXcf3JRcVCCKMJN.jpg', '2024-11-09 10:25:43', '2024-11-09 10:25:43'),
(17, 'Occaecat ducimus qu', 'Gary Knapp', 'Hic repellendus Ali', 3.00, 36, 'products/7LjsYN3zZDdiTBY6KeQZCt7BaflRYfZLTSAAaeZR.jpg', '2024-11-09 10:25:55', '2024-11-09 10:25:55'),
(18, 'Veniam earum aliqui', 'Melanie Pickett', 'Ullamco voluptatem q', 102.00, 8, 'products/P8NgHSqOPrMLjI6jj7thUtqbX54qJsaQVwk4hNH2.jpg', '2024-11-09 10:26:05', '2024-11-09 10:26:05'),
(19, 'Aperiam culpa quide', 'McKenzie Boone', 'Voluptatem ullamco a', 135.00, 29, 'products/W2VfjPZoAAqyDB8r6naJZQOe2VZUXd219IZTerA0.jpg', '2024-11-09 10:26:20', '2024-11-09 10:26:20'),
(20, 'Quia irure sint repe', 'Alan Clemons', 'Cillum molestiae ess', 881.00, 58, 'products/GSTmbjkKOz8WvKETuDT7jdAE9IWOaN45cpGwnFeB.jpg', '2024-11-09 10:26:31', '2024-11-09 10:26:31'),
(21, 'Nostrud voluptatem f', 'Noelle Wilkins', 'Qui sunt sunt sapie', 46.00, 68, 'products/PEOVg0q00AETmy2TStUoLZpYYIk8NTVYOTeC5EGd.jpg', '2024-11-09 10:26:42', '2024-11-09 10:26:42'),
(22, 'Voluptatibus aut sol', 'Gabriel Abbott', 'Ipsam velit sint ne', 132.00, 3, 'products/vU7Uf9y0D21MbnkW2s2lJIRAt0e3Fcf9APRrCuxG.jpg', '2024-11-09 10:27:07', '2024-11-09 10:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BLU2BQXJohCGdYTrZm5b7CqvS214RHDMfBn9Jirn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXpZdVA2WGh3TkJJZTBCWGtsUlMxU3FHOThpQkgxaVFSRThYSzRGUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly9sb2NhbGhvc3QvcHJvZHVjdC1tYW5hZ2VtZW50L3B1YmxpYy9wcm9kdWN0cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731169716);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
