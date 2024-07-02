-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2024 a las 02:28:13
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
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `biografia` text DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `photo`, `name`, `biografia`, `phone`, `email`, `password`, `created_at`) VALUES
(1, NULL, '', NULL, NULL, 'johndoe@example.com', '$2b$10$9362fADMejwQgKe4y2QVHuWt4RXi4ljsP8dABDveo2ZM0dzSblKpK', '2024-06-30 07:07:05'),
(5, NULL, '', NULL, NULL, 'testuser@example.com', '$2b$10$5QdP5WTF9Gp7cWLooRdZ3O/T/RZ.OaTJkhfgE6Wv8GMtxn0BBU.LC', '2024-06-30 13:14:10'),
(8, NULL, '', NULL, NULL, 'ejemplo@example.com', '$2b$10$FioknS9Fu6cbCafwnqcSy.DCSzpu./Q3hSuN/lqNGJJMEkBHe8jX2', '2024-06-30 14:08:44'),
(9, NULL, '', NULL, NULL, 'erick@gmail.com', '$2b$10$VWswldAn/ayC743fJZm8TO4F5Fi8FbszPMatvQoNl9c1LBLT53HUG', '2024-06-30 14:31:44'),
(11, 'newphotho.jpg', 'New Guus', 'el perro come croquetas', '1234567890', 'newkariml@example.com', '$2b$10$qEBGbGrxC3.a09BYxfo6AePjgzdtQiMBRQ0j0GXioP.34exWYYDum', '2024-07-01 03:38:32'),
(12, 'newphotho.jpg', 'Ruben', 'los burritos son alimento', '1234567890', 'rubeninvaniable@example.com', '$2b$10$qHZAnvIig7zN10tmXyxhp.XiOIyxPZ7N/4fk5Z0919viD25.MKP6m', '2024-07-01 08:20:53'),
(13, NULL, '', NULL, NULL, '12312@gmail.com', '$2b$10$M.yD9xU/F8dj6V4hikzPL.2auEXlLou7ViJYZTEoIwQdRM0cPPPT6', '2024-07-01 13:38:22'),
(15, 'newphotho.jpg', 'erickito', 'los burritos son alimento', '458965', 'ericktercero@example.com', '$2b$10$dAKbOHDMmK.AK78d4YATBux3ZRL1D97Zj0BHcOsbDqqkGHMZCj9jW', '2024-07-02 05:02:25'),
(16, NULL, '', NULL, NULL, 'erick2@gmail.com', '$2b$10$ZH7h6kQxGauwXt17Ln1jaeqcAqCzkAA5GHICZih0MwpBF.sM8Vox6', '2024-07-02 05:52:11'),
(17, NULL, 'Erick rabago', '\"ss\"', '6674850437', 'erickrabagocuen12@gmail.com', '$2b$10$jdgUeT3fUr6EYJ.X4UV6GeYPIzOmXW6TuNmTGgAQThEPM75IexBi2', '2024-07-02 05:56:53'),
(18, NULL, 'Erick rabago', 'hola!!!', '6674850437', 'erick123456789@hotmail.com', '$2b$10$sBiJOZX8THHPbR.ShtcSh.sPwLFfVoWodnrvW5J/1DtxrIjYRWNEu', '2024-07-02 06:09:29'),
(20, NULL, 'nuevesito', '\"xdddd\"', '12312312312', 'nuevo@gmail.com', '$2b$10$69QyohsofRHe8sgoCZsnG.Va9n3kW8bghW5zKfcBMQCyyyz337zn2', '2024-07-02 06:51:09'),
(23, NULL, 'soy el ultimo', 'me gusta ser el ultimo', '123123123213', 'ultimoregistro@gmail.com', '$2b$10$GUSxvia3Nuq2kdvWtFrK5uw584mWI7Wv.mzVQT6ypw3ZgXjNFr2/a', '2024-07-02 07:22:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
