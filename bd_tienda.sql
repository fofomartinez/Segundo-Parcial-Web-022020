-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2020 a las 22:28:41
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_09_27_030325_create_productos_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `Codigo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Marca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Codigo`, `Descripcion`, `Marca`, `Foto`, `created_at`, `updated_at`) VALUES
(5, '10001', 'Alicate punta larga', 'Truper', 'uploads/8UcUnH2MunBvEa7uNShq72aGIyuwer2xHM5dZ0tK.jpeg', NULL, '2020-09-27 19:35:19'),
(6, '123123', 'Alicate punta normal 6\"', 'Truper', 'uploads/mvbwDPe8Wu8SAm7NGhB46dqRcJfmE5hEOMo5Q8tm.jpeg', NULL, NULL),
(7, '132456', 'Clavo 3\"', 'N/A', 'uploads/d4DMuRNdWHka2dp7OPRtHe0vdOiZ78vA7YH03W8j.jpeg', NULL, NULL),
(8, '1231234', 'Clavo 2\"', 'N/A', 'uploads/srIqxOaWnjyqBUV7cKygg0NZ7KuoAXl3KjGZMKB8.jpeg', NULL, NULL),
(9, '123123', 'Clavo 1\"', 'N/A', 'uploads/XtEQZqjgr7lBgzZEgK6d8Y47TW0ViYQOI6TapfoD.jpeg', NULL, NULL),
(10, '1231235', 'Clavo 4\"', 'N/A', 'uploads/QqLyFpcywVDmy68CRHkflc31PCiuAiPfaaOIV51H.jpeg', NULL, NULL),
(11, '4545', 'Alambre de amarre', 'N/A', 'uploads/szexivWUlAuNuaLi9hQZHMCEyNKv06mITAwrzshG.jpeg', NULL, NULL),
(12, '45643', 'Alambre de amarre inoxidable', 'N/A', 'uploads/UnasVZcFK1W72pTq6hb7vUEaTYvC7PauYVVJA2Cl.jpeg', NULL, NULL),
(13, '9696', 'Pesa de 40kg', 'Detecto', 'uploads/gtbjbJdGm47pkRppF5JdB6lk2mpkMmtPVpHTamhy.jpeg', NULL, NULL),
(14, '9696', 'Pesa 50kg', 'Detecto', 'uploads/NMGZI2WTH7uDdH34JIbthpTp5kmVJ5X6Xgv11Kp4.jpeg', NULL, NULL),
(15, '694321', 'Pesa de 30kg', 'Detecto', 'uploads/C6GVPr8Ltu5uAlndldoblnYYUUPhyMaGIRdMOynn.jpeg', NULL, NULL),
(16, '6546546', 'Rueda para llanta 4\"', 'Truper', 'uploads/f5xb7gSjAcXvN27Al8Yk3117xJLvcw67bjEj97g7.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
