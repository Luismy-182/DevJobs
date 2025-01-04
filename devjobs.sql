-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-11-2024 a las 07:26:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `devjobs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vacante_id` bigint(20) UNSIGNED NOT NULL,
  `cv` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `user_id`, `vacante_id`, `cv`, `created_at`, `updated_at`) VALUES
(9, 9, 5, '9Agg7TPjC4TLK0C67bicmJ4bfNAQpp2F5iKEDv1o.pdf', '2024-11-25 12:11:48', '2024-11-25 12:11:48'),
(10, 9, 6, 'Mlq0A51skmOv3c2NIvNJYHzogobxl2s768IoqJ3b.pdf', '2024-11-25 12:12:59', '2024-11-25 12:12:59'),
(11, 9, 7, 'iWPHblSWBn4xkhixTP5AAyrCmaH2uZovwEpxth66.pdf', '2024-11-25 12:13:15', '2024-11-25 12:13:15'),
(12, 9, 8, 'AaS815OGWcnFog8WAf2ybC60doYnlPHMu5bLechH.pdf', '2024-11-25 12:13:28', '2024-11-25 12:13:28'),
(13, 9, 8, 'cmnOy5CPWdbWkMbgotVI9E22rxwJcuCGdnzanU1F.pdf', '2024-11-25 12:13:37', '2024-11-25 12:13:37'),
(14, 9, 9, '3tC3V9MI2RIZCLR8g3s5HvqWHFLiEwzWR2H5MopE.pdf', '2024-11-25 12:13:48', '2024-11-25 12:13:48'),
(15, 9, 6, 'DZphWL7OpKsOYyl2vnFUjJksbI1G1Xv6SCbI7SDJ.pdf', '2024-11-25 12:14:00', '2024-11-25 12:14:00'),
(16, 10, 5, 'IQrkxghiva0gZ2pDs1R9NG5ztkAycsVynd94rPwz.pdf', '2024-11-25 12:16:45', '2024-11-25 12:16:45'),
(17, 10, 6, 'DhexlEDKpad1jRnZG5ANcfV8V2Y8iDj2aoisJkJS.pdf', '2024-11-25 12:16:56', '2024-11-25 12:16:56'),
(18, 10, 7, 'oXXIFcMKkWrFbPvrHnwE8WaX83IB8UXaGiaLQKxM.pdf', '2024-11-25 12:17:07', '2024-11-25 12:17:07'),
(19, 10, 8, '6MsfukDJMK3yX6Mr4oaohSbZbMflc2fTpuj7Pc6p.pdf', '2024-11-25 12:17:17', '2024-11-25 12:17:17'),
(20, 11, 5, 'YMfkF9QQGGcsnWMT08iQ3zzAiI7u6hifm0gejUgh.pdf', '2024-11-25 12:17:44', '2024-11-25 12:17:44'),
(21, 11, 7, '5K6I6NtV8RfRXxE80BqwgAAJL9Xyxb6naGYsa2nR.pdf', '2024-11-25 12:17:53', '2024-11-25 12:17:53'),
(22, 12, 5, '40cgQr882zyURorAFHRRaF058pv5JvG1HIntSQWZ.pdf', '2024-11-25 12:18:20', '2024-11-25 12:18:20'),
(23, 12, 6, 'uftbsx3F5ba0CS4UfvxcX2vjM5ZW1jQbBsWCbSu3.pdf', '2024-11-25 12:18:30', '2024-11-25 12:18:30'),
(24, 12, 7, 'S0MZ1vFYnkrSAW0eIQtkohQQDyZsaf2cfDY54ona.pdf', '2024-11-25 12:18:40', '2024-11-25 12:18:40'),
(25, 12, 8, 'LsSagRfdVspo38kxy9inufZySFNkdRNsfAx7XoUP.pdf', '2024-11-25 12:18:52', '2024-11-25 12:18:52'),
(26, 12, 9, '4aKAD6FiqICZdDOgBNyka94GsaibNNmDOAvJ2txH.pdf', '2024-11-25 12:19:02', '2024-11-25 12:19:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `created_at`, `updated_at`) VALUES
(1, 'Backend Developer', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(2, 'Front end Developer', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(3, 'Mobile Developer', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(4, 'Techlead', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(5, 'UX / UI Design', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(6, 'Software Architecture', '2024-11-15 10:10:14', '2024-11-15 10:10:14'),
(7, 'Devops', '2024-11-15 10:10:14', '2024-11-15 10:10:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_12_172204_add_rol_to_users_table', 2),
(17, '2024_11_12_175628_create_vacante_table', 3),
(18, '2024_11_12_200738_create_salarios_table', 3),
(19, '2024_11_13_032309_create_categorias_table', 3),
(20, '2024_11_15_035346_add_columns_to_table', 3),
(21, '2024_11_15_211036_create_candidatos_table', 4),
(22, '2024_11_16_053501_create_notifications_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0ea12e14-7aa1-40a5-9afc-22ad73bac171', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 4, '{\"id_vacante\":2,\"nombre_vacante\":\"Desarrollador web Laravel Jr\",\"usuario_id\":6}', '2024-11-16 23:44:12', '2024-11-16 12:21:01', '2024-11-16 23:44:12'),
('1c28fd20-5656-4e38-a573-9f8e360542f0', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":7,\"nombre_vacante\":\"Desarrollador Sr Web \\/ Java \\/ springboot\",\"usuario_id\":12}', NULL, '2024-11-25 12:18:41', '2024-11-25 12:18:41'),
('2617da60-85cd-4934-b196-7e36a2515209', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":5,\"nombre_vacante\":\"Desarrollador Web\",\"usuario_id\":10}', NULL, '2024-11-25 12:16:46', '2024-11-25 12:16:46'),
('27416079-76de-4da0-abe5-cf9ce040abda', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":6,\"nombre_vacante\":\"Desarrollador PHP\",\"usuario_id\":12}', NULL, '2024-11-25 12:18:32', '2024-11-25 12:18:32'),
('3b6e932c-89f4-4403-bcb9-9a7307b538b6', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":8,\"nombre_vacante\":\"Frontend Angular\",\"usuario_id\":9}', NULL, '2024-11-25 12:13:30', '2024-11-25 12:13:30'),
('3bad06c7-09c6-4710-9ae2-0d9bff57cfe2', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":8,\"nombre_vacante\":\"Frontend Angular\",\"usuario_id\":10}', NULL, '2024-11-25 12:17:19', '2024-11-25 12:17:19'),
('4b377420-ef01-4b8e-9f66-cf1ec4253b39', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":5,\"nombre_vacante\":\"Desarrollador Web\",\"usuario_id\":9}', NULL, '2024-11-25 12:11:50', '2024-11-25 12:11:50'),
('51b2eb92-555e-4018-aca0-f9574b165c99', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":8,\"nombre_vacante\":\"Frontend Angular\",\"usuario_id\":12}', NULL, '2024-11-25 12:18:53', '2024-11-25 12:18:53'),
('5ded26a6-4662-4bb1-86a8-dfe0a4ff1693', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":7,\"nombre_vacante\":\"Desarrollador Sr Web \\/ Java \\/ springboot\",\"usuario_id\":11}', NULL, '2024-11-25 12:17:54', '2024-11-25 12:17:54'),
('70545208-5581-4a9b-8e6e-26e7b4e9fcaa', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 4, '{\"id_vacante\":2,\"nombre_vacante\":\"Desarrollador web Laravel Jr\",\"usuario_id\":6}', '2024-11-17 03:37:46', '2024-11-17 03:37:41', '2024-11-17 03:37:46'),
('70553291-d359-4f4e-b306-91f67f091801', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":9,\"nombre_vacante\":\"Programador Full Stack\",\"usuario_id\":9}', NULL, '2024-11-25 12:13:49', '2024-11-25 12:13:49'),
('7869b511-a923-4c9d-b567-be151b61472e', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":6,\"nombre_vacante\":\"Desarrollador PHP\",\"usuario_id\":9}', NULL, '2024-11-25 12:14:01', '2024-11-25 12:14:01'),
('8713cef3-f519-462c-b232-6db250925e10', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":6,\"nombre_vacante\":\"Desarrollador PHP\",\"usuario_id\":10}', NULL, '2024-11-25 12:16:58', '2024-11-25 12:16:58'),
('8fa1c0aa-3722-42c1-ae10-26c401e49ff8', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 4, '{\"id_vacante\":2,\"nombre_vacante\":\"Desarrollador web Laravel Jr\",\"usuario_id\":6}', '2024-11-17 00:24:33', '2024-11-17 00:24:23', '2024-11-17 00:24:33'),
('9b26cbec-24a8-4d58-9fd7-caf1481a2cf4', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 4, '{\"id_vacante\":2,\"nombre_vacante\":\"Desarrollador web Laravel Jr\",\"usuario_id\":6}', '2024-11-16 23:44:12', '2024-11-16 12:16:11', '2024-11-16 23:44:12'),
('a3b677c5-5aa3-4787-83eb-1894730828c9', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 4, '{\"id_vacante\":2,\"nombre_vacante\":\"Desarrollador web Laravel Jr\",\"usuario_id\":6}', '2024-11-17 00:06:06', '2024-11-17 00:05:54', '2024-11-17 00:06:06'),
('bf9b270f-2622-440e-82d4-0e3f7d94b6ef', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":8,\"nombre_vacante\":\"Frontend Angular\",\"usuario_id\":9}', NULL, '2024-11-25 12:13:39', '2024-11-25 12:13:39'),
('d563977b-b9cf-4c3d-9f33-74a8390e09a8', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":7,\"nombre_vacante\":\"Desarrollador Sr Web \\/ Java \\/ springboot\",\"usuario_id\":10}', NULL, '2024-11-25 12:17:08', '2024-11-25 12:17:08'),
('db9d4ee7-2279-496c-975d-fc05e74d1bb6', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":7,\"nombre_vacante\":\"Desarrollador Sr Web \\/ Java \\/ springboot\",\"usuario_id\":9}', NULL, '2024-11-25 12:13:16', '2024-11-25 12:13:16'),
('f069851d-08e6-40dc-b1e0-420826a0511c', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":5,\"nombre_vacante\":\"Desarrollador Web\",\"usuario_id\":12}', NULL, '2024-11-25 12:18:22', '2024-11-25 12:18:22'),
('f779389f-8eeb-482b-b3dd-e02fde943ce0', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":9,\"nombre_vacante\":\"Programador Full Stack\",\"usuario_id\":12}', NULL, '2024-11-25 12:19:04', '2024-11-25 12:19:04'),
('fef26c48-1e4d-4ddb-b646-85b86411b329', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":5,\"nombre_vacante\":\"Desarrollador Web\",\"usuario_id\":11}', NULL, '2024-11-25 12:17:45', '2024-11-25 12:17:45'),
('ffabcd81-331c-4cf7-9534-dd5950f9dbca', 'App\\Notifications\\NuevoCandidato', 'App\\Models\\User', 8, '{\"id_vacante\":6,\"nombre_vacante\":\"Desarrollador PHP\",\"usuario_id\":9}', NULL, '2024-11-25 12:13:01', '2024-11-25 12:13:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salarios`
--

CREATE TABLE `salarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salario` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `salarios`
--

INSERT INTO `salarios` (`id`, `salario`, `created_at`, `updated_at`) VALUES
(1, '$0 - $4999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(2, '$5000 - $7499', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(3, '$7500 - $9999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(4, '$10000 - $14999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(5, '$15000 - $19999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(6, '$20000 - $24999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(7, '$25000 - $29999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(8, '$30000 - $49999', '2024-11-15 10:10:13', '2024-11-15 10:10:13'),
(9, '+$50000', '2024-11-15 10:10:13', '2024-11-15 10:10:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `rol`) VALUES
(8, 'Miguel Angel', 'admin@admin.com', '2024-11-25 11:37:10', '$2y$10$n9GvrP23LbebUVZP3WBO2eUoqEyrZEcSSVRqzj.0BRxPYKwYTJ3wW', NULL, '2024-11-25 11:36:35', '2024-11-25 11:37:10', 2),
(9, 'Miguel Angel', 'user@user.com', '2024-11-25 12:07:38', '$2y$10$bfUdblWkyEimqPK7hRaZPuD14lvsh9Lqbn0RDIiAbU9SNDYnEDdOy', NULL, '2024-11-25 12:07:28', '2024-11-25 12:07:38', 1),
(10, 'Mario ', 'user1@user.com', '2024-11-25 12:07:38', '$2y$10$bfUdblWkyEimqPK7hRaZPuD14lvsh9Lqbn0RDIiAbU9SNDYnEDdOy', NULL, '2024-11-25 12:07:28', '2024-11-25 12:07:38', 1),
(11, 'Edith', 'user2@user.com', '2024-11-25 12:07:38', '$2y$10$bfUdblWkyEimqPK7hRaZPuD14lvsh9Lqbn0RDIiAbU9SNDYnEDdOy', NULL, '2024-11-25 12:07:28', '2024-11-25 12:07:38', 1),
(12, 'Evelin', 'user3@user.com', '2024-11-25 12:07:38', '$2y$10$bfUdblWkyEimqPK7hRaZPuD14lvsh9Lqbn0RDIiAbU9SNDYnEDdOy', NULL, '2024-11-25 12:07:28', '2024-11-25 12:07:38', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacantes`
--

CREATE TABLE `vacantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `salario_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `ultimo_dia` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `publicado` varchar(255) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vacantes`
--

INSERT INTO `vacantes` (`id`, `created_at`, `updated_at`, `titulo`, `salario_id`, `categoria_id`, `empresa`, `ultimo_dia`, `descripcion`, `imagen`, `publicado`, `user_id`) VALUES
(5, '2024-11-25 11:46:32', '2024-11-25 12:24:16', 'Desarrollador Web Senior', 7, 2, 'Grupo Hidrosina', '2024-12-30 00:00:00', 'Empresa 100% mexicana te invita a formar parte de su equipo de trabajo ocupando la siguiente posición:\n\nESPECIALISTA EN DESARROLLO WEB\n\nREQUISITOS:\n\n- Escolaridad: Licenciatura/Ingeniero en Sistemas, Programación, Informática o afín\n- Experiencia: 5 años en puesto similar\n- Experiencia en lenguaje de programación en especifico C#, elaboración de estadisticos, documentación y reportes.\n\nFUNCIONES PRINCIPALES:\n- Desarrollar especificaciones de proyectos y asignar el grupo responsable de dichos proyectos.\n- Mantener documentados y actualizados los desarrollos realizados.\n- Programación, prueba y mantenimiento de los sistemas de información\n- Automatizar procesos\n- Atender incidencias de clientes y/o usuarios\n- Dar mantenimiento a los sistemas asignados\n\nOFRECEMOS:\n- SUELDO BRUTO MENSUAL (100% nómina)\n- PRESTACIONES DE LEY\n- VALES DE DESPENSA\n- SEGURO DE VIDA\n\nHORARIO:\nDe lunes a viernes de 09:00 am a 07:00 pm\n\nZona de trabajo: Miguel Hidalgo, CDMX, ( A 10 minutos de metro Polanco).\n\n¡¡ FORMA PARTE DE NUESTRO EQUIPO DE TRABAJO!!\n\nRequerimientos\n\n    Educación mínima: Educación superior - Licenciatura\n    5 años de experiencia\n', 'Vj5aqayoP7nKLaEu7kizpSj87ov4NsmQBS4hqD8G.png', '1', 8),
(6, '2024-11-25 11:49:26', '2024-11-25 11:49:26', 'Desarrollador PHP', 8, 1, 'Relative IT', '2024-12-31 00:00:00', 'Profesionista proactivo, entusiasta, autodidacta, con sólidos conocimientos en HTML, CSS, JavaScript, PHP, MySQL dentro de sus principales funciones estará: - Desarrollo de aplicaciones web - Desarrollo de procesos en línea de comando - Planeación de proyectos - Proporcionar apoyo a los requerimientos de los servicios de Fábrica de Software - Diseño de bases de datos - Identificar, recopilar y analizar requerimientos - Proporcionar mantenimiento y soporte técnico HABILIDADES Proactivo Trabajo en equipo Autodidacta Honrado Responsable Dinamismo Habilidad verbal Organizado REQUISITOS Escolaridad: Ingeniero en Sistemas. Experiencia: Prácticas Profesionales Sexo: Indistinto Edad: 23 años en adelante. Estado civil: Indistinto Conocimientos en: HTML, CSS, JavaScript, PHP, MySQL Idioma requerido: Inglés leído Comienzo: Inmediato Duración: Indefinido Horario: Tiempo completo Zona de Trabajo: Ciudad de México, zona sur ', '9agthWkYEmVpk7Lyq2kPGxZgREHgPiP2JHfPjpEo.gif', '1', 8),
(7, '2024-11-25 11:51:49', '2024-11-25 11:51:49', 'Desarrollador Sr Web / Java / springboot', 9, 4, 'Truper', '2024-12-31 00:00:00', 'Somos la empresa más reconocida en Latinoamérica en manufactura, distribución y comercialización de herramientas y productos para todos los segmentos de la industria ferretera.Si disfrutas el trabajo en equipo y estás enfocado a resultados, esta es tu oportunidad de construir tu carrera en nuestro equipo como:Desarrollador Sr Web (modalidad presencial)\n\nRequisitos:Licenciatura o técnico superior concluida en sistemas o afin\nMayoría de edad\nExperiencia mínima de 4 a 6 años\nExperiencia como desarrollador JAVA 8, Microservicios, Jenkins, Docker\nTrabajo en entornos de IC| CD\nSpring BootFuncionesDesarrollo de aplicaciones Java web con módulos de spring , jsps y servlets\nAdecuación de componentes backend basados en Java\nDesarrollo de aplicaciones front end con múltiples tecnologías front como angular, reactjs , jquery\nImplementación de Microservicios con spring cloud\nMantenimiento de aplicaciones Java existentes\nMigraciones de aplicaciones Java on premise a la nube\nIntegración con tecnologías como Redis, MongoDB, SQL Server, Oracle y SAPResponsabilidades del puesto:Realizar el análisis de sistemas Web (Java y Spring boot)\n\nDesarrollar Servicios Rest y microservicios\nGenerar documentación y pruebas de sistemas desarrolladosOfrecemos:Sueldo basebono bimestralprestaciones de leySeguro de vidaSeguro de gastos médicos mayoresFondo de Ahorro 13%Caja de ahorroDescuentos preferencialesReparto de utilidades50% de prima vacacionalInteresados postularse por este medio ', 'DYwy4NiBekktwEyNisxyTbiUffbYIOb9GCo402pu.png', '1', 8),
(8, '2024-11-25 11:54:59', '2024-11-25 11:54:59', 'Frontend Angular', 8, 2, 'Grupo Nach', '2024-12-31 00:00:00', '$ 30,000.00 (Mensual)\n\nContrato por tiempo indeterminado\n\nTiempo Completo\n\nPresencial\nImportante empresa de desarrollo software busca un desarrollador que se encargue de la maquetación de sitios web y aplicaciones.\n\nOfrecemos\nSueldo de entre 33k libres (100% nómina)\nPrestaciones de ley y superiores\nSeguro de gastos médicos menores y mayores\nEquipo de cómputo dado por la empresa\n\nRequisitos\nConocimientos en:\nIonic\nAngular\nNode.Js\nJavaScript y TypeScript\n\nRequerimientos\n\n    Educación mínima: Educación superior - Licenciatura\n    2 años de experiencia\n', '8xI4alpM0UoBBo5rfTiJhemYQOdSuf8R9AyaRB3E.jpg', '1', 8),
(9, '2024-11-25 12:06:15', '2024-11-25 12:06:15', 'Programador Full Stack', 9, 6, ' WORKUS HUMAN ASSETS', '2024-12-31 00:00:00', ' DESARROLLADOR DE SOFTWARE PHP\n\nInglés avanzado 100%, toda la operación es reportando en inglés. REQUISITO INDISPENSABLE\n\nBuscamos un desarrollador Senior Full Stack con experiencia, orientado al producto y experto en PHP y Laravel framework para unirse a nuestro equipo de ingeniería de software de desarrollo. El rol implica el desarrollo de PHP de pila completa utilizando el marco Laravel con un enfoque en la construcción de nuevas capacidades y la mejora de los productos existentes, la integración de API de proveedores y la resolución de problemas de producción. Entre las responsabilidades de este puesto se incluyen la escritura de aplicaciones web del lado del servidor utilizando PHP 7.2 como lenguaje de programación, framework Laravel, base de datos MySQL, plataforma AWS. El rol incluye el diseño y desarrollo de componentes de back-end, aplicaciones de una sola página y la conexión de aplicaciones a servicios web y API de terceros, además, el rol requiere ayudar a los desarrolladores de front-end a garantizar que su trabajo se integre adecuadamente en la aplicación.\nRequisitos:\nLicenciatura en Ciencias de la Computación o un campo relacionado\nInglés avanzado 100%, toda la operación es reportando en inglés. REQUISITO INDISPENSABLE\n5+ años de experiencia en desarrollo full-stack, desarrollando servicios web RESTful, microservicios y aplicaciones de una sola página.\n+2 años diseñando e implementando soluciones web\nExperiencia trabajando con equipos dispersos geográficamente\nDominio de las siguientes tecnologías: PHP 7.2 como lenguaje de programación, framework Laravel, base de datos MySQL, plataforma AWS, Swagger Docs\nCapacidad comprobada para diseñar e implementar aplicaciones de una sola página (SPA) receptivas\nSólida comprensión de la metodología/conceptos ágiles\nExcelentes habilidades de comunicación verbal y escrita, tanto técnicas como no técnicas\nFuerte ética de trabajo, cómodo trabajando en un entorno dinámico y de ritmo rápido, con la capacidad de gestionar de forma independiente una carga de trabajo con múltiples prioridades\nSólida comprensión de los conceptos y patrones de diseño de la Programación Orientada a Objetos (POO)\nDominio de las siguientes tecnologías: PHP 7.2 como lenguaje de programación, framework Laravel, base de datos MySQL, plataforma AWS, Swagger Docs\n\nOFRECEMOS:\nTrabajo remoto\nAtractivo rango salarial\nCrecimiento y aprendizaje\n\nSI CUBRES EL PERFIL FAVOR DE COMPARTIRME TU CV A LA DIRECCION DE CORREO MENCIONADA O POSTULARTE POR ESTE MEDIO\n\nRequerimientos\n\n    Educación mínima: Educación superior - Licenciatura\n    5 años de experiencia\n    Idiomas: Inglés\n', '3Sce2qJE5rlPevty6xGjYKIWoQFTa7BAtFn23wjY.png', '1', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidatos_user_id_foreign` (`user_id`),
  ADD KEY `candidatos_vacante_id_foreign` (`vacante_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `salarios`
--
ALTER TABLE `salarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vacantes`
--
ALTER TABLE `vacantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacantes_salario_id_foreign` (`salario_id`),
  ADD KEY `vacantes_categoria_id_foreign` (`categoria_id`),
  ADD KEY `vacantes_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salarios`
--
ALTER TABLE `salarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vacantes`
--
ALTER TABLE `vacantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `candidatos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidatos_vacante_id_foreign` FOREIGN KEY (`vacante_id`) REFERENCES `vacantes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vacantes`
--
ALTER TABLE `vacantes`
  ADD CONSTRAINT `vacantes_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vacantes_salario_id_foreign` FOREIGN KEY (`salario_id`) REFERENCES `salarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vacantes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
