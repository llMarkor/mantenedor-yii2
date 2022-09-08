-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2022 a las 21:34:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mantenedor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1662502620),
('m130524_201442_init', 1662502636),
('m190124_110200_add_verification_token_column_to_user_table', 1662502636);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `perfil` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `perfil`) VALUES
(1, 'Marcelo', 'marcelo.om1995@gmail.com', '0', '', '', 0),
(2, 'Mario', 'maritopineda@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$dFE3eEFEeWxUb0d5MXFTUA$gAbUyPUra34ZDuetcZfE1u/EC1/b9L+zt4tZxA1jNyY', '02ae4f339268628a92e3dc479cdd6143', '$2y$10$qTmbMDAxQAh6Bf/E7BJEk.yEhEULgbTnK6ilXG2rcfXCZ8VKG88w.', 0),
(7, 'cristian', 'cristian_aroz@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$YzNZRTlhQ3ZvSFFoSTVjaQ$/QlAjZTUSHB8Ch6ajcNdYyfy2/inz5TahQV2poCWCxg', '929721af6d6f464d5fec7be9ad87c7b9', '$2y$10$n65o.ecpDlf9j8vcc/kxFuuTffT.erfplkBABwc6tMPHAGMJVs3na', 0),
(8, 'juan', 'cristian_aroz@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$Vk90Q3BiUXR3d3RsTGtwdQ$bY0r/a05UQnu6dPlJ7SQvna9/vv9iow4ffUjhBDq/m0', 'e914e0ddd94d72bf49b0b2ff60579c7a', '$2y$10$rYPhFjiddjhV0FFeLlhg6.Wv1T7a.LB67k.3ttfNdsjj8a84w0B9u', 0),
(9, 'pedro', 'pedro@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$T1E3QWY5dHpiTlNuQzBmdA$cwuuS0L00Nu687zmVv4/6e+xpp+qixtNH8V1Sp6qPmE', '3a1957b9ecc44b4309bbbb70589d1621', '$2y$10$P7y1nMm.2BEorurBpHsJUu8rm9pqhChTIuzqYmoqUFCCMWljS365m', 0),
(10, 'luisa', 'luisa@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$QU9JSmcyTnhzL0ZGaVVMLw$vugxxj7Zvfo3nyp5RhFwlMAHkaEbRqSQUx8H8NM/eAI', '3b252cac080dde3890b0d5904f954880', '$2y$10$jUWvnXTb891beCzzdKBG7eK8JfVd6EKLMpggbjFMBqYvj.svHR5TS', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
