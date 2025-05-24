-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2025 a las 19:08:28
-- Versión del servidor: 11.6.2-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sonaura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `id_actor` int(11) NOT NULL,
  `nombre_actor` varchar(100) NOT NULL,
  `imagen_actor` varchar(100) DEFAULT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`id_actor`, `nombre_actor`, `imagen_actor`, `creador_id`) VALUES
(1, 'Sam Worthington', NULL, 1),
(2, 'Zoe Saldana', NULL, 1),
(3, 'Sigourney Weaver', NULL, 1),
(4, 'Stephen Lang', NULL, 1),
(5, 'Robert Downey Jr.', NULL, 1),
(6, 'Chris Evans', NULL, 1),
(7, 'Scarlett Johansson', NULL, 1),
(8, 'Chris Hemsworth', NULL, 1),
(9, 'Leonardo DiCaprio', NULL, 1),
(10, 'Kate Winslet', NULL, 1),
(11, 'Billy Zane', NULL, 1),
(12, 'Kathy Bates', NULL, 1),
(13, 'Daisy Ridley', NULL, 1),
(14, 'John Boyega', NULL, 1),
(15, 'Harrison Ford', NULL, 1),
(16, 'Adam Driver', NULL, 1),
(17, 'Chris Pratt', NULL, 1),
(18, 'Bryce Dallas Howard', NULL, 1),
(19, 'Vincent D\'Onofrio', NULL, 1),
(20, 'Irrfan Khan', NULL, 1),
(21, 'Donald Glover', NULL, 1),
(22, 'Beyoncé', NULL, 1),
(23, 'James Earl Jones', NULL, 1),
(24, 'Chiwetel Ejiofor', NULL, 1),
(25, 'Robert Downey Jr.', NULL, 1),
(26, 'Chris Evans', NULL, 1),
(27, 'Mark Ruffalo', NULL, 1),
(28, 'Chris Hemsworth', NULL, 1),
(29, 'Vin Diesel', NULL, 1),
(30, 'Paul Walker', NULL, 1),
(31, 'Dwayne Johnson', NULL, 1),
(32, 'Michelle Rodriguez', NULL, 1),
(33, 'Idina Menzel', NULL, 1),
(34, 'Kristen Bell', NULL, 1),
(35, 'Josh Gad', NULL, 1),
(36, 'Jonathan Groff', NULL, 1),
(37, 'Emma Watson', NULL, 1),
(38, 'Dan Stevens', NULL, 1),
(39, 'Luke Evans', NULL, 1),
(40, 'Josh Gad', NULL, 1),
(41, 'Timothée Chalamet', NULL, 1),
(42, 'Zendaya', NULL, 1),
(43, 'Rebecca Ferguson', NULL, 1),
(44, 'Josh Brolin', NULL, 1),
(45, 'Cillian Murphy', NULL, 1),
(46, 'Emily Blunt', NULL, 1),
(47, 'Matt Damon', NULL, 1),
(48, 'Robert Downey Jr.', NULL, 1),
(49, 'Emma Stone', NULL, 1),
(50, 'Mark Ruffalo', NULL, 1),
(51, 'Willem Dafoe', NULL, 1),
(52, 'Ramy Youssef', NULL, 1),
(53, 'Kirsten Dunst', NULL, 1),
(54, 'Cailee Spaeny', NULL, 1),
(55, 'Wagner Moura', NULL, 1),
(56, 'Stephen McKinley Henderson', NULL, 1),
(57, 'Zendaya', NULL, 1),
(58, 'Mike Faist', NULL, 1),
(59, 'Josh O\'Connor', NULL, 1),
(60, 'A.J. Lister', NULL, 1),
(61, 'Owen Teague', NULL, 1),
(62, 'Freya Allan', NULL, 1),
(63, 'Kevin Durand', NULL, 1),
(64, 'Peter Macon', NULL, 1),
(65, 'Anya Taylor-Joy', NULL, 1),
(66, 'Chris Hemsworth', NULL, 1),
(67, 'Tom Burke', NULL, 1),
(68, 'Nathan Jones', NULL, 1),
(69, 'Margot Robbie', NULL, 1),
(70, 'Ryan Gosling', NULL, 1),
(71, 'America Ferrera', NULL, 1),
(72, 'Kate McKinnon', NULL, 1),
(73, 'Sandra Hüller', NULL, 1),
(74, 'Swann Arlaud', NULL, 1),
(75, 'Milo Machado Graner', NULL, 1),
(76, 'Antoine Reinartz', NULL, 1),
(77, 'Christian Friedel', NULL, 1),
(78, 'Sandra Hüller', NULL, 1),
(79, 'Freya Kreutzkam', NULL, 1),
(80, 'Ralph Herforth', NULL, 1),
(81, 'Rebecca Hall', NULL, 1),
(82, 'Brian Tyree Henry', NULL, 1),
(83, 'Dan Stevens', NULL, 1),
(84, 'Kaylee Hottle', NULL, 1),
(85, 'Leonardo DiCaprio', NULL, 1),
(86, 'Robert De Niro', NULL, 1),
(87, 'Lily Gladstone', NULL, 1),
(88, 'Jesse Plemons', NULL, 1),
(89, 'Amy Poehler', NULL, 1),
(90, 'Phyllis Smith', NULL, 1),
(91, 'Lewis Black', NULL, 1),
(92, 'Maya Hawke', NULL, 1),
(93, 'Timothée Chalamet', NULL, 1),
(94, 'Hugh Grant', NULL, 1),
(95, 'Olivia Colman', NULL, 1),
(96, 'Keegan-Michael Key', NULL, 1),
(97, 'Jason Momoa', NULL, 1),
(98, 'Patrick Wilson', NULL, 1),
(99, 'Amber Heard', NULL, 1),
(100, 'Yahya Abdul-Mateen II', NULL, 1),
(101, 'Robert Pattinson', NULL, 1),
(102, 'Zoë Kravitz', NULL, 1),
(103, 'Paul Dano', NULL, 1),
(104, 'Colin Farrell', NULL, 1),
(105, 'Song Kang-ho', NULL, 1),
(106, 'Lee Sun-kyun', NULL, 1),
(107, 'Cho Yeo-jeong', NULL, 1),
(108, 'Choi Woo-shik', NULL, 1),
(109, 'Shameik Moore', NULL, 1),
(110, 'Hailee Steinfeld', NULL, 1),
(111, 'Oscar Isaac', NULL, 1),
(112, 'Jake Johnson', NULL, 1),
(113, 'Michelle Yeoh', NULL, 1),
(114, 'Ke Huy Quan', NULL, 1),
(115, 'Stephanie Hsu', NULL, 1),
(116, 'James Hong', NULL, 1),
(117, 'Tom Cruise', NULL, 1),
(118, 'Miles Teller', NULL, 1),
(119, 'Jennifer Connelly', NULL, 1),
(120, 'Jon Hamm', NULL, 1),
(121, 'Joaquin Phoenix', NULL, 1),
(122, 'Robert De Niro', NULL, 1),
(123, 'Zazie Beetz', NULL, 1),
(124, 'Frances Conroy', NULL, 1),
(125, 'Leonardo DiCaprio', NULL, 1),
(126, 'Joseph Gordon-Levitt', NULL, 1),
(127, 'Elliot Page', NULL, 1),
(128, 'Tom Hardy', NULL, 1),
(129, 'Christian Bale', NULL, 1),
(130, 'Heath Ledger', NULL, 1),
(131, 'Aaron Eckhart', NULL, 1),
(132, 'Maggie Gyllenhaal', NULL, 1),
(133, 'Matthew McConaughey', NULL, 1),
(134, 'Anne Hathaway', NULL, 1),
(135, 'Jessica Chastain', NULL, 1),
(136, 'Michael Caine', NULL, 1),
(137, 'Edward Norton', NULL, 1),
(138, 'Brad Pitt', NULL, 1),
(139, 'Helena Bonham Carter', NULL, 1),
(140, 'Meat Loaf', NULL, 1),
(141, 'John Travolta', NULL, 1),
(142, 'Samuel L. Jackson', NULL, 1),
(143, 'Uma Thurman', NULL, 1),
(144, 'Bruce Willis', NULL, 1),
(145, 'Tim Robbins', NULL, 1),
(146, 'Morgan Freeman', NULL, 1),
(147, 'Bob Gunton', NULL, 1),
(148, 'William Sadler', NULL, 1),
(149, 'Marlon Brando', NULL, 1),
(150, 'Al Pacino', NULL, 1),
(151, 'James Caan', NULL, 1),
(152, 'Diane Keaton', NULL, 1),
(153, 'Tom Hanks', NULL, 1),
(154, 'Robin Wright', NULL, 1),
(155, 'Gary Sinise', NULL, 1),
(156, 'Sally Field', NULL, 1),
(157, 'Elijah Wood', NULL, 1),
(158, 'Ian McKellen', NULL, 1),
(159, 'Viggo Mortensen', NULL, 1),
(160, 'Sean Astin', NULL, 1),
(161, 'Keanu Reeves', NULL, 1),
(162, 'Laurence Fishburne', NULL, 1),
(163, 'Carrie-Anne Moss', NULL, 1),
(164, 'Hugo Weaving', NULL, 1),
(165, 'Russell Crowe', NULL, 1),
(166, 'Joaquin Phoenix', NULL, 1),
(167, 'Connie Nielsen', NULL, 1),
(168, 'Oliver Reed', NULL, 1),
(169, 'Brad Pitt', NULL, 1),
(170, 'Morgan Freeman', NULL, 1),
(171, 'Gwyneth Paltrow', NULL, 1),
(172, 'Kevin Spacey', NULL, 1),
(173, 'Tom Hanks', NULL, 1),
(174, 'Matt Damon', NULL, 1),
(175, 'Tom Sizemore', NULL, 1),
(176, 'Edward Burns', NULL, 1),
(177, 'Matthew Broderick', NULL, 1),
(178, 'Jeremy Irons', NULL, 1),
(179, 'James Earl Jones', NULL, 1),
(180, 'Moira Kelly', NULL, 1),
(181, 'Michael J. Fox', NULL, 1),
(182, 'Christopher Lloyd', NULL, 1),
(183, 'Lea Thompson', NULL, 1),
(184, 'Crispin Glover', NULL, 1),
(185, 'Jodie Foster', NULL, 1),
(186, 'Anthony Hopkins', NULL, 1),
(187, 'Scott Glenn', NULL, 1),
(188, 'Ted Levine', NULL, 1),
(189, 'Sam Neill', NULL, 1),
(190, 'Laura Dern', NULL, 1),
(191, 'Jeff Goldblum', NULL, 1),
(192, 'Richard Attenborough', NULL, 1),
(193, 'Liam Neeson', NULL, 1),
(194, 'Ben Kingsley', NULL, 1),
(195, 'Ralph Fiennes', NULL, 1),
(196, 'Caroline Goodall', NULL, 1),
(197, 'Matt Damon', NULL, 1),
(198, 'Robin Williams', NULL, 1),
(199, 'Ben Affleck', NULL, 1),
(200, 'Stellan Skarsgård', NULL, 1),
(201, 'Leonardo DiCaprio', NULL, 1),
(202, 'Matt Damon', NULL, 1),
(203, 'Jack Nicholson', NULL, 1),
(204, 'Mark Wahlberg', NULL, 1),
(205, 'Sam Worthington', NULL, 1),
(206, 'Zoe Saldana', NULL, 1),
(207, 'Sigourney Weaver', NULL, 1),
(208, 'Stephen Lang', NULL, 1),
(209, 'Ryan Reynolds', NULL, 1),
(210, 'Hugh Jackman', NULL, 1),
(211, 'Emma Corrin', NULL, 1),
(212, 'Matthew Macfadyen', NULL, 1),
(213, 'Josh Brolin', NULL, 1),
(214, 'Javier Bardem', NULL, 1),
(215, 'Tommy Lee Jones', NULL, 1),
(216, 'Kelly Macdonald', NULL, 1),
(217, 'Ryan Gosling', NULL, 1),
(218, 'Emma Stone', NULL, 1),
(219, 'John Legend', NULL, 1),
(220, 'Rosemarie DeWitt', NULL, 1),
(221, 'Anthony Gonzalez', NULL, 1),
(222, 'Gael García Bernal', NULL, 1),
(223, 'Benjamin Bratt', NULL, 1),
(224, 'Alanna Ubach', NULL, 1),
(225, 'Sandra Bullock', NULL, 1),
(226, 'George Clooney', NULL, 1),
(227, 'Ed Harris', NULL, 1),
(228, 'Orto Ignatiussen', NULL, 1),
(229, 'Ralph Fiennes', NULL, 1),
(230, 'Tony Revolori', NULL, 1),
(231, 'Saoirse Ronan', NULL, 1),
(232, 'Adrien Brody', NULL, 1),
(233, 'Chadwick Boseman', NULL, 1),
(234, 'Michael B. Jordan', NULL, 1),
(235, 'Lupita Nyong`o', NULL, 1),
(236, 'Danai Gurira', NULL, 1),
(237, 'Ewan McGregor', NULL, 1),
(238, 'Albert Finney', NULL, 1),
(239, 'Billy Crudup', NULL, 1),
(240, 'Jessica Lange', NULL, 1),
(241, 'Emilia Clarke', NULL, 1),
(242, 'Kit Harington', NULL, 1),
(243, 'Peter Dinklage', NULL, 1),
(244, 'Lena Headey', NULL, 1),
(245, 'Bryan Cranston', NULL, 1),
(246, 'Aaron Paul', NULL, 1),
(247, 'Anna Gunn', NULL, 1),
(248, 'Bob Odenkirk', NULL, 1),
(249, 'Millie Bobby Brown', NULL, 1),
(250, 'Finn Wolfhard', NULL, 1),
(251, 'Winona Ryder', NULL, 1),
(252, 'David Harbour', NULL, 1),
(253, 'James Gandolfini', NULL, 1),
(254, 'Edie Falco', NULL, 1),
(255, 'Michael K. Williams', NULL, 1),
(256, 'Dominic West', NULL, 1),
(257, 'Evan Rachel Wood', NULL, 1),
(258, 'Thandiwe Newton', NULL, 1),
(259, 'Claire Foy', NULL, 1),
(260, 'Olivia Colman', NULL, 1),
(261, 'Matthew McConaughey', NULL, 1),
(262, 'Woody Harrelson', NULL, 1),
(263, 'Billy Bob Thornton', NULL, 1),
(264, 'Kieran Culkin', NULL, 1),
(265, 'Sarah Snook', NULL, 1),
(266, 'Pedro Pascal', NULL, 1),
(267, 'Steve Carell', NULL, 1),
(268, 'Jenna Fischer', NULL, 1),
(269, 'Jennifer Aniston', NULL, 1),
(270, 'Courteney Cox', NULL, 1),
(271, 'Homer Simpson', NULL, 1),
(272, 'Marge Simpson', NULL, 1),
(273, 'Sophie Turner', NULL, 1),
(274, 'Jon Hamm', NULL, 1),
(275, 'Elisabeth Moss', NULL, 1),
(276, 'Andrew Lincoln', NULL, 1),
(277, 'Norman Reedus', NULL, 1),
(278, 'Anthony Hopkins', NULL, 1),
(279, 'Mads Mikkelsen', NULL, 1),
(280, 'Phoebe Waller-Bridge', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Actor', 7, 'add_actor'),
(26, 'Can change Actor', 7, 'change_actor'),
(27, 'Can delete Actor', 7, 'delete_actor'),
(28, 'Can view Actor', 7, 'view_actor'),
(29, 'Can add Categoría de Noticia', 8, 'add_categorianoticia'),
(30, 'Can change Categoría de Noticia', 8, 'change_categorianoticia'),
(31, 'Can delete Categoría de Noticia', 8, 'delete_categorianoticia'),
(32, 'Can view Categoría de Noticia', 8, 'view_categorianoticia'),
(33, 'Can add Contenido', 9, 'add_contenido'),
(34, 'Can change Contenido', 9, 'change_contenido'),
(35, 'Can delete Contenido', 9, 'delete_contenido'),
(36, 'Can view Contenido', 9, 'view_contenido'),
(37, 'Can add Comentario', 10, 'add_comentario'),
(38, 'Can change Comentario', 10, 'change_comentario'),
(39, 'Can delete Comentario', 10, 'delete_comentario'),
(40, 'Can view Comentario', 10, 'view_comentario'),
(41, 'Can add Entrevista', 11, 'add_entrevista'),
(42, 'Can change Entrevista', 11, 'change_entrevista'),
(43, 'Can delete Entrevista', 11, 'delete_entrevista'),
(44, 'Can view Entrevista', 11, 'view_entrevista'),
(45, 'Can add Galería', 12, 'add_galeria'),
(46, 'Can change Galería', 12, 'change_galeria'),
(47, 'Can delete Galería', 12, 'delete_galeria'),
(48, 'Can view Galería', 12, 'view_galeria'),
(49, 'Can add Género', 13, 'add_genero'),
(50, 'Can change Género', 13, 'change_genero'),
(51, 'Can delete Género', 13, 'delete_genero'),
(52, 'Can view Género', 13, 'view_genero'),
(53, 'Can add Género de Contenido', 14, 'add_contenidogenero'),
(54, 'Can change Género de Contenido', 14, 'change_contenidogenero'),
(55, 'Can delete Género de Contenido', 14, 'delete_contenidogenero'),
(56, 'Can view Género de Contenido', 14, 'view_contenidogenero'),
(57, 'Can add Lista Personalizada', 15, 'add_listapersonalizada'),
(58, 'Can change Lista Personalizada', 15, 'change_listapersonalizada'),
(59, 'Can delete Lista Personalizada', 15, 'delete_listapersonalizada'),
(60, 'Can view Lista Personalizada', 15, 'view_listapersonalizada'),
(61, 'Can add Contenido de Lista Personalizada', 16, 'add_listacontenido'),
(62, 'Can change Contenido de Lista Personalizada', 16, 'change_listacontenido'),
(63, 'Can delete Contenido de Lista Personalizada', 16, 'delete_listacontenido'),
(64, 'Can view Contenido de Lista Personalizada', 16, 'view_listacontenido'),
(65, 'Can add Suscripción al Newsletter', 17, 'add_newsletter'),
(66, 'Can change Suscripción al Newsletter', 17, 'change_newsletter'),
(67, 'Can delete Suscripción al Newsletter', 17, 'delete_newsletter'),
(68, 'Can view Suscripción al Newsletter', 17, 'view_newsletter'),
(69, 'Can add Noticia', 18, 'add_noticia'),
(70, 'Can change Noticia', 18, 'change_noticia'),
(71, 'Can delete Noticia', 18, 'delete_noticia'),
(72, 'Can view Noticia', 18, 'view_noticia'),
(73, 'Can add Categoría de Noticia', 19, 'add_noticiacategoria'),
(74, 'Can change Categoría de Noticia', 19, 'change_noticiacategoria'),
(75, 'Can delete Categoría de Noticia', 19, 'delete_noticiacategoria'),
(76, 'Can view Categoría de Noticia', 19, 'view_noticiacategoria'),
(77, 'Can add Notificación', 20, 'add_notificacion'),
(78, 'Can change Notificación', 20, 'change_notificacion'),
(79, 'Can delete Notificación', 20, 'delete_notificacion'),
(80, 'Can view Notificación', 20, 'view_notificacion'),
(81, 'Can add Perfil', 21, 'add_perfil'),
(82, 'Can change Perfil', 21, 'change_perfil'),
(83, 'Can delete Perfil', 21, 'delete_perfil'),
(84, 'Can view Perfil', 21, 'view_perfil'),
(85, 'Can add Plataforma de Streaming', 22, 'add_plataformastreaming'),
(86, 'Can change Plataforma de Streaming', 22, 'change_plataformastreaming'),
(87, 'Can delete Plataforma de Streaming', 22, 'delete_plataformastreaming'),
(88, 'Can view Plataforma de Streaming', 22, 'view_plataformastreaming'),
(89, 'Can add Reparto', 23, 'add_reparto'),
(90, 'Can change Reparto', 23, 'change_reparto'),
(91, 'Can delete Reparto', 23, 'delete_reparto'),
(92, 'Can view Reparto', 23, 'view_reparto'),
(93, 'Can add Suscripción de Usuario', 24, 'add_suscripcionusuario'),
(94, 'Can change Suscripción de Usuario', 24, 'change_suscripcionusuario'),
(95, 'Can delete Suscripción de Usuario', 24, 'delete_suscripcionusuario'),
(96, 'Can view Suscripción de Usuario', 24, 'view_suscripcionusuario'),
(97, 'Can add Valoración', 25, 'add_valoracion'),
(98, 'Can change Valoración', 25, 'change_valoracion'),
(99, 'Can delete Valoración', 25, 'delete_valoracion'),
(100, 'Can view Valoración', 25, 'view_valoracion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$aDLIVUTzkdNRJqzNQMEdg6$zqjwo9eUBsDUBsJCsV4cKaI/aax6zhw4R7Qq7s0No4s=', NULL, 1, 'sonaura', '', '', '', 1, 1, '2025-05-24 16:41:38.273432');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_noticia`
--

CREATE TABLE `categorias_noticia` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `comentario` longtext NOT NULL,
  `fecha_comentario` datetime(6) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_comentario_padre_id` int(11) DEFAULT NULL,
  `id_usuario_id` int(11) DEFAULT NULL,
  `id_contenido_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id_contenido` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `pelicula_serie` varchar(10) NOT NULL,
  `eslogan` varchar(50) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `año_estreno` int(11) NOT NULL,
  `duracion` int(11) NOT NULL,
  `director` varchar(200) DEFAULT NULL,
  `guionistas` longtext DEFAULT NULL,
  `clasificacion` varchar(10) DEFAULT NULL,
  `imagen_poster` varchar(100) DEFAULT NULL,
  `alt_imagen_poster` varchar(255) DEFAULT NULL,
  `imagen_fondo` varchar(100) DEFAULT NULL,
  `alt_imagen_fondo` varchar(255) DEFAULT NULL,
  `puntuacion` double DEFAULT NULL,
  `es_exclusivo` tinyint(1) NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id_contenido`, `titulo`, `pelicula_serie`, `eslogan`, `sinopsis`, `año_estreno`, `duracion`, `director`, `guionistas`, `clasificacion`, `imagen_poster`, `alt_imagen_poster`, `imagen_fondo`, `alt_imagen_fondo`, `puntuacion`, `es_exclusivo`, `fecha_edicion`, `fecha_creacion`, `creador_id`) VALUES
(1, 'Avatar', 'pelicula', 'Entra en Pandora', 'Jake Sully, un ex-marine parapléjico, es enviado al exuberante planeta Pandora para infiltrarse entre los Na’vi, una raza indígena. Usando un avatar alienígena, descubre un mundo de maravillas y conflictos. Dividido entre su misión y su conexión con los Na’vi, Jake debe elegir un bando en una épica batalla por la supervivencia y el equilibrio de la naturaleza.', 2009, 162, 'James Cameron', 'James Cameron', 'PG-13', 'posters/Avatar.jpg', 'Avatar', NULL, NULL, 7.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(2, 'Avengers: Endgame', 'pelicula', 'El final del juego', 'Tras una devastadora derrota, los Vengadores supervivientes se unen para revertir las acciones de Thanos, quien aniquiló a la mitad de la humanidad. Con el tiempo como su mayor enemigo, emprenden una misión épica llena de sacrificios y decisiones imposibles, donde el destino del universo pende de un hilo en esta culminante batalla de superhéroes.', 2019, 181, 'Anthony y Joe Russo', 'Christopher Markus, Stephen McFeely', 'PG-13', 'posters/Avengers Endgame.jpg', 'Avengers: Endgame', NULL, NULL, 8.4, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(3, 'Titanic', 'pelicula', 'Nada en la Tierra podría separarlos', 'En 1912, Rose, una joven de clase alta, y Jack, un artista bohemio, se enamoran a bordo del lujoso Titanic. Su apasionado romance desafía las barreras sociales, pero el destino del barco, en ruta hacia un trágico iceberg, pone a prueba su amor y su lucha por la supervivencia en una de las mayores catástrofes marítimas de la historia.', 1997, 194, 'James Cameron', 'James Cameron', 'PG-13', 'posters/Titanic.jpg', 'Titanic', NULL, NULL, 7.9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(4, 'Star Wars: The Force Awakens', 'pelicula', 'Despierta la fuerza', 'Décadas después de la caída del Imperio, una nueva amenaza, la Primera Orden, emerge en la galaxia. Rey, una recolectora de chatarra, y Finn, un desertor de los stormtroopers, se unen a la Resistencia para enfrentar al malvado Kylo Ren. Con la ayuda de leyendas como Han Solo, su aventura destapa secretos que podrían cambiar el destino de la galaxia.', 2015, 138, 'J.J. Abrams', 'Lawrence Kasdan, J.J. Abrams', 'PG-13', 'posters/Star Wars The Force Awakens.webp', 'Star Wars: The Force Awakens', NULL, NULL, 7.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(5, 'Jurassic World', 'pelicula', 'El parque ha abierto', 'En Isla Nublar, un parque temático de dinosaurios de última generación atrae a millones. Pero cuando un nuevo híbrido genético, el Indominus Rex, escapa, el caos se desata. Owen, un entrenador de velociraptores, y Claire, la gerente del parque, lideran una desesperada misión para salvar a los visitantes y restaurar el orden en un mundo donde la naturaleza reclama su poder.', 2015, 124, 'Colin Trevorrow', 'Rick Jaffa, Amanda Silver', 'PG-13', 'posters/Jurassic World.jpg', 'Jurassic World', NULL, NULL, 7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(6, 'The Lion King', 'pelicula', 'Siente el rugido', 'Simba, un joven león destinado a ser rey, enfrenta la traición y el exilio tras la muerte de su padre. Guiado por nuevos amigos y el espíritu de su pasado, emprende un viaje de autodescubrimiento para reclamar su lugar en la Roca del Rey. Esta vibrante reimaginación en acción real celebra el legado, el coraje y el ciclo de la vida.', 2019, 118, 'Jon Favreau', 'Jeff Nathanson', 'PG', 'posters/The Lion King.jpg', 'The Lion King', NULL, NULL, 6.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(7, 'The Avengers', 'pelicula', 'Reunidos', 'Cuando Loki amenaza la Tierra con una invasión alienígena, Nick Fury reúne a un grupo dispar de superhéroes: Iron Man, Capitán América, Thor, Hulk, Viuda Negra y Ojo de Halcón. Juntos, deben superar sus diferencias y unir fuerzas en una batalla épica para salvar al mundo de la destrucción, demostrando que el verdadero poder radica en el trabajo en equipo.', 2012, 143, 'Joss Whedon', 'Joss Whedon', 'PG-13', 'posters/The Avengers.jpg', 'The Avengers', NULL, NULL, 8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(8, 'Furious 7', 'pelicula', 'Una última carrera', 'Dom Toretto y su equipo enfrentan una nueva amenaza: Deckard Shaw, un letal asesino que busca vengarse. Entre carreras de alta velocidad, acrobacias imposibles y lealtades puestas a prueba, la familia debe unirse para proteger a los suyos y detener a Shaw en una aventura global cargada de adrenalina, donde el pasado regresa con fuerza y el peligro acecha en cada curva.', 2015, 137, 'James Wan', 'Chris Morgan', 'PG-13', 'posters/Furious 7.jpg', 'Furious 7', NULL, NULL, 7.1, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(9, 'Frozen II', 'pelicula', 'El viaje continúa', 'Elsa, Anna, Kristoff, Olaf y Sven se aventuran más allá de Arendelle para descubrir el origen de los poderes de Elsa. Una misteriosa voz la llama hacia un bosque encantado, donde enfrentarán peligros y secretos del pasado. En esta mágica odisea, las hermanas aprenderán que el amor y la valentía son la clave para proteger su reino y su vínculo.', 2019, 103, 'Chris Buck, Jennifer Lee', 'Jennifer Lee', 'PG', 'posters/Frozen II.jpg', 'Frozen II', NULL, NULL, 6.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(10, 'Beauty and the Beast', 'pelicula', 'La belleza está en el interior', 'Bella, una joven soñadora, se sacrifica para salvar a su padre y queda atrapada en el castillo de una misteriosa Bestia. A medida que descubre la bondad oculta tras su apariencia, surge un amor que desafía encantamientos y prejuicios. Esta mágica adaptación en acción real explora la redención, el coraje y la fuerza de los lazos que trascienden las apariencias.', 2017, 129, 'Bill Condon', 'Stephen Chbosky, Evan Spiliotopoulos', 'PG', 'posters/Beauty and the Beast.jpg', 'Beauty and the Beast', NULL, NULL, 7.1, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(11, 'Dune: Parte 2', 'pelicula', 'Entra en el desierto', 'Paul Atreides abraza su destino entre los Fremen de Arrakis, mientras la galaxia se tambalea bajo conspiraciones y guerras por el control de la especia. Aliado con Chani, lidera una rebelión contra las fuerzas opresoras. Esta épica continuación combina intriga política, misticismo y batallas colosales en un desierto donde el poder y la profecía chocan con consecuencias universales.', 2024, 166, 'Denis Villeneuve', 'Denis Villeneuve, Jon Spaihts', 'PG-13', 'posters/DuneParte2.jpg', 'Dune: Parte 2', NULL, NULL, 9.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(12, 'Oppenheimer', 'pelicula', 'El hombre detrás de la bomba', 'J. Robert Oppenheimer, un brillante físico, lidera el Proyecto Manhattan para crear la primera bomba atómica durante la Segunda Guerra Mundial. Su genialidad choca con dilemas éticos y políticos mientras el arma redefine el destino de la humanidad. Este drama histórico explora el peso de la ambición, el sacrificio y las consecuencias de un descubrimiento que cambió el mundo para siempre.', 2023, 180, 'Christopher Nolan', 'Christopher Nolan', 'PG-13', 'posters/Oppenheimer.jpg', 'Oppenheimer', NULL, NULL, 9.6, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(13, 'Pobres Criaturas', 'pelicula', 'Una vida extraordinaria', 'Bella Baxter, resucitada por un excéntrico científico, despierta a un mundo de maravillas y excesos. Su insaciable curiosidad la lleva a un viaje de autodescubrimiento, desafiando normas sociales y explorando el amor, la libertad y la identidad. Esta fábula surrealista, cargada de humor negro y audacia visual, reimagina el poder de la voluntad humana en un mundo extraño y fascinante.', 2023, 141, 'Yorgos Lanthimos', 'Tony McNamara', 'R', 'posters/PoorThings.jpg', 'Pobres Criaturas', NULL, NULL, 9.4, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(14, 'Civil War', 'pelicula', 'El país dividido', 'En un Estados Unidos fracturado por una guerra civil moderna, un grupo de periodistas recorre un país devastado para documentar la verdad. Entre ciudades destruidas y facciones enfrentadas, enfrentan peligros mortales mientras intentan llegar a Washington D.C. Este thriller distópico explora la fragilidad de la democracia y el costo humano de un conflicto que divide a una nación.', 2024, 109, 'Alex Garland', 'Alex Garland', 'R', 'posters/CivilWar.jpg', 'Civil War', NULL, NULL, 9.2, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(15, 'Rivales', 'pelicula', 'Competencia sin límites', 'Tashi, una ex-promesa del tenis convertida en entrenadora, guía a su esposo hacia la grandeza en la cancha, pero su pasado se reaviva cuando enfrentan a un antiguo amigo y rival. En un torbellino de pasión, ambición y secretos, este triángulo amoroso en el mundo del tenis profesional desafía lealtades y desata emociones intensas en cada punto del juego.', 2024, 131, 'Luca Guadagnino', 'Justin Kuritzkes', 'R', 'posters/Rivales.jpg', 'Rivales', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(16, 'El Planeta de los Simios: Nuevo Reino', 'pelicula', 'Un nuevo comienzo', 'Siglos después del reinado de César, una nueva generación de simios construye una civilización avanzada. Noa, un joven líder, se enfrenta a un tirano que amenaza el futuro de su especie. Aliado con una humana misteriosa, emprende una aventura que revela secretos del pasado y redefine la convivencia entre simios y humanos en un mundo al borde del cambio.', 2024, 145, 'Wes Ball', 'Josh Friedman', 'PG-13', 'posters/El Planeta de los Simios Nuevo Reino.webp', 'El Planeta de los Simios: Nuevo Reino', NULL, NULL, 8.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(17, 'Furiosa: De la Saga Mad Max', 'pelicula', 'El origen de Furiosa', 'En un páramo postapocalíptico, la joven Furiosa es arrancada de su hogar y cae en manos de un señor de la guerra. Su lucha por sobrevivir y regresar a casa forja su leyenda como guerrera implacable. Esta precuela de Mad Max: Fury Road ofrece acción vertiginosa, paisajes desoladores y una historia de venganza y redención que define a una heroína inolvidable.', 2024, 150, 'George Miller', 'George Miller, Nico Lathouris', 'R', 'posters/Furiosa.jpg', 'Furiosa: De la Saga Mad Max', NULL, NULL, 8.6, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(18, 'Barbie', 'pelicula', 'Sé lo que quieras ser', 'Barbie, habitante de un mundo perfecto, se embarca en una aventura en el mundo real cuando enfrenta una crisis existencial. Acompañada por Ken, descubre las complejidades de la humanidad, el feminismo y la libertad de elegir su propio camino. Esta comedia vibrante y conmovedora combina humor, sátira y un mensaje poderoso sobre la identidad y el empoderamiento.', 2023, 114, 'Greta Gerwig', 'Greta Gerwig, Noah Baumbach', 'PG-13', 'posters/Barbie.jpg', 'Barbie', NULL, NULL, 8.2, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(19, 'Anatomía de una Caída', 'pelicula', '¿Culpable o inocente?', 'Sandra, una escritora de éxito, se convierte en la principal sospechosa tras la misteriosa muerte de su esposo. En un juicio que desentraña su matrimonio, su hijo ciego debe enfrentar la verdad sobre sus padres. Este thriller psicológico explora la ambigüedad de la verdad, las dinámicas familiares y los prejuicios, manteniendo al espectador al borde de la duda hasta el final.', 2023, 150, 'Justine Triet', 'Justine Triet, Arthur Harari', 'R', 'posters/AnatomiaDeUnaCaida.jpg', 'Anatomía de una Caída', NULL, NULL, 8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(20, 'La Zona de Interés', 'pelicula', 'La banalidad del mal', 'Rudolf Höss, comandante de Auschwitz, y su familia llevan una vida idílica junto al campo de concentración. Mientras el horror ocurre a pocos metros, su rutina cotidiana revela una perturbadora indiferencia. Esta inquietante obra maestra examina la deshumanización, la complicidad silenciosa y el contraste entre la vida doméstica y las atrocidades inimaginables, dejando una huella imborrable sobre el costo moral de la ignorancia.', 2023, 105, 'Jonathan Glazer', 'Jonathan Glazer', 'PG-13', 'posters/La Zona de Interés.jpg', 'La Zona de Interés', NULL, NULL, 7.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(21, 'Godzilla y Kong: El Nuevo Imperio', 'pelicula', 'Dos titanes, un destino', 'Godzilla y Kong, antiguos rivales, deben unirse para enfrentar una amenaza colosal que emerge de la Tierra Hueca. Mientras los humanos descubren secretos ancestrales, los titanes libran una batalla épica que determinará el equilibrio del mundo. Esta aventura llena de acción combina espectaculares enfrentamientos con una exploración de la mitología de los monstruos más icónicos del cine.', 2024, 115, 'Adam Wingard', 'Terry Rossio, Simon Barrett', 'PG-13', 'posters/Godzilla y Kong El Nuevo Imperio.jpg', 'Godzilla y Kong: El Nuevo Imperio', NULL, NULL, 7.6, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(22, 'Los Asesinos de la Luna', 'pelicula', 'La codicia no tiene límites', 'En la Oklahoma de los años 20, los asesinatos de miembros de la nación Osage, enriquecida por el petróleo, desencadenan una investigación del naciente FBI. Este drama épico desentraña una red de codicia, traición y racismo, mientras explora el amor y la lealtad en un contexto de ambición desmedida. Basada en hechos reales, es un retrato inquietante de la injusticia.', 2023, 206, 'Martin Scorsese', 'Eric Roth, Martin Scorsese', 'R', 'posters/Los Asesinos de la Luna.jpg', 'Los Asesinos de la Luna', NULL, NULL, 7.4, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(23, 'Del Revés 2', 'pelicula', 'Nuevas emociones', 'Riley, ahora adolescente, enfrenta los retos de la pubertad mientras nuevas emociones, como Ansiedad, irrumpen en su mente. Alegría y el resto del equipo luchan por mantener el equilibrio en un torbellino de cambios. Esta encantadora secuela animada explora con humor y corazón los desafíos de crecer, la aceptación de uno mismo y la complejidad de las emociones humanas.', 2024, 96, 'Kelsey Mann', 'Meg LeFauve', 'PG', 'posters/DelReves2.jpg', 'Del Revés 2', NULL, NULL, 7.2, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(24, 'Wonka', 'pelicula', 'El origen del chocolate', 'El joven Willy Wonka, lleno de sueños y creatividad, se embarca en una aventura para abrir su primera tienda de chocolates. Enfrentando rivales y desafíos, su ingenio y magia transforman el mundo a su alrededor. Esta colorida precuela explora los orígenes del excéntrico chocolatero, celebrando la imaginación, la perseverancia y el dulce poder de hacer realidad los sueños.', 2023, 116, 'Paul King', 'Simon Farnaby, Paul King', 'PG', 'posters/Wonka.jpg', 'Wonka', NULL, NULL, 7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(25, 'Aquaman y el Reino Perdido', 'pelicula', 'El océano en peligro', 'Arthur Curry, el rey de Atlantis, enfrenta una antigua amenaza que pone en peligro los siete mares. Aliado con su hermano Orm, debe forjar una alianza improbable para detener la destrucción. Esta aventura épica combina acción submarina, mitología y lealtades divididas, mientras Aquaman lucha por proteger su reino y el mundo de la superficie en una batalla de proporciones colosales.', 2023, 124, 'James Wan', 'David Leslie Johnson-McGoldrick', 'PG-13', 'posters/Aquaman.jpg', 'Aquaman y el Reino Perdido', NULL, NULL, 6.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(26, 'The Batman', 'pelicula', 'La venganza tiene un nuevo rostro', 'En una Gotham sumida en la corrupción, Bruce Wayne, en su segundo año como Batman, investiga una serie de asesinatos orquestados por el Acertijo. Mientras desentraña un complot que amenaza a la ciudad, enfrenta sus propios demonios. Este thriller oscuro y psicológico redefine al caballero de la noche con una intensidad visceral, explorando la justicia, la venganza y la esperanza en la oscuridad.', 2022, 176, 'Matt Reeves', 'Matt Reeves, Peter Craig', 'PG-13', 'posters/The Batman.webp', 'The Batman', NULL, NULL, 8.9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(27, 'Parásitos', 'pelicula', 'La lucha de clases', 'La familia Kim, sumida en la pobreza, se infiltra astutamente en la vida de los ricos Park, haciéndose pasar por empleados calificados. Su plan desata una serie de eventos impredecibles que revelan las profundas desigualdades sociales. Este thriller satírico, cargado de humor negro y giros inesperados, explora la codicia, la moralidad y las barreras invisibles que dividen a la sociedad.', 2019, 132, 'Bong Joon-ho', 'Bong Joon-ho, Han Jin-won', 'R', 'posters/Parásitos.jpg', 'Parásitos', NULL, NULL, 9.7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(28, 'Spider-Man: A Través del Spider-Verso', 'pelicula', 'El multiverso se expande', 'Miles Morales, el joven Spider-Man, se lanza a una aventura a través de dimensiones paralelas, enfrentándose a un misterioso villano que amenaza la existencia de todos los universos. Junto a otros Spider-People, explora mundos vibrantes y únicos. Esta secuela animada combina arte innovador, acción trepidante y una emotiva historia sobre el sacrificio, la identidad y el poder de elegir tu propio destino.', 2023, 140, 'Joaquim Dos Santos, Kemp Powers', 'Phil Lord, Christopher Miller', 'PG', 'posters/Spider-Man A Través del Spider-Verso.jpg', 'Spider-Man: A Través del Spider-Verso', NULL, NULL, 9.5, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(29, 'Todo a la Vez en Todas Partes', 'pelicula', 'El multiverso es caótico', 'Evelyn Wang, una inmigrante china agotada por su lavandería y sus problemas familiares, descubre que puede conectarse con versiones de sí misma en universos paralelos. Enfrentando una amenaza multiversal, debe usar sus nuevas habilidades para salvar la realidad. Esta comedia surrealista y conmovedora explora la identidad, el amor familiar y la búsqueda de sentido en un caos infinito.', 2022, 139, 'Daniel Kwan, Daniel Scheinert', 'Daniel Kwan, Daniel Scheinert', 'R', 'posters/Todo a la Vez en Todas Partes.jpg', 'Todo a la Vez en Todas Partes', NULL, NULL, 9.3, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(30, 'Top Gun: Maverick', 'pelicula', 'El regreso de Maverick', 'Pete \"Maverick\" Mitchell, un piloto legendario, regresa para entrenar a una nueva generación de aviadores en una misión de alto riesgo. Enfrentando su pasado y a un talentoso pero rebelde piloto, Maverick lidera un equipo en una operación que desafía los límites del coraje y la tecnología. Esta secuela llena de acción combina adrenalina aérea con una emotiva historia de redención.', 2022, 131, 'Joseph Kosinski', 'Ehren Kruger, Eric Warren Singer', 'PG-13', 'posters/Top Gun Maverick.webp', 'Top Gun: Maverick', NULL, NULL, 9.1, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(31, 'Joker', 'pelicula', 'Ríe y el mundo reirá contigo', 'Arthur Fleck, un comediante fracasado en una Gotham opresiva, lucha contra el abandono y la crueldad de la sociedad. Su descenso a la locura lo transforma en el icónico Joker, desencadenando un caos que sacude la ciudad. Este drama psicológico, oscuro y provocador, explora la alienación, la desesperación y los orígenes de un villano que redefine el crimen y la rebelión.', 2019, 122, 'Todd Phillips', 'Todd Phillips, Scott Silver', 'R', 'posters/Joker.jpg', 'Joker', NULL, NULL, 8.7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(32, 'Origen', 'pelicula', 'Tu mente es la escena del crimen', 'Dom Cobb, un ladrón especializado en infiltrarse en sueños, recibe el encargo definitivo: implantar una idea en la mente de una persona mientras duerme. Con un equipo de expertos, enfrenta un laberinto de sueños dentro de sueños, donde el tiempo, la realidad y el peligro se distorsionan. Este thriller de ciencia ficción explora la mente humana y los límites de la percepción.', 2010, 148, 'Christopher Nolan', 'Christopher Nolan', 'PG-13', 'posters/Origen.webp', 'Origen', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(33, 'El Caballero Oscuro', 'pelicula', 'El caballero de Gotham', 'Batman enfrenta su mayor desafío cuando el Joker desata el caos en Gotham con un plan para destruir el orden y la esperanza. Mientras el fiscal Harvey Dent lucha por la justicia, Bruce Wayne debe confrontar los límites de su moralidad. Este thriller épico combina acción, intriga y dilemas éticos, redefiniendo el género de superhéroes con una intensidad inolvidable.', 2008, 152, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'PG-13', 'posters/El Caballero Oscuro.webp', 'El Caballero Oscuro', NULL, NULL, 9.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(34, 'Interstellar', 'pelicula', 'El destino de la humanidad está en las estrellas', 'En un futuro donde la Tierra agoniza, Cooper, un ex-piloto, lidera una misión para encontrar un nuevo hogar para la humanidad a través de un agujero de gusano. Enfrentando sacrificios personales y fenómenos cósmicos, el equipo lucha contra el tiempo y el espacio. Este drama de ciencia ficción explora el amor, la supervivencia y la búsqueda de esperanza en lo desconocido.', 2014, 169, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'PG-13', 'posters/Interstellar.jpg', 'Interstellar', NULL, NULL, 9.5, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(35, 'El Club de la Pelea', 'pelicula', 'La primera regla es...', 'Un oficinista desencantado y un carismático desconocido crean un club secreto donde los hombres liberan sus frustraciones a puñetazos. Lo que comienza como una rebelión contra la monotonía se convierte en un movimiento caótico que desafía el orden social. Este thriller satírico y psicológico explora la identidad, el consumismo y la rebelión, dejando una marca imborrable con su audacia y provocación.', 1999, 139, 'David Fincher', 'Jim Uhls', 'R', 'posters/El Club de la Pelea.webp', 'El Club de la Pelea', NULL, NULL, 9.3, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(36, 'Tiempos Violentos', 'pelicula', 'Historias entrelazadas', 'En Los Ángeles, las vidas de un boxeador, dos sicarios, un gánster y su esposa se cruzan en una serie de historias entrelazadas llenas de crimen, redención y caos. Con diálogos ingeniosos y una narrativa no lineal, esta obra maestra de Quentin Tarantino combina violencia estilizada, humor negro y personajes inolvidables en un retrato vibrante de la vida al margen de la ley.', 1994, 154, 'Quentin Tarantino', 'Quentin Tarantino, Roger Avary', 'R', 'posters/Tiempos Violentos.jpg', 'Tiempos Violentos', NULL, NULL, 9.4, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(37, 'Cadena Perpetua', 'pelicula', 'La esperanza es algo peligroso', 'Andy Dufresne, un banquero condenado injustamente por asesinato, llega a la prisión de Shawshank, donde forja una improbable amistad con Red. A través de décadas de adversidad, su ingenio y esperanza desafían un sistema opresivo. Este drama conmovedor, basado en un relato de Stephen King, celebra la resiliencia humana, la redención y el poder transformador de la amistad frente a la injusticia.', 1994, 142, 'Frank Darabont', 'Frank Darabont', 'R', 'posters/Cadena Perpetua.jpg', 'Cadena Perpetua', NULL, NULL, 9.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(38, 'El Padrino', 'pelicula', 'El poder lo es todo', 'En la Nueva York de los años 40, la familia Corleone, liderada por Don Vito, navega el mundo del crimen organizado. Cuando una traición amenaza su imperio, Michael, el hijo menor, se ve arrastrado a un camino de poder y violencia. Este drama épico explora la lealtad, el legado y el costo moral de la ambición en una saga mafiosa inolvidable.', 1972, 175, 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'R', 'posters/El Padrino.jpg', 'El Padrino', NULL, NULL, 9.7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(39, 'Forrest Gump', 'pelicula', 'La vida es como una caja de bombones', 'Forrest Gump, un hombre sencillo con un corazón puro, vive una vida extraordinaria a través de décadas de cambios en Estados Unidos. Desde su infancia hasta convertirse en héroe, corredor y empresario, su amor por Jenny y su bondad inquebrantable lo guían. Esta conmovedora historia celebra la resiliencia, el destino y la belleza de la humanidad en un mundo impredecible.', 1994, 142, 'Robert Zemeckis', 'Eric Roth', 'PG-13', 'posters/Forrest Gump.jpg', 'Forrest Gump', NULL, NULL, 9.3, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(40, 'El Señor de los Anillos: La Comunidad del Anillo', 'pelicula', 'Un anillo para gobernarlos a todos', 'Frodo, un joven hobbit, hereda un anillo que encierra un poder oscuro. Junto a una comunidad de héroes, incluidos Gandalf, Aragorn y Legolas, emprende un peligroso viaje para destruirlo y evitar que caiga en manos del malvado Sauron. Esta épica aventura combina magia, valentía y amistad en un mundo fantástico al borde de la guerra.', 2001, 178, 'Peter Jackson', 'Fran Walsh, Philippa Boyens', 'PG-13', 'posters/El Señor de los Anillos La Comunidad del Anillo.jpg', 'El Señor de los Anillos: La Comunidad del Anillo', NULL, NULL, 9.4, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(41, 'Matrix', 'pelicula', 'La realidad es una ilusión', 'Neo, un hacker, descubre que el mundo es una simulación controlada por máquinas. Guiado por Morfeo y Trinity, se une a la resistencia para despertar a la humanidad y enfrentar a los agentes de la Matrix. Este revolucionario thriller de ciencia ficción combina acción, filosofía y efectos visuales innovadores, cuestionando la realidad y el poder de la elección en un mundo digital.', 1999, 136, 'Lana Wachowski, Lilly Wachowski', 'Lana Wachowski, Lilly Wachowski', 'R', 'posters/Matrix.jpg', 'Matrix', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(42, 'Gladiador', 'pelicula', 'Fuerza y honor', 'Maximus, un general romano traicionado, es esclavizado y convertido en gladiador tras la muerte de su familia. En la arena, su fuerza y carisma lo convierten en un símbolo de resistencia contra un emperador corrupto. Este drama épico combina acción visceral, venganza y redención, mientras Maximus lucha por la justicia y la libertad en un Imperio Romano al borde del caos.', 2000, 155, 'Ridley Scott', 'David Franzoni, John Logan', 'R', 'posters/Gladiador.jpg', 'Gladiador', NULL, NULL, 8.9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(43, 'Siete', 'pelicula', 'Los siete pecados capitales', 'Dos detectives, el veterano Somerset y el impulsivo Mills, persiguen a un asesino en serie que usa los siete pecados capitales como inspiración para sus crímenes. En una ciudad oscura y opresiva, cada caso los lleva más cerca de un final inquietante. Este thriller psicológico combina suspenso, horror y dilemas morales, dejando una marca imborrable con su atmósfera sombría y giros devastadores.', 1995, 127, 'David Fincher', 'Andrew Kevin Walker', 'R', 'posters/Siete.jpg', 'Siete', NULL, NULL, 9.2, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(44, 'Rescatando al Soldado Ryan', 'pelicula', 'La guerra tiene un precio', 'Tras el desembarco de Normandía, el capitán Miller lidera un escuadrón en una peligrosa misión para rescatar al soldado Ryan, el último superviviente de cuatro hermanos. Enfrentando los horrores de la Segunda Guerra Mundial, el equipo cuestiona el valor de una vida frente al sacrificio colectivo. Este drama bélico ofrece acción cruda y una profunda reflexión sobre el deber y la humanidad.', 1998, 169, 'Steven Spielberg', 'Robert Rodat', 'R', 'posters/Rescatando al Soldado Ryan.jpg', 'Rescatando al Soldado Ryan', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(45, 'El Rey León', 'pelicula', 'Siente el rugido', 'Simba, un cachorro de león destinado a gobernar, huye tras una tragedia familiar orquestada por su tío Scar. Criado por un dúo improbable, Timón y Pumba, regresa para enfrentar su pasado y reclamar su lugar como rey. Esta joya animada combina humor, música y una emotiva historia sobre el crecimiento, la responsabilidad y el ciclo eterno de la vida.', 1994, 89, 'Roger Allers, Rob Minkoff', 'Irene Mecchi, Jonathan Roberts', 'G', 'posters/El Rey León.jpg', 'El Rey León', NULL, NULL, 8.8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(46, 'Volver al Futuro', 'pelicula', 'Regresa al pasado', 'Marty McFly, un adolescente, viaja accidentalmente a 1955 en un DeLorean modificado por el excéntrico Doc Brown. Para regresar a 1985, debe asegurar que sus padres se enamoren mientras evita alterar el futuro. Esta aventura de ciencia ficción combina humor, acción y nostalgia, explorando el destino, la familia y las consecuencias de jugar con el tiempo en un viaje inolvidable.', 1985, 116, 'Robert Zemeckis', 'Robert Zemeckis, Bob Gale', 'PG', 'posters/Volver al Futuro.jpg', 'Volver al Futuro', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(47, 'El Silencio de los Corderos', 'pelicula', 'El mal tiene muchas caras', 'Clarice Starling, una joven agente del FBI, busca la ayuda del brillante pero aterrador Hannibal Lecter para capturar a un asesino en serie conocido como Buffalo Bill. En un juego psicológico de astucia y manipulación, Clarice enfrenta sus miedos mientras desentraña un caso macabro. Este thriller icónico combina suspenso, horror y personajes inolvidables en una cacería implacable.', 1991, 118, 'Jonathan Demme', 'Ted Tally', 'R', 'posters/El Silencio de los Corderos.jpg', 'El Silencio de los Corderos', NULL, NULL, 9.2, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(48, 'Parque Jurásico', 'pelicula', 'La vida se abre camino', 'Un excéntrico millonario crea un parque temático con dinosaurios clonados en una isla remota. Cuando un fallo de seguridad desata el caos, un grupo de visitantes, incluidos un paleontólogo y dos niños, lucha por sobrevivir entre criaturas prehistóricas. Este clásico de ciencia ficción combina maravilla, tensión y efectos visuales revolucionarios, explorando la arrogancia humana frente al poder de la naturaleza.', 1993, 127, 'Steven Spielberg', 'Michael Crichton, David Koepp', 'PG-13', 'posters/Parque Jurásico.jpg', 'Parque Jurásico', NULL, NULL, 9.1, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(49, 'La Lista de Schindler', 'pelicula', 'El valor de una vida', 'Oskar Schindler, un empresario alemán, transforma su ambición en una misión para salvar a más de mil judíos durante el Holocausto, arriesgando todo en un acto de humanidad. Este drama histórico, basado en hechos reales, retrata el horror del genocidio y el poder de la compasión, dejando una profunda reflexión sobre el sacrificio y la esperanza en tiempos de oscuridad.', 1993, 195, 'Steven Spielberg', 'Steven Zaillian', 'R', 'posters/La Lista de Schindler.jpg', 'La Lista de Schindler', NULL, NULL, 9.7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(50, 'El Indomable Will Hunting', 'pelicula', 'El genio está en todas partes', 'Will Hunting, un joven conserje con un intelecto prodigioso para las matemáticas, oculta su talento tras un pasado turbulento. Cuando un profesor lo descubre, un terapeuta poco convencional lo ayuda a enfrentar sus demonios emocionales. Este drama conmovedor explora la genialidad, la vulnerabilidad y la búsqueda de propósito, destacando el poder transformador de la conexión humana y el autodescubrimiento.', 1997, 126, 'Gus Van Sant', 'Matt Damon, Ben Affleck', 'R', 'posters/El Indomable Will Hunting.jpg', 'El Indomable Will Hunting', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(51, 'Infiltrados', 'pelicula', '¿Quién es el topo?', 'En Boston, un policía encubierto, Billy Costigan, se infiltra en la mafia irlandesa, mientras un criminal, Colin Sullivan, se convierte en topo dentro de la policía. Sus caminos se cruzan en un juego mortal de engaño y traición. Este thriller intenso de Martin Scorsese combina suspenso, intriga y actuaciones magistrales, explorando la lealtad y el costo de vivir una doble vida.', 2006, 151, 'Martin Scorsese', 'William Monahan', 'R', 'posters/Infiltrados.jpg', 'Infiltrados', NULL, NULL, 9.1, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(52, 'Avatar 2', 'pelicula', 'El camino del agua', 'Jake Sully y Neytiri, ahora padres, enfrentan nuevas amenazas en Pandora mientras protegen a su familia. Explorando océanos y culturas desconocidas, se unen a los clanes Na’vi para combatir una invasión humana renovada. Esta secuela épica combina espectaculares paisajes acuáticos, acción y una emotiva historia sobre la familia, la resistencia y la conexión con la naturaleza.', 2022, 192, 'James Cameron', 'James Cameron', 'PG-13', 'posters/Avatar 2.jpg', 'Avatar 2', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(53, 'Deadpool y Wolverine', 'pelicula', 'El dúo más irreverente', 'Deadpool, el mercenario bocazas, une fuerzas con un Wolverine renuente en una misión multiversal llena de caos y humor. Enfrentando enemigos extravagantes y rompiendo la cuarta pared, este dúo improbable combina acción explosiva, bromas irreverentes y una sorprendente camaradería, mientras intentan salvar su realidad en una aventura que redefine la amistad y la redención.', 2024, 128, 'Shawn Levy', 'Rhett Reese, Paul Wernick', 'R', 'posters/Deadpool y Wolverine.jpg', 'Deadpool y Wolverine', NULL, NULL, 8.7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(54, 'Sin Lugar para los Débiles', 'pelicula', 'El destino está escrito', 'Llewelyn Moss encuentra una maleta llena de dinero en una escena de crimen en el desierto, desencadenando una persecución implacable por parte de Anton Chigurh, un asesino psicopático. En un juego mortal de gato y ratón, este thriller de los hermanos Coen explora el destino, la moralidad y la violencia en un paisaje desolado donde nadie está a salvo.', 2007, 122, 'Joel Coen, Ethan Coen', 'Joel Coen, Ethan Coen', 'R', 'posters/Sin Lugar para los Débiles.jpg', 'Sin Lugar para los Débiles', NULL, NULL, 9, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(55, 'La La Land', 'pelicula', 'Haz realidad tus sueños', 'Mia, una aspirante a actriz, y Sebastian, un pianista de jazz, se enamoran en Los Ángeles mientras persiguen sus sueños. Su romance se enfrenta a los sacrificios que exige la ambición en una ciudad de ilusiones. Esta vibrante historia musical combina números espectaculares, emoción y una reflexión agridulce sobre el amor, el arte y las decisiones que definen la vida.', 2016, 128, 'Damien Chazelle', 'Damien Chazelle', 'PG-13', 'posters/La La Land.jpg', 'La La Land', NULL, NULL, 8.5, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(56, 'Coco', 'pelicula', 'Recuerda a tu familia', 'Miguel, un niño mexicano con sueños de ser músico, se adentra accidentalmente en la vibrante Tierra de los Muertos. Allí, descubre secretos de su familia y la importancia de honrar a sus ancestros. Esta colorida aventura animada celebra la cultura mexicana, la música y los lazos familiares, entregando una historia conmovedora sobre la memoria, el legado y el poder de seguir tus pasiones.', 2017, 105, 'Lee Unkrich', 'Adrian Molina, Matthew Aldrich', 'PG', 'posters/Coco.jpg', 'Coco', NULL, NULL, 8.7, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(57, 'Gravity', 'pelicula', 'No hay nada que temer allá afuera', 'La Dra. Ryan Stone y el astronauta Matt Kowalski quedan varados en el espacio tras un accidente que destruye su transbordador. Enfrentando la soledad y el vacío infinito, luchan por sobrevivir contra el tiempo y las adversidades. Este thriller visualmente impactante combina tensión, efectos revolucionarios y una profunda exploración de la resiliencia humana frente al aislamiento y la desesperación.', 2013, 91, 'Alfonso Cuarón', 'Alfonso Cuarón, Jonás Cuarón', 'PG-13', 'posters/Gravity.jpg', 'Gravity', NULL, NULL, 8.1, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(58, 'El Gran Hotel Budapest', 'pelicula', 'Una aventura inolvidable', 'En los años 30, Gustave, un excéntrico conserje, y Zero, su joven protegido, se ven envueltos en una intriga tras la muerte de una huésped adinerada. Entre robos, persecuciones y un valioso cuadro, esta comedia estilizada de Wes Anderson combina humor extravagante, personajes coloridos y una estética única, explorando la lealtad y la nostalgia en un mundo en declive.', 2014, 99, 'Wes Anderson', 'Wes Anderson, Hugo Guinness', 'R', 'posters/El Gran Hotel Budapest.jpg', 'El Gran Hotel Budapest', NULL, NULL, 8.4, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(59, 'Black Panther', 'pelicula', 'Wakanda por siempre', 'T’Challa, el nuevo rey de Wakanda, debe proteger su nación tecnológicamente avanzada de amenazas internas y externas tras la muerte de su padre. Como Black Panther, enfrenta a un rival que desafía su liderazgo y los secretos del reino. Esta épica de superhéroes combina acción, cultura africana y temas de identidad, ofreciendo un vibrante homenaje al legado y la responsabilidad.', 2018, 134, 'Ryan Coogler', 'Ryan Coogler, Joe Robert Cole', 'PG-13', 'posters/Black Panther.jpg', 'Black Panther', NULL, NULL, 8, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(60, 'El Gran Pez', 'pelicula', 'Una vida de historias', 'Will Bloom intenta descifrar la verdad detrás de las fantásticas historias de su padre, Edward, un hombre cuya vida está llena de relatos extraordinarios. A través de cuentos de gigantes, brujas y amores épicos, esta fábula de Tim Burton explora la relación entre padre e hijo, la magia de la narrativa y la búsqueda de significado en una vida llena de imaginación.', 2003, 125, 'Tim Burton', 'John August', 'PG-13', 'posters/El Gran Pez.jpg', 'El Gran Pez', NULL, NULL, 8.2, 0, '2025-05-24 18:42:04.000000', '2025-05-24 18:42:04.000000', 1),
(61, 'Game of Thrones', 'serie', 'El invierno se acerca', 'En Westeros, las casas nobles luchan por el Trono de Hierro mientras una antigua amenaza, los Caminantes Blancos, emerge del Norte. Intrigas, batallas y traiciones definen esta épica saga de poder y destino.', 2011, 60, 'David Benioff', 'David Benioff, D.B. Weiss', 'TV-MA', 'posters/GameOfThrones.jpg', 'Game of Thrones', NULL, NULL, 9.3, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(62, 'Breaking Bad', 'serie', 'De maestro a capo', 'Walter White, un profesor de química con cáncer, se convierte en un narcotraficante para asegurar el futuro de su familia. Su alianza con un exalumno desata una espiral de crimen y consecuencias morales.', 2008, 47, 'Vince Gilligan', 'Vince Gilligan', 'TV-MA', 'posters/BreakingBad.jpg', 'Breaking Bad', NULL, NULL, 9.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(63, 'Stranger Things', 'serie', 'Lo extraño acecha', 'En los 80, un grupo de amigos en Hawkins enfrenta fenómenos sobrenaturales vinculados a un laboratorio secreto. Mientras buscan a su amigo perdido, descubren conspiraciones y un mundo invertido.', 2016, 50, 'The Duffer Brothers', 'The Duffer Brothers', 'TV-14', 'posters/StrangerThings.jpg', 'Stranger Things', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(64, 'The Sopranos', 'serie', 'La familia es todo', 'Tony Soprano, un jefe de la mafia de Nueva Jersey, equilibra su vida criminal con problemas familiares y terapia. Este drama explora el poder, la lealtad y los conflictos internos de un mafioso moderno.', 1999, 55, 'David Chase', 'David Chase', 'TV-MA', 'posters/TheSopranos.jpg', 'The Sopranos', NULL, NULL, 9.2, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(65, 'The Wire', 'serie', 'La ciudad sin escapatoria', 'En Baltimore, policías y traficantes se enfrentan en un juego de poder donde las líneas entre el bien y el mal se difuminan. Este drama crudo explora el crimen, la educación y la corrupción sistémica.', 2002, 60, 'David Simon', 'David Simon', 'TV-MA', 'posters/TheWire.jpg', 'The Wire', NULL, NULL, 9.3, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(66, 'Better Call Saul', 'serie', 'Antes de Breaking Bad', 'Saul Goodman, antes de ser el abogado de Walter White, es un abogado en apuros que se transforma en un astuto defensor del crimen. Este spin-off mezcla drama, humor y dilemas éticos.', 2015, 46, 'Vince Gilligan', 'Vince Gilligan, Peter Gould', 'TV-MA', 'posters/BetterCallSaul.jpg', 'Better Call Saul', NULL, NULL, 8.9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(67, 'Westworld', 'serie', '¿Qué es real?', 'En un parque temático futurista, androides con conciencia desafían a sus creadores, desatando un conflicto entre humanidad y tecnología. Este thriller de ciencia ficción explora la libertad y la moralidad.', 2016, 60, 'Jonathan Nolan', 'Jonathan Nolan, Lisa Joy', 'TV-MA', 'posters/Westworld.jpg', 'Westworld', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(68, 'The Crown', 'serie', 'El peso de la corona', 'La reina Isabel II enfrenta desafíos políticos y personales mientras lidera la monarquía británica a través de décadas de cambios. Este drama histórico explora el poder, el deber y las dinámicas familiares.', 2016, 55, 'Peter Morgan', 'Peter Morgan', 'TV-MA', 'posters/TheCrown.jpg', 'The Crown', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(69, 'True Detective', 'serie', 'La verdad está en las sombras', 'Detectives investigan crímenes oscuros que revelan conspiraciones y traumas personales. Cada temporada ofrece una nueva historia de misterio, con personajes complejos y una atmósfera inquietante.', 2014, 60, 'Nic Pizzolatto', 'Nic Pizzolatto', 'TV-MA', 'posters/TrueDetective.jpg', 'True Detective', NULL, NULL, 8.9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(70, 'Fargo', 'serie', 'El crimen nunca es simple', 'Historias de crímenes excéntricos en el Medio Oeste americano, inspiradas en la película de los Coen. Cada temporada mezcla humor negro, violencia y personajes inolvidables en un mosaico de caos.', 2014, 50, 'Noah Hawley', 'Noah Hawley', 'TV-MA', 'posters/Fargo.jpg', 'Fargo', NULL, NULL, 8.9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(71, 'Succession', 'serie', 'La familia lo es todo', 'La familia Roy, dueña de un imperio mediático, lucha por el control en un juego de traiciones y ambiciones. Este drama satírico explora el poder, la riqueza y las dinámicas familiares disfuncionales.', 2018, 60, 'Jesse Armstrong', 'Jesse Armstrong', 'TV-MA', 'posters/Succession.jpg', 'Succession', NULL, NULL, 8.8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(72, 'The Mandalorian', 'serie', 'Un cazarrecompensas, un destino', 'Un cazarrecompensas solitario en el universo de Star Wars protege a un misterioso bebé Yoda mientras enfrenta enemigos y descubre su propósito. Esta aventura combina acción y mitología galáctica.', 2019, 40, 'Jon Favreau', 'Jon Favreau', 'TV-PG', 'posters/TheMandalorian.jpg', 'The Mandalorian', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(73, 'The Office', 'serie', 'La vida en la oficina', 'En la sucursal de Dunder Mifflin, empleados excéntricos enfrentan la rutina con humor y caos. Esta comedia mockumentary celebra las dinámicas laborales y las conexiones humanas con ingenio.', 2005, 22, 'Greg Daniels', 'Greg Daniels', 'TV-14', 'posters/TheOffice.jpg', 'The Office', NULL, NULL, 9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(74, 'Friends', 'serie', 'Siempre estarán ahí', 'Seis amigos en Nueva York enfrentan amores, trabajos y la vida diaria con humor y corazón. Esta icónica comedia captura la amistad y las risas en un mundo de relaciones y sueños.', 1994, 22, 'David Crane', 'David Crane, Marta Kauffman', 'TV-PG', 'posters/Friends.jpg', 'Friends', NULL, NULL, 8.9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(75, 'The Simpsons', 'serie', 'La familia que nunca cambia', 'Los Simpson, una familia disfuncional de Springfield, enfrentan aventuras absurdas y sátiras de la vida americana. Esta serie animada es un ícono cultural lleno de humor y crítica social.', 1989, 22, 'Matt Groening', 'Matt Groening', 'TV-PG', 'posters/TheSimpsons.jpg', 'The Simpsons', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(76, 'House of the Dragon', 'serie', 'El fuego reinará', 'La dinastía Targaryen enfrenta intrigas y guerras civiles por el control del Trono de Hierro. Este spin-off de Game of Thrones combina dragones, ambición y traiciones en un mundo épico.', 2022, 60, 'Ryan Condal', 'Ryan Condal', 'TV-MA', 'posters/HouseOfTheDragon.jpg', 'House of the Dragon', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(77, 'Lost', 'serie', 'El misterio te encuentra', 'Supervivientes de un accidente aéreo en una isla misteriosa enfrentan fenómenos extraños y secretos personales. Este drama de ciencia ficción mezcla supervivencia, mitología y giros inesperados.', 2004, 45, 'J.J. Abrams', 'J.J. Abrams, Damon Lindelof', 'TV-14', 'posters/Lost.jpg', 'Lost', NULL, NULL, 8.3, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(78, 'Mad Men', 'serie', 'La imagen lo es todo', 'En la Nueva York de los 60, Don Draper, un publicista brillante pero atormentado, navega la industria de la publicidad y su vida personal. Este drama explora la ambición, la identidad y el cambio social.', 2007, 47, 'Matthew Weiner', 'Matthew Weiner', 'TV-MA', 'posters/MadMen.jpg', 'Mad Men', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(79, 'The Walking Dead', 'serie', 'Sobrevive o muere', 'En un mundo postapocalíptico, Rick Grimes lidera a un grupo de supervivientes contra zombis y amenazas humanas. Este drama de terror explora la supervivencia, la moralidad y la humanidad en crisis.', 2010, 45, 'Frank Darabont', 'Frank Darabont', 'TV-MA', 'posters/TheWalkingDead.jpg', 'The Walking Dead', NULL, NULL, 8.2, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(80, 'Black Mirror', 'serie', 'El futuro es ahora', 'Cada episodio explora un futuro distópico donde la tecnología transforma la sociedad de formas inquietantes. Esta antología de ciencia ficción combina sátira, suspense y reflexiones sobre la humanidad.', 2011, 60, 'Charlie Brooker', 'Charlie Brooker', 'TV-MA', 'posters/BlackMirror.jpg', 'Black Mirror', NULL, NULL, 8.8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(81, 'Sherlock', 'serie', 'La mente es el arma', 'Sherlock Holmes y John Watson resuelven crímenes en el Londres moderno con ingenio y tecnología. Este drama detectivesco reimagina el clásico con giros brillantes y personajes carismáticos.', 2010, 90, 'Mark Gatiss', 'Mark Gatiss, Steven Moffat', 'TV-14', 'posters/Sherlock.jpg', 'Sherlock', NULL, NULL, 9.1, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(82, 'The Witcher', 'serie', 'El destino los une', 'Geralt de Rivia, un cazador de monstruos, se cruza con una hechicera y una princesa en un mundo de magia y peligro. Esta épica fantástica explora el destino, el poder y la lucha por el equilibrio.', 2019, 60, 'Lauren Schmidt Hissrich', 'Lauren Schmidt Hissrich', 'TV-MA', 'posters/TheWitcher.jpg', 'The Witcher', NULL, NULL, 8.2, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(83, 'Narcos', 'serie', 'El poder tiene un precio', 'La historia del ascenso y caída de los carteles de droga colombianos, centrada en Pablo Escobar y los agentes que lo persiguen. Este drama combina crimen, política y tensión en un relato implacable.', 2015, 50, 'Chris Brancato', 'Chris Brancato', 'TV-MA', 'posters/Narcos.jpg', 'Narcos', NULL, NULL, 8.8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(84, 'The Boys', 'serie', 'Los héroes no siempre son buenos', 'En un mundo donde los superhéroes son corruptos, un grupo de vigilantes lucha para exponer sus crímenes. Esta sátira de acción combina violencia, humor negro y críticas al poder y la fama.', 2019, 60, 'Eric Kripke', 'Eric Kripke', 'TV-MA', 'posters/TheBoys.jpg', 'The Boys', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(85, 'Ozark', 'serie', 'El dinero lo cambia todo', 'Marty Byrde, un asesor financiero, traslada a su familia a los Ozarks para lavar dinero para un cartel. Este thriller explora el crimen, la familia y las decisiones desesperadas en un mundo peligroso.', 2017, 60, 'Bill Dubuque', 'Bill Dubuque', 'TV-MA', 'posters/Ozark.jpg', 'Ozark', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(86, 'Chernobyl', 'serie', 'La verdad tiene un costo', 'Tras el desastre nuclear de Chernobyl, científicos y funcionarios arriesgan todo para contener la catástrofe. Este drama histórico recrea los eventos con intensidad, mostrando el sacrificio y el encubrimiento.', 2019, 65, 'Craig Mazin', 'Craig Mazin', 'TV-MA', 'posters/Chernobyl.jpg', 'Chernobyl', NULL, NULL, 9.4, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1);
INSERT INTO `contenidos` (`id_contenido`, `titulo`, `pelicula_serie`, `eslogan`, `sinopsis`, `año_estreno`, `duracion`, `director`, `guionistas`, `clasificacion`, `imagen_poster`, `alt_imagen_poster`, `imagen_fondo`, `alt_imagen_fondo`, `puntuacion`, `es_exclusivo`, `fecha_edicion`, `fecha_creacion`, `creador_id`) VALUES
(87, 'The Queen’s Gambit', 'serie', 'El jaque mate es solo el comienzo', 'Beth Harmon, una joven prodigio del ajedrez, enfrenta adicciones y sexismo mientras asciende en un mundo dominado por hombres. Este drama combina intensidad emocional y una historia de superación.', 2020, 60, 'Scott Frank', 'Scott Frank', 'TV-MA', 'posters/TheQueensGambit.jpg', 'The Queen’s Gambit', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(88, 'Mindhunter', 'serie', 'Dentro de la mente criminal', 'En los 70, agentes del FBI desarrollan técnicas de perfilación psicológica entrevistando a asesinos en serie. Este thriller explora la oscuridad de la mente humana y los inicios de la criminología moderna.', 2017, 60, 'Joe Penhall', 'Joe Penhall', 'TV-MA', 'posters/Mindhunter.jpg', 'Mindhunter', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(89, 'The Handmaid’s Tale', 'serie', 'Bajo su ojo', 'En una distopía donde las mujeres son subyugadas, June lucha por sobrevivir y encontrar a su hija en un régimen totalitario. Este drama explora la opresión, la resistencia y la esperanza en un mundo oscuro.', 2017, 50, 'Bruce Miller', 'Bruce Miller', 'TV-MA', 'posters/TheHandmaidsTale.jpg', 'The Handmaid’s Tale', NULL, NULL, 8.4, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(90, 'Vikings', 'serie', 'La leyenda comienza', 'Ragnar Lothbrok, un guerrero vikingo, lidera incursiones y explora nuevos mundos mientras enfrenta traiciones y dioses. Esta épica histórica combina acción, mitología y dramas familiares.', 2013, 45, 'Michael Hirst', 'Michael Hirst', 'TV-MA', 'posters/Vikings.jpg', 'Vikings', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(91, 'Peaky Blinders', 'serie', 'Por orden de los Peaky Blinders', 'En Birmingham post Primera Guerra Mundial, la familia Shelby lidera una banda criminal con ambiciones de poder. Este drama combina crimen, política y traiciones en un mundo de gánsteres.', 2013, 60, 'Steven Knight', 'Steven Knight', 'TV-MA', 'posters/PeakyBlinders.jpg', 'Peaky Blinders', NULL, NULL, 8.8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(92, 'The Last of Us', 'serie', 'El amor en el fin del mundo', 'En un mundo devastado por un hongo, Joel y Ellie, una adolescente inmune, cruzan un Estados Unidos postapocalíptico. Este drama explora la supervivencia, el vínculo humano y la esperanza en la desesperación.', 2023, 60, 'Craig Mazin', 'Craig Mazin, Neil Druckmann', 'TV-MA', 'posters/TheLastOfUs.jpg', 'The Last of Us', NULL, NULL, 8.8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(93, 'Euphoria', 'serie', 'La vida es un caos', 'Un grupo de adolescentes navega el amor, las adicciones y la identidad en un mundo hiperconectado. Este drama crudo explora los desafíos de la juventud con una estética audaz y emociones intensas.', 2019, 60, 'Sam Levinson', 'Sam Levinson', 'TV-MA', 'posters/Euphoria.jpg', 'Euphoria', NULL, NULL, 8.4, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(94, 'Yellowstone', 'serie', 'La tierra es la guerra', 'La familia Dutton protege su rancho en Montana contra desarrolladores, políticos y enemigos. Este drama moderno combina intrigas familiares, poder y conflictos territoriales en un Oeste contemporáneo.', 2018, 60, 'Taylor Sheridan', 'Taylor Sheridan', 'TV-MA', 'posters/Yellowstone.jpg', 'Yellowstone', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(95, 'Ted Lasso', 'serie', 'La bondad siempre gana', 'Ted Lasso, un entrenador de fútbol americano, lidera un equipo de fútbol inglés con optimismo y corazón. Esta comedia explora la empatía, el liderazgo y la superación en un mundo competitivo.', 2020, 30, 'Jason Sudeikis', 'Jason Sudeikis, Bill Lawrence', 'TV-MA', 'posters/TedLasso.jpg', 'Ted Lasso', NULL, NULL, 8.8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(96, 'House M.D.', 'serie', 'Todos mienten', 'El Dr. Gregory House, un médico brillante pero excéntrico, resuelve casos médicos complejos con métodos poco convencionales. Este drama combina misterio, humor y dilemas éticos en un hospital.', 2004, 45, 'David Shore', 'David Shore', 'TV-14', 'posters/HouseMD.jpg', 'House M.D.', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(97, 'Dexter', 'serie', 'El asesino con código', 'Dexter Morgan, un forense que es secretamente un asesino en serie, mata a criminales que escapan de la justicia. Este thriller psicológico explora la moralidad, la identidad y el control en un mundo oscuro.', 2006, 55, 'Jeff Dunham', 'Jeff Dunham', 'TV-MA', 'posters/Dexter.jpg', 'Dexter', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(98, 'The Big Bang Theory', 'serie', 'La ciencia de la amistad', 'Un grupo de científicos brillantes pero socialmente torpes enfrenta la vida, el amor y la amistad. Esta comedia celebra la inteligencia y las conexiones humanas con humor y corazón.', 2007, 22, 'Chuck Lorre', 'Chuck Lorre, Bill Prady', 'TV-PG', 'posters/TheBigBangTheory.jpg', 'The Big Bang Theory', NULL, NULL, 8.1, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(99, 'Modern Family', 'serie', 'La familia es un caos', 'Tres familias interconectadas enfrentan la vida moderna con humor y amor. Esta comedia mockumentary explora la diversidad, las relaciones y los retos de la familia en un mundo cambiante.', 2009, 22, 'Christopher Lloyd', 'Christopher Lloyd, Steven Levitan', 'TV-PG', 'posters/ModernFamily.jpg', 'Modern Family', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(100, 'The West Wing', 'serie', 'El poder detrás del poder', 'El presidente de EE.UU. y su equipo enfrentan crisis políticas y personales en la Casa Blanca. Este drama combina diálogos brillantes, idealismo y los retos del liderazgo en un mundo complejo.', 1999, 45, 'Aaron Sorkin', 'Aaron Sorkin', 'TV-14', 'posters/TheWestWing.jpg', 'The West Wing', NULL, NULL, 8.9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(101, 'Boardwalk Empire', 'serie', 'El crimen reina', 'En Atlantic City durante la Prohibición, Nucky Thompson lidera un imperio criminal mientras enfrenta rivales y el gobierno. Este drama histórico combina ambición, traición y el glamour de los años 20.', 2010, 55, 'Terence Winter', 'Terence Winter', 'TV-MA', 'posters/BoardwalkEmpire.jpg', 'Boardwalk Empire', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(102, 'Sons of Anarchy', 'serie', 'La lealtad es todo', 'Jax Teller, líder de un club de motociclistas, enfrenta conflictos internos y externos mientras protege a su familia y su legado. Este drama explora el crimen, la lealtad y la redención en un mundo brutal.', 2008, 45, 'Kurt Sutter', 'Kurt Sutter', 'TV-MA', 'posters/SonsOfAnarchy.jpg', 'Sons of Anarchy', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(103, 'The Expanse', 'serie', 'El universo es el límite', 'En un futuro donde la humanidad coloniza el sistema solar, un detective, un capitán y una diplomática descubren una conspiración que amenaza la paz. Esta épica de ciencia ficción combina política y acción.', 2015, 45, 'Mark Fergus', 'Mark Fergus, Hawk Ostby', 'TV-14', 'posters/TheExpanse.jpg', 'The Expanse', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(104, 'Downton Abbey', 'serie', 'La tradición frente al cambio', 'La familia Crawley y sus sirvientes navegan la vida en una mansión inglesa durante el siglo XX. Este drama histórico explora el amor, la clase y los cambios sociales con elegancia y emoción.', 2010, 50, 'Julian Fellowes', 'Julian Fellowes', 'TV-PG', 'posters/DowntonAbbey.jpg', 'Downton Abbey', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(105, 'Atlanta', 'serie', 'La vida es un escenario', 'Earn y su primo Alfred, un rapero en ascenso, enfrentan la vida y la fama en Atlanta. Esta comedia dramática combina surrealismo, humor y comentarios sociales sobre la raza y la cultura.', 2016, 30, 'Donald Glover', 'Donald Glover', 'TV-MA', 'posters/Atlanta.jpg', 'Atlanta', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(106, 'Hannibal', 'serie', 'El depredador perfecto', 'Will Graham, un profiler del FBI, colabora con el psiquiatra Hannibal Lecter para atrapar asesinos. Este thriller psicológico explora la mente criminal y la oscuridad con una estética hipnótica.', 2013, 45, 'Bryan Fuller', 'Bryan Fuller', 'TV-MA', 'posters/Hannibal.jpg', 'Hannibal', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(107, 'Fleabag', 'serie', 'La vida es un desastre', 'Una joven londinense enfrenta la vida, el amor y la familia con humor y caos. Esta comedia dramática, narrada con ingenio y ruptura de la cuarta pared, explora la vulnerabilidad y la autenticidad.', 2016, 25, 'Phoebe Waller-Bridge', 'Phoebe Waller-Bridge', 'TV-MA', 'posters/Fleabag.jpg', 'Fleabag', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(108, 'The Good Place', 'serie', 'El paraíso no es lo que parece', 'Eleanor, una mujer egoísta, llega por error a un paraíso utópico tras su muerte. Este drama cómico explora la moralidad, la redención y la filosofía con humor y giros inesperados.', 2016, 25, 'Michael Schur', 'Michael Schur', 'TV-PG', 'posters/TheGoodPlace.jpg', 'The Good Place', NULL, NULL, 8.2, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(109, 'This Is Us', 'serie', 'La vida nos conecta', 'La familia Pearson enfrenta alegrías y tragedias a través de generaciones. Este drama emocional explora el amor, la pérdida y las conexiones humanas con una narrativa conmovedora y no lineal.', 2016, 45, 'Dan Fogelman', 'Dan Fogelman', 'TV-14', 'posters/ThisIsUs.jpg', 'This Is Us', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(110, 'Your Honor', 'serie', 'La justicia tiene un precio', 'Un juez respetado arriesga todo para proteger a su hijo tras un accidente que involucra a una familia criminal. Este thriller legal explora la moralidad, la lealtad y las consecuencias de las decisiones.', 2020, 60, 'Peter Moffat', 'Peter Moffat', 'TV-MA', 'posters/YourHonor.jpg', 'Your Honor', NULL, NULL, 7.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(111, 'Loki', 'serie', 'El dios del engaño', 'Loki, el dios asgardiano, navega el multiverso tras robar el Tesseract. Esta serie de Marvel combina aventura, humor y caos cósmico mientras explora la identidad y el destino.', 2021, 50, 'Michael Waldron', 'Michael Waldron', 'TV-14', 'posters/Loki.jpg', 'Loki', NULL, NULL, 8.2, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(112, 'Arcane', 'serie', 'El poder divide', 'En las ciudades de Piltover y Zaun, las hermanas Vi y Powder enfrentan un mundo de magia y tecnología. Esta serie animada, basada en League of Legends, combina acción y drama emocional.', 2021, 40, 'Christian Linke', 'Christian Linke', 'TV-14', 'posters/Arcane.jpg', 'Arcane', NULL, NULL, 9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(113, 'The Haunting of Hill House', 'serie', 'El pasado nunca muere', 'La familia Crain enfrenta los horrores de su infancia en una mansión embrujada. Este drama de terror mezcla fantasmas, trauma y relaciones familiares en una narrativa emocional y aterradora.', 2018, 55, 'Mike Flanagan', 'Mike Flanagan', 'TV-MA', 'posters/TheHauntingOfHillHouse.jpg', 'The Haunting of Hill House', NULL, NULL, 8.6, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(114, 'Bridgerton', 'serie', 'El amor escandaliza', 'En la Inglaterra del siglo XIX, los hermanos Bridgerton buscan amor y estatus en una sociedad llena de intrigas. Esta serie romántica combina drama, pasión y un estilo visual vibrante.', 2020, 60, 'Chris Van Dusen', 'Chris Van Dusen', 'TV-MA', 'posters/Bridgerton.jpg', 'Bridgerton', NULL, NULL, 7.4, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(115, 'The Umbrella Academy', 'serie', 'Héroes disfuncionales', 'Una familia de superhéroes adoptivos se reúne para prevenir el apocalipsis mientras enfrenta su pasado. Esta serie combina acción, humor y drama familiar en un mundo de poderes y caos.', 2019, 50, 'Steve Blackman', 'Steve Blackman', 'TV-14', 'posters/TheUmbrellaAcademy.jpg', 'The Umbrella Academy', NULL, NULL, 8, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(116, 'Cobra Kai', 'serie', 'El karate nunca muere', 'Décadas después de Karate Kid, Daniel LaRusso y Johnny Lawrence reavivan su rivalidad mientras entrenan a una nueva generación. Esta serie combina acción, nostalgia y redención con humor.', 2018, 30, 'Jon Hurwitz', 'Jon Hurwitz, Hayden Schlossberg', 'TV-14', 'posters/CobraKai.jpg', 'Cobra Kai', NULL, NULL, 8.5, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(117, 'The Morning Show', 'serie', 'La verdad en pantalla', 'Periodistas de un programa matutino enfrentan escándalos, ambiciones y dilemas éticos en un mundo mediático competitivo. Este drama explora el poder, la fama y la verdad con actuaciones estelares.', 2019, 60, 'Jay Carson', 'Jay Carson', 'TV-MA', 'posters/TheMorningShow.jpg', 'The Morning Show', NULL, NULL, 8.4, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(118, 'Yellowjackets', 'serie', 'La supervivencia tiene secretos', 'Tras un accidente aéreo, un equipo de fútbol femenino lucha por sobrevivir en la naturaleza. Décadas después, los supervivientes enfrentan los ecos de su pasado. Este thriller mezcla misterio y drama.', 2021, 60, 'Ashley Lyle', 'Ashley Lyle, Bart Nickerson', 'TV-MA', 'posters/Yellowjackets.jpg', 'Yellowjackets', NULL, NULL, 7.9, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(119, 'Severance', 'serie', 'El trabajo no es tu vida', 'Empleados de una corporación usan una tecnología que separa sus recuerdos laborales y personales. Cuando un misterio surge, cuestionan su realidad. Este thriller psicológico explora la identidad y el control.', 2022, 50, 'Dan Erickson', 'Dan Erickson', 'TV-MA', 'posters/Severance.jpg', 'Severance', NULL, NULL, 8.7, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1),
(120, 'Andor', 'serie', 'La chispa de la rebelión', 'Cassian Andor, un espía rebelde, enfrenta misiones peligrosas contra el Imperio en el universo de Star Wars. Este drama explora el sacrificio y la resistencia en una galaxia oprimida.', 2022, 45, 'Tony Gilroy', 'Tony Gilroy', 'TV-14', 'posters/Andor.jpg', 'Andor', NULL, NULL, 8.4, 0, '2025-05-24 18:42:10.000000', '2025-05-24 18:42:10.000000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos_generos`
--

CREATE TABLE `contenidos_generos` (
  `id` bigint(20) NOT NULL,
  `creador_id` int(11) NOT NULL,
  `id_contenido_id` int(11) DEFAULT NULL,
  `id_genero_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `contenidos_generos`
--

INSERT INTO `contenidos_generos` (`id`, `creador_id`, `id_contenido_id`, `id_genero_id`) VALUES
(1, 1, 1, 2),
(2, 1, 1, 5),
(3, 1, 2, 3),
(4, 1, 2, 5),
(5, 1, 3, 16),
(6, 1, 3, 15),
(7, 1, 3, 18),
(8, 1, 4, 2),
(9, 1, 4, 8),
(10, 1, 4, 4),
(11, 1, 5, 5),
(12, 1, 5, 10),
(13, 1, 5, 9),
(14, 1, 6, 10),
(15, 1, 6, 12),
(16, 1, 6, 2),
(17, 1, 7, 2),
(18, 1, 7, 13),
(19, 1, 8, 13),
(20, 1, 8, 8),
(21, 1, 9, 12),
(22, 1, 9, 9),
(23, 1, 10, 10),
(24, 1, 10, 12),
(25, 1, 10, 6),
(26, 1, 11, 5),
(27, 1, 12, 16),
(28, 1, 12, 18),
(29, 1, 13, 9),
(30, 1, 14, 3),
(31, 1, 15, 9),
(32, 1, 17, 3),
(33, 1, 18, 6),
(34, 1, 19, 8),
(35, 1, 22, 13),
(36, 1, 22, 16),
(37, 1, 24, 12),
(38, 1, 25, 3),
(39, 1, 26, 13),
(40, 1, 26, 14),
(41, 1, 27, 8),
(42, 1, 27, 13),
(43, 1, 28, 10),
(44, 1, 29, 6),
(45, 1, 31, 13),
(46, 1, 31, 18),
(47, 1, 33, 13),
(48, 1, 33, 14),
(49, 1, 34, 4),
(50, 1, 35, 14),
(51, 1, 36, 13),
(52, 1, 38, 13),
(53, 1, 39, 9),
(54, 1, 39, 18),
(55, 1, 41, 20),
(56, 1, 42, 16),
(57, 1, 44, 15),
(58, 1, 44, 16),
(59, 1, 45, 10),
(60, 1, 45, 12),
(61, 1, 46, 3),
(62, 1, 47, 14),
(63, 1, 47, 8),
(64, 1, 47, 13),
(65, 1, 48, 8),
(66, 1, 49, 16),
(67, 1, 49, 18),
(68, 1, 50, 9),
(69, 1, 51, 13),
(70, 1, 51, 8),
(71, 1, 52, 5),
(72, 1, 54, 13),
(73, 1, 54, 8),
(74, 1, 55, 12),
(75, 1, 55, 9),
(76, 1, 56, 10),
(77, 1, 56, 12),
(78, 1, 57, 8),
(79, 1, 58, 6),
(80, 1, 58, 13),
(81, 1, 59, 5),
(82, 1, 60, 2),
(83, 1, 60, 6),
(84, 1, 61, 5),
(85, 1, 61, 1),
(86, 1, 61, 4),
(87, 1, 62, 13),
(88, 1, 62, 4),
(89, 1, 62, 8),
(90, 1, 63, 3),
(91, 1, 63, 8),
(92, 1, 63, 2),
(93, 1, 64, 13),
(94, 1, 64, 4),
(95, 1, 65, 13),
(96, 1, 65, 4),
(97, 1, 66, 13),
(98, 1, 66, 4),
(99, 1, 66, 6),
(100, 1, 67, 3),
(101, 1, 67, 8),
(102, 1, 67, 4),
(103, 1, 68, 16),
(104, 1, 68, 4),
(105, 1, 68, 18),
(106, 1, 69, 13),
(107, 1, 69, 14),
(108, 1, 69, 8),
(109, 1, 70, 13),
(110, 1, 70, 6),
(111, 1, 70, 8),
(112, 1, 71, 4),
(113, 1, 71, 6),
(114, 1, 72, 3),
(115, 1, 72, 2),
(116, 1, 72, 1),
(117, 1, 73, 6),
(118, 1, 74, 6),
(119, 1, 74, 9),
(120, 1, 75, 10),
(121, 1, 75, 6),
(122, 1, 76, 5),
(123, 1, 76, 4),
(124, 1, 76, 1),
(125, 1, 77, 14),
(126, 1, 77, 3),
(127, 1, 77, 4),
(128, 1, 78, 4),
(129, 1, 78, 16),
(130, 1, 79, 7),
(131, 1, 79, 4),
(132, 1, 79, 8),
(133, 1, 80, 3),
(134, 1, 80, 8),
(135, 1, 80, 4),
(136, 1, 81, 14),
(137, 1, 81, 4),
(138, 1, 81, 13),
(139, 1, 82, 5),
(140, 1, 82, 2),
(141, 1, 82, 1),
(142, 1, 83, 13),
(143, 1, 83, 4),
(144, 1, 83, 8),
(145, 1, 84, 1),
(146, 1, 84, 3),
(147, 1, 84, 6),
(148, 1, 85, 13),
(149, 1, 85, 8),
(150, 1, 85, 4),
(151, 1, 86, 16),
(152, 1, 86, 4),
(153, 1, 86, 8),
(154, 1, 87, 4),
(155, 1, 87, 18),
(156, 1, 88, 13),
(157, 1, 88, 8),
(158, 1, 88, 4),
(159, 1, 89, 3),
(160, 1, 89, 4),
(161, 1, 89, 8),
(162, 1, 90, 16),
(163, 1, 90, 1),
(164, 1, 90, 4),
(165, 1, 91, 13),
(166, 1, 91, 4),
(167, 1, 91, 16),
(168, 1, 92, 4),
(169, 1, 92, 3),
(170, 1, 92, 8),
(171, 1, 93, 4),
(172, 1, 93, 9),
(173, 1, 94, 4),
(174, 1, 94, 17),
(175, 1, 95, 6),
(176, 1, 95, 19),
(177, 1, 96, 4),
(178, 1, 96, 14),
(179, 1, 97, 13),
(180, 1, 97, 8),
(181, 1, 97, 4),
(182, 1, 98, 6),
(183, 1, 99, 6),
(184, 1, 100, 4),
(185, 1, 101, 13),
(186, 1, 101, 4),
(187, 1, 101, 16),
(188, 1, 102, 13),
(189, 1, 102, 4),
(190, 1, 103, 3),
(191, 1, 103, 4),
(192, 1, 103, 8),
(193, 1, 104, 16),
(194, 1, 104, 4),
(195, 1, 105, 6),
(196, 1, 105, 4),
(197, 1, 106, 8),
(198, 1, 106, 13),
(199, 1, 106, 4),
(200, 1, 107, 6),
(201, 1, 107, 4),
(202, 1, 108, 6),
(203, 1, 108, 5),
(204, 1, 109, 4),
(205, 1, 109, 9),
(206, 1, 110, 8),
(207, 1, 110, 13),
(208, 1, 110, 4),
(209, 1, 111, 3),
(210, 1, 111, 2),
(211, 1, 111, 5),
(212, 1, 112, 10),
(213, 1, 112, 1),
(214, 1, 112, 3),
(215, 1, 113, 7),
(216, 1, 113, 4),
(217, 1, 113, 8),
(218, 1, 114, 9),
(219, 1, 114, 4),
(220, 1, 114, 16),
(221, 1, 115, 3),
(222, 1, 115, 1),
(223, 1, 115, 6),
(224, 1, 116, 1),
(225, 1, 116, 6),
(226, 1, 116, 19),
(227, 1, 117, 4),
(228, 1, 118, 8),
(229, 1, 118, 4),
(230, 1, 118, 14),
(231, 1, 119, 8),
(232, 1, 119, 3),
(233, 1, 119, 4),
(234, 1, 120, 3),
(235, 1, 120, 1),
(236, 1, 120, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'base', 'actor'),
(8, 'base', 'categorianoticia'),
(10, 'base', 'comentario'),
(9, 'base', 'contenido'),
(14, 'base', 'contenidogenero'),
(11, 'base', 'entrevista'),
(12, 'base', 'galeria'),
(13, 'base', 'genero'),
(16, 'base', 'listacontenido'),
(15, 'base', 'listapersonalizada'),
(17, 'base', 'newsletter'),
(18, 'base', 'noticia'),
(19, 'base', 'noticiacategoria'),
(20, 'base', 'notificacion'),
(21, 'base', 'perfil'),
(22, 'base', 'plataformastreaming'),
(23, 'base', 'reparto'),
(24, 'base', 'suscripcionusuario'),
(25, 'base', 'valoracion'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-24 16:41:16.045549'),
(2, 'auth', '0001_initial', '2025-05-24 16:41:16.777375'),
(3, 'admin', '0001_initial', '2025-05-24 16:41:16.920535'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-24 16:41:16.927614'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-24 16:41:16.934116'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-24 16:41:17.035170'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-24 16:41:17.101352'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-24 16:41:17.142170'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-24 16:41:17.149226'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-24 16:41:17.209803'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-24 16:41:17.212892'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-24 16:41:17.219613'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-24 16:41:17.260097'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-24 16:41:17.299518'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-24 16:41:17.341963'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-24 16:41:17.349318'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-24 16:41:17.388082'),
(18, 'base', '0001_initial', '2025-05-24 16:41:20.177128'),
(19, 'sessions', '0001_initial', '2025-05-24 16:41:20.242943');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevistas`
--

CREATE TABLE `entrevistas` (
  `id_entrevista` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `alt_imagen` varchar(255) DEFAULT NULL,
  `duracion` bigint(20) NOT NULL,
  `vistas` int(11) NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id_imagen` int(11) NOT NULL,
  `url_imagen` varchar(100) DEFAULT NULL,
  `alt_imagen` varchar(255) DEFAULT NULL,
  `creador_id` int(11) NOT NULL,
  `id_contenido_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `nombre`, `creador_id`) VALUES
(1, 'Acción', 1),
(2, 'Aventura', 1),
(3, 'Ciencia Ficción', 1),
(4, 'Drama', 1),
(5, 'Fantasía', 1),
(6, 'Comedia', 1),
(7, 'Terror', 1),
(8, 'Suspense', 1),
(9, 'Romance', 1),
(10, 'Animación', 1),
(11, 'Documental', 1),
(12, 'Musical', 1),
(13, 'Crimen', 1),
(14, 'Misterio', 1),
(15, 'Bélica', 1),
(16, 'Histórica', 1),
(17, 'Western', 1),
(18, 'Biográfica', 1),
(19, 'Deporte', 1),
(20, 'Noir', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas_personalizadas`
--

CREATE TABLE `listas_personalizadas` (
  `id_lista` int(11) NOT NULL,
  `nombre_lista` varchar(100) NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_personalizadas_contenidos`
--

CREATE TABLE `lista_personalizadas_contenidos` (
  `id` bigint(20) NOT NULL,
  `creador_id` int(11) NOT NULL,
  `id_contenido_id` int(11) DEFAULT NULL,
  `id_lista_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE `newsletter` (
  `id_suscriptor` int(11) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `fechas_suscripcion` datetime(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` longtext NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen_principal` varchar(100) DEFAULT NULL,
  `alt_imagen_principal` varchar(255) DEFAULT NULL,
  `vistas` int(11) NOT NULL,
  `tiempo_lectura` bigint(20) NOT NULL,
  `es_exclusiva` tinyint(1) NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias_categorias`
--

CREATE TABLE `noticias_categorias` (
  `id` bigint(20) NOT NULL,
  `id_categoria_id` int(11) DEFAULT NULL,
  `id_noticias_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_notificacion` int(11) NOT NULL,
  `tipo_notificacion` varchar(50) NOT NULL,
  `mensaje` longtext NOT NULL,
  `fecha_envio` datetime(6) NOT NULL,
  `leida` tinyint(1) NOT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `id_usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(100) NOT NULL,
  `imagen_avatar` varchar(100) DEFAULT NULL,
  `alt_imagen_avatar` varchar(255) DEFAULT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataformas_streaming`
--

CREATE TABLE `plataformas_streaming` (
  `id_plataforma` int(11) NOT NULL,
  `nombre_plataforma` varchar(100) NOT NULL,
  `imagen_logo_plataforma` varchar(100) DEFAULT NULL,
  `alt_imagen_logo_plataforma` varchar(255) DEFAULT NULL,
  `tipo_acceso` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `creador_id` int(11) NOT NULL,
  `id_contenido_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparto`
--

CREATE TABLE `reparto` (
  `id_reparto` int(11) NOT NULL,
  `personaje` varchar(100) NOT NULL,
  `creador_id` int(11) NOT NULL,
  `id_actor_id` int(11) NOT NULL,
  `id_contenido_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `reparto`
--

INSERT INTO `reparto` (`id_reparto`, `personaje`, `creador_id`, `id_actor_id`, `id_contenido_id`) VALUES
(9, 'Jack Dawson', 1, 9, 3),
(10, 'Rose DeWitt Bukater', 1, 10, 3),
(11, 'Cal Hockley', 1, 11, 3),
(12, 'Molly Brown', 1, 12, 3),
(13, 'Rey', 1, 13, 4),
(14, 'Finn', 1, 14, 4),
(15, 'Han Solo', 1, 15, 4),
(16, 'Kylo Ren', 1, 16, 4),
(17, 'Owen Grady', 1, 17, 5),
(18, 'Claire Dearing', 1, 18, 5),
(19, 'Vic Hoskins', 1, 19, 5),
(20, 'Simon Masrani', 1, 20, 5),
(21, 'Simba', 1, 21, 6),
(22, 'Nala', 1, 22, 6),
(23, 'Mufasa', 1, 23, 6),
(24, 'Scar', 1, 24, 6),
(25, 'Tony Stark / Iron Man', 1, 25, 7),
(26, 'Steve Rogers / Capitán América', 1, 26, 7),
(27, 'Bruce Banner / Hulk', 1, 27, 7),
(28, 'Thor', 1, 28, 7),
(29, 'Dominic Toretto', 1, 29, 8),
(30, 'Brian O\'Conner', 1, 30, 8),
(31, 'Luke Hobbs', 1, 31, 8),
(32, 'Letty Ortiz', 1, 32, 8),
(33, 'Elsa', 1, 33, 9),
(34, 'Anna', 1, 34, 9),
(35, 'Olaf', 1, 35, 9),
(36, 'Kristoff', 1, 36, 9),
(37, 'Bella', 1, 37, 10),
(38, 'Bestia', 1, 38, 10),
(39, 'Gaston', 1, 39, 10),
(40, 'LeFou', 1, 40, 10),
(41, 'Paul Atreides', 1, 41, 11),
(42, 'Chani', 1, 42, 11),
(43, 'Lady Jessica', 1, 43, 11),
(44, 'Gurney Halleck', 1, 44, 11),
(45, 'J. Robert Oppenheimer', 1, 45, 12),
(46, 'Kitty Oppenheimer', 1, 46, 12),
(47, 'Leslie Groves', 1, 47, 12),
(48, 'Lewis Strauss', 1, 48, 12),
(49, 'Bella Baxter', 1, 49, 13),
(50, 'Duncan Wedderburn', 1, 50, 13),
(51, 'Godwin Baxter', 1, 51, 13),
(52, 'Max McCandles', 1, 52, 13),
(53, 'Lee Smith', 1, 53, 14),
(54, 'Jessie', 1, 54, 14),
(55, 'Joel', 1, 55, 14),
(56, 'Sammy', 1, 56, 14),
(57, 'Tashi Duncan', 1, 57, 15),
(58, 'Art Donaldson', 1, 58, 15),
(59, 'Patrick Zweig', 1, 59, 15),
(60, 'Lily', 1, 60, 15),
(61, 'Noa', 1, 61, 16),
(62, 'Mae', 1, 62, 16),
(63, 'Proximus Caesar', 1, 63, 16),
(64, 'Raka', 1, 64, 16),
(65, 'Furiosa', 1, 65, 17),
(66, 'Dementus', 1, 66, 17),
(67, 'Praetorian Jack', 1, 67, 17),
(68, 'Rictus Erectus', 1, 68, 17),
(69, 'Barbie', 1, 69, 18),
(70, 'Ken', 1, 70, 18),
(71, 'Gloria', 1, 71, 18),
(72, 'Barbie Rara', 1, 72, 18),
(73, 'Sandra Voyter', 1, 73, 19),
(74, 'Vincent Renzi', 1, 74, 19),
(75, 'Daniel M.', 1, 75, 19),
(76, 'Abogado', 1, 76, 19),
(77, 'Rudolf Höss', 1, 77, 20),
(78, 'Hedwig Höss', 1, 78, 20),
(79, 'Inge', 1, 79, 20),
(80, 'SS Officer', 1, 80, 20),
(81, 'Ilene Andrews', 1, 81, 21),
(82, 'Bernie Hayes', 1, 82, 21),
(83, 'Trapper', 1, 83, 21),
(84, 'Jia', 1, 84, 21),
(85, 'Ernest Burkhart', 1, 85, 22),
(86, 'William Hale', 1, 86, 22),
(87, 'Mollie Burkhart', 1, 87, 22),
(88, 'Tom White', 1, 88, 22),
(89, 'Alegría', 1, 89, 23),
(90, 'Tristeza', 1, 90, 23),
(91, 'Furia', 1, 91, 23),
(92, 'Ansiedad', 1, 92, 23),
(93, 'Willy Wonka', 1, 93, 24),
(94, 'Oompa Loompa', 1, 94, 24),
(95, 'Señora Scrubitt', 1, 95, 24),
(96, 'Jefe de Policía', 1, 96, 24),
(97, 'Arthur Curry / Aquaman', 1, 97, 25),
(98, 'Orm', 1, 98, 25),
(99, 'Mera', 1, 99, 25),
(100, 'Black Manta', 1, 100, 25),
(101, 'Bruce Wayne / Batman', 1, 101, 26),
(102, 'Selina Kyle / Catwoman', 1, 102, 26),
(103, 'Edward Nashton / Enigma', 1, 103, 26),
(104, 'Oswald Cobblepot / Pingüino', 1, 104, 26),
(105, 'Kim Ki-taek', 1, 105, 27),
(106, 'Park Dong-ik', 1, 106, 27),
(107, 'Choi Yeon-gyo', 1, 107, 27),
(108, 'Kim Ki-woo', 1, 108, 27),
(109, 'Miles Morales', 1, 109, 28),
(110, 'Gwen Stacy', 1, 110, 28),
(111, 'Miguel O\'Hara', 1, 111, 28),
(112, 'Peter B. Parker', 1, 112, 28),
(113, 'Evelyn Wang', 1, 113, 29),
(114, 'Waymond Wang', 1, 114, 29),
(115, 'Joy Wang', 1, 115, 29),
(116, 'Gong Gong', 1, 116, 29),
(117, 'Pete \"Maverick\" Mitchell', 1, 117, 30),
(118, 'Bradley \"Rooster\" Bradshaw', 1, 118, 30),
(119, 'Penny Benjamin', 1, 119, 30),
(120, 'Cyclone', 1, 120, 30),
(121, 'Arthur Fleck / Joker', 1, 121, 31),
(122, 'Murray Franklin', 1, 122, 31),
(123, 'Sophie Dumond', 1, 123, 31),
(124, 'Penny Fleck', 1, 124, 31),
(125, 'Dom Cobb', 1, 125, 32),
(126, 'Arthur', 1, 126, 32),
(127, 'Ariadne', 1, 127, 32),
(128, 'Eames', 1, 128, 32),
(129, 'Bruce Wayne / Batman', 1, 129, 33),
(130, 'Joker', 1, 130, 33),
(131, 'Harvey Dent', 1, 131, 33),
(132, 'Rachel Dawes', 1, 132, 33),
(133, 'Cooper', 1, 133, 34),
(134, 'Brand', 1, 134, 34),
(135, 'Murph', 1, 135, 34),
(136, 'Profesor Brand', 1, 136, 34),
(137, 'Narrador', 1, 137, 35),
(138, 'Tyler Durden', 1, 138, 35),
(139, 'Marla Singer', 1, 139, 35),
(140, 'Robert Paulson', 1, 140, 35),
(141, 'Vincent Vega', 1, 141, 36),
(142, 'Jules Winnfield', 1, 142, 36),
(143, 'Mia Wallace', 1, 143, 36),
(144, 'Butch Coolidge', 1, 144, 36),
(145, 'Andy Dufresne', 1, 145, 37),
(146, 'Ellis Boyd \"Red\" Redding', 1, 146, 37),
(147, 'Warden Norton', 1, 147, 37),
(148, 'Heywood', 1, 148, 37),
(149, 'Vito Corleone', 1, 149, 38),
(150, 'Michael Corleone', 1, 150, 38),
(151, 'Sonny Corleone', 1, 151, 38),
(152, 'Kay Adams', 1, 152, 38),
(153, 'Forrest Gump', 1, 153, 39),
(154, 'Jenny Curran', 1, 154, 39),
(155, 'Teniente Dan', 1, 155, 39),
(156, 'Sra. Gump', 1, 156, 39),
(157, 'Frodo Bolsón', 1, 157, 40),
(158, 'Gandalf', 1, 158, 40),
(159, 'Aragorn', 1, 159, 40),
(160, 'Sam', 1, 160, 40),
(161, 'Neo', 1, 161, 41),
(162, 'Morpheus', 1, 162, 41),
(163, 'Trinity', 1, 163, 41),
(164, 'Agente Smith', 1, 164, 41),
(165, 'Máximo', 1, 165, 42),
(166, 'Cómodo', 1, 166, 42),
(167, 'Lucila', 1, 167, 42),
(168, 'Próximo', 1, 168, 42),
(169, 'David Mills', 1, 169, 43),
(170, 'William Somerset', 1, 170, 43),
(171, 'Tracy Mills', 1, 171, 43),
(172, 'John Doe', 1, 172, 43),
(173, 'Capitán Miller', 1, 173, 44),
(174, 'Soldado Ryan', 1, 174, 44),
(175, 'Sargento Horvath', 1, 175, 44),
(176, 'Reiben', 1, 176, 44),
(177, 'Simba (voz)', 1, 177, 45),
(178, 'Scar (voz)', 1, 178, 45),
(179, 'Mufasa (voz)', 1, 179, 45),
(180, 'Nala (voz)', 1, 180, 45),
(181, 'Marty McFly', 1, 181, 46),
(182, 'Doc Brown', 1, 182, 46),
(183, 'Lorraine Baines', 1, 183, 46),
(184, 'George McFly', 1, 184, 46),
(185, 'Clarice Starling', 1, 185, 47),
(186, 'Hannibal Lecter', 1, 186, 47),
(187, 'Jack Crawford', 1, 187, 47),
(188, 'Buffalo Bill', 1, 188, 47),
(189, 'Dr. Alan Grant', 1, 189, 48),
(190, 'Dr. Ellie Sattler', 1, 190, 48),
(191, 'Dr. Ian Malcolm', 1, 191, 48),
(192, 'John Hammond', 1, 192, 48),
(193, 'Oskar Schindler', 1, 193, 49),
(194, 'Itzhak Stern', 1, 194, 49),
(195, 'Amon Goeth', 1, 195, 49),
(196, 'Emilie Schindler', 1, 196, 49),
(197, 'Will Hunting', 1, 197, 50),
(198, 'Sean Maguire', 1, 198, 50),
(199, 'Chuckie Sullivan', 1, 199, 50),
(200, 'Gerald Lambeau', 1, 200, 50),
(201, 'Billy Costigan', 1, 201, 51),
(202, 'Colin Sullivan', 1, 202, 51),
(203, 'Frank Costello', 1, 203, 51),
(204, 'Dignam', 1, 204, 51),
(205, 'Jake Sully', 1, 205, 52),
(206, 'Neytiri', 1, 206, 52),
(207, 'Dr. Grace Augustine', 1, 207, 52),
(208, 'Coronel Miles Quaritch', 1, 208, 52),
(209, 'Deadpool', 1, 209, 53),
(210, 'Wolverine', 1, 210, 53),
(211, 'Villana', 1, 211, 53),
(212, 'Agente Paradox', 1, 212, 53),
(213, 'Llewelyn Moss', 1, 213, 54),
(214, 'Anton Chigurh', 1, 214, 54),
(215, 'Ed Tom Bell', 1, 215, 54),
(216, 'Carla Jean Moss', 1, 216, 54),
(217, 'Sebastian', 1, 217, 55),
(218, 'Mia', 1, 218, 55),
(219, 'Keith', 1, 219, 55),
(220, 'Laura', 1, 220, 55),
(221, 'Miguel (voz)', 1, 221, 56),
(222, 'Héctor (voz)', 1, 222, 56),
(223, 'Ernesto de la Cruz (voz)', 1, 223, 56),
(224, 'Mamá Imelda (voz)', 1, 224, 56),
(225, 'Ryan Stone', 1, 225, 57),
(226, 'Matt Kowalski', 1, 226, 57),
(227, 'Misión Control (voz)', 1, 227, 57),
(228, 'Aningaaq (voz)', 1, 228, 57),
(229, 'M. Gustave', 1, 229, 58),
(230, 'Zero Moustafa', 1, 230, 58),
(231, 'Agatha', 1, 231, 58),
(232, 'Dmitri', 1, 232, 58),
(233, 'T\'Challa / Black Panther', 1, 233, 59),
(234, 'Erik Killmonger', 1, 234, 59),
(235, 'Nakia', 1, 235, 59),
(236, 'Okoye', 1, 236, 59),
(237, 'Edward Bloom (joven)', 1, 237, 60),
(238, 'Edward Bloom (adulto)', 1, 238, 60),
(239, 'Will Bloom', 1, 239, 60),
(240, 'Sandra Bloom', 1, 240, 60),
(241, 'Daenerys Targaryen', 1, 241, 61),
(242, 'Jon Snow', 1, 242, 61),
(243, 'Tyrion Lannister', 1, 243, 61),
(244, 'Cersei Lannister', 1, 244, 61),
(245, 'Walter White', 1, 245, 62),
(246, 'Jesse Pinkman', 1, 246, 62),
(247, 'Skyler White', 1, 247, 62),
(248, 'Saul Goodman', 1, 248, 62),
(249, 'Eleven', 1, 249, 63),
(250, 'Mike Wheeler', 1, 250, 63),
(251, 'Joyce Byers', 1, 251, 63),
(252, 'Jim Hopper', 1, 252, 63),
(253, 'Tony Soprano', 1, 253, 64),
(254, 'Carmela Soprano', 1, 254, 64),
(255, 'Omar Little', 1, 255, 64),
(256, 'Jimmy McNulty', 1, 256, 64),
(257, 'Stringer Bell', 1, 256, 65),
(258, 'Bunk Moreland', 1, 255, 65),
(259, 'Lester Freamon', 1, 253, 65),
(260, 'Saul Goodman', 1, 248, 66),
(261, 'Mike Ehrmantraut', 1, 245, 66),
(262, 'Kim Wexler', 1, 246, 66),
(263, 'Dolores Abernathy', 1, 257, 67),
(264, 'Maeve Millay', 1, 258, 67),
(265, 'Bernard Lowe', 1, 259, 67),
(266, 'Queen Elizabeth II', 1, 259, 68),
(267, 'Queen Elizabeth II (older)', 1, 260, 68),
(268, 'Princess Margaret', 1, 241, 68),
(269, 'Rust Cohle', 1, 261, 69),
(270, 'Marty Hart', 1, 262, 69),
(271, 'Wayne Hays', 1, 263, 69),
(272, 'Lorne Malvo', 1, 263, 70),
(273, 'Lester Nygaard', 1, 261, 70),
(274, 'Molly Solverson', 1, 262, 70),
(275, 'Kendall Roy', 1, 264, 71),
(276, 'Shiv Roy', 1, 265, 71),
(277, 'Logan Roy', 1, 243, 71),
(278, 'The Mandalorian', 1, 266, 72),
(279, 'Cara Dune', 1, 241, 72),
(280, 'Greef Karga', 1, 242, 72),
(281, 'Michael Scott', 1, 267, 73),
(282, 'Pam Beesly', 1, 268, 73),
(283, 'Jim Halpert', 1, 269, 73),
(284, 'Rachel Green', 1, 269, 74),
(285, 'Monica Geller', 1, 270, 74),
(286, 'Ross Geller', 1, 267, 74),
(287, 'Homer Simpson', 1, 271, 75),
(288, 'Marge Simpson', 1, 272, 75),
(289, 'Bart Simpson', 1, 269, 75),
(290, 'Rhaenyra Targaryen', 1, 241, 76),
(291, 'Daemon Targaryen', 1, 242, 76),
(292, 'Alicent Hightower', 1, 244, 76),
(293, 'Kate Austen', 1, 251, 77),
(294, 'Jack Shephard', 1, 252, 77),
(295, 'John Locke', 1, 262, 77),
(296, 'Don Draper', 1, 274, 78),
(297, 'Peggy Olson', 1, 275, 78),
(298, 'Roger Sterling', 1, 267, 78),
(299, 'Rick Grimes', 1, 276, 79),
(300, 'Daryl Dixon', 1, 277, 79),
(301, 'Michonne', 1, 251, 79),
(302, 'Nessa Stein', 1, 249, 80),
(303, 'Charlie', 1, 250, 80),
(304, 'Hannah', 1, 251, 80),
(305, 'Sherlock Holmes', 1, 279, 81),
(306, 'John Watson', 1, 252, 81),
(307, 'Mycroft Holmes', 1, 275, 81),
(308, 'Geralt of Rivia', 1, 279, 82),
(309, 'Yennefer of Vengerberg', 1, 241, 82),
(310, 'Ciri', 1, 242, 82),
(311, 'Pablo Escobar', 1, 266, 83),
(312, 'Steve Murphy', 1, 255, 83),
(313, 'Javier Peña', 1, 256, 83),
(314, 'Homelander', 1, 279, 84),
(315, 'Billy Butcher', 1, 266, 84),
(316, 'Starlight', 1, 241, 84),
(317, 'Marty Byrde', 1, 261, 85),
(318, 'Wendy Byrde', 1, 241, 85),
(319, 'Ruth Langmore', 1, 242, 85),
(320, 'Valery Legasov', 1, 274, 86),
(321, 'Boris Shcherbina', 1, 275, 86),
(322, 'Ulana Khomyuk', 1, 241, 86),
(323, 'Beth Harmon', 1, 241, 87),
(324, 'Benny Watts', 1, 242, 87),
(325, 'Harry Beltik', 1, 243, 87),
(326, 'Holden Ford', 1, 252, 88),
(327, 'Bill Tench', 1, 251, 88),
(328, 'Wendy Carr', 1, 241, 88),
(329, 'June Osborne', 1, 241, 89),
(330, 'Serena Joy', 1, 275, 89),
(331, 'Fred Waterford', 1, 242, 89),
(332, 'Ragnar Lothbrok', 1, 243, 90),
(333, 'Lagertha', 1, 241, 90),
(334, 'Rollo', 1, 242, 90),
(335, 'Tommy Shelby', 1, 279, 91),
(336, 'Grace Burgess', 1, 241, 91),
(337, 'Arthur Shelby', 1, 242, 91),
(338, 'Joel', 1, 266, 92),
(339, 'Ellie', 1, 241, 92),
(340, 'Tess', 1, 242, 92),
(341, 'Rue Bennett', 1, 249, 93),
(342, 'Jules Vaughn', 1, 241, 93),
(343, 'Nate Jacobs', 1, 242, 93),
(344, 'John Dutton', 1, 274, 94),
(345, 'Beth Dutton', 1, 241, 94),
(346, 'Rip Wheeler', 1, 242, 94),
(347, 'Ted Lasso', 1, 267, 95),
(348, 'Rebecca Welton', 1, 241, 95),
(349, 'Roy Kent', 1, 242, 95),
(350, 'Gregory House', 1, 279, 96),
(351, 'Lisa Cuddy', 1, 241, 96),
(352, 'James Wilson', 1, 242, 96),
(353, 'Dexter Morgan', 1, 279, 97),
(354, 'Debra Morgan', 1, 241, 97),
(355, 'Harry Morgan', 1, 242, 97),
(356, 'Sheldon Cooper', 1, 267, 98),
(357, 'Penny', 1, 268, 98),
(358, 'Leonard Hofstadter', 1, 269, 98),
(359, 'Phil Dunphy', 1, 267, 99),
(360, 'Claire Dunphy', 1, 268, 99),
(361, 'Gloria Pritchett', 1, 269, 99),
(362, 'Jed Bartlet', 1, 274, 100),
(363, 'Josh Lyman', 1, 241, 100),
(364, 'C.J. Cregg', 1, 242, 100),
(365, 'Nucky Thompson', 1, 267, 101),
(366, 'Margaret Schroeder', 1, 241, 101),
(367, 'Jimmy Darmody', 1, 242, 101),
(368, 'Jax Teller', 1, 279, 102),
(369, 'Gemma Teller Morrow', 1, 241, 102),
(370, 'Clay Morrow', 1, 242, 102),
(371, 'James Holden', 1, 266, 103),
(372, 'Naomi Nagata', 1, 241, 103),
(373, 'Alex Kamal', 1, 242, 103),
(374, 'Robert Crawley', 1, 260, 104),
(375, 'Mary Crawley', 1, 241, 104),
(376, 'Matthew Crawley', 1, 242, 104),
(377, 'Earn Marks', 1, 241, 105),
(378, 'Alfred Miles', 1, 242, 105),
(379, 'Darius', 1, 243, 105),
(380, 'Hannibal Lecter', 1, 279, 106),
(381, 'Will Graham', 1, 252, 106),
(382, 'Alana Bloom', 1, 241, 106),
(383, 'Fleabag', 1, 280, 107),
(384, 'Claire', 1, 241, 107),
(385, 'Priest', 1, 242, 107),
(386, 'Eleanor Shellstrop', 1, 241, 108),
(387, 'Chidi Anagonye', 1, 242, 108),
(388, 'Tahani Al-Jamil', 1, 243, 108),
(389, 'Kate Pearson', 1, 241, 109),
(390, 'Randall Pearson', 1, 242, 109),
(391, 'Kevin Pearson', 1, 243, 109),
(392, 'Michael Desiato', 1, 274, 110),
(393, 'Adam Desiato', 1, 241, 110),
(394, 'Gina Baxter', 1, 242, 110),
(395, 'Loki', 1, 279, 111),
(396, 'Mobius', 1, 241, 111),
(397, 'Sylvie', 1, 242, 111),
(398, 'Vi', 1, 241, 112),
(399, 'Jinx', 1, 242, 112),
(400, 'Caitlyn', 1, 243, 112),
(401, 'Nell Crain', 1, 241, 113),
(402, 'Theo Crain', 1, 242, 113),
(403, 'Luke Crain', 1, 243, 113),
(404, 'Daphne Bridgerton', 1, 241, 114),
(405, 'Simon Basset', 1, 242, 114),
(406, 'Anthony Bridgerton', 1, 243, 114),
(407, 'Number Five', 1, 241, 115),
(408, 'Luther Hargreeves', 1, 242, 115),
(409, 'Diego Hargreeves', 1, 243, 115),
(410, 'Daniel LaRusso', 1, 241, 116),
(411, 'Johnny Lawrence', 1, 242, 116),
(412, 'Miguel Diaz', 1, 243, 116),
(413, 'Alex Levy', 1, 269, 117),
(414, 'Bradley Jackson', 1, 267, 117),
(415, 'Cory Ellison', 1, 241, 117),
(416, 'Misty Quigley', 1, 241, 118),
(417, 'Natalie Scatorccio', 1, 242, 118),
(418, 'Shauna Shipman', 1, 243, 118),
(419, 'Mark Scout', 1, 241, 119),
(420, 'Helly Riggs', 1, 242, 119),
(421, 'Dylan George', 1, 243, 119),
(422, 'Cassian Andor', 1, 266, 120),
(423, 'Mon Mothma', 1, 241, 120),
(424, 'Luthen Rael', 1, 242, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones_usuario`
--

CREATE TABLE `suscripciones_usuario` (
  `id_suscripcion` int(11) NOT NULL,
  `tipo_suscripcion` varchar(50) NOT NULL,
  `es_premium` tinyint(1) NOT NULL,
  `fecha_fin_suscripcion` date NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `monto_pagado` decimal(10,2) NOT NULL,
  `id_usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `id_valoracion` int(11) NOT NULL,
  `puntuacion` double NOT NULL,
  `texto_valoracion` longtext NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_contenido_id` int(11) DEFAULT NULL,
  `id_usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id_actor`),
  ADD KEY `actor_creador_id_b18cc201_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `categorias_noticia`
--
ALTER TABLE `categorias_noticia`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `categorias_noticia_creador_id_a6977b8b_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `comentarios_id_comentario_padre__2bbe5dbb_fk_comentari` (`id_comentario_padre_id`),
  ADD KEY `comentarios_id_usuario_id_2b984847_fk_auth_user_id` (`id_usuario_id`),
  ADD KEY `comentarios_id_contenido_id_65fb8e89_fk_contenidos_id_contenido` (`id_contenido_id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id_contenido`),
  ADD KEY `contenidos_eslogan_1b5c0f_idx` (`eslogan`),
  ADD KEY `contenidos_titulo_cadfcb_idx` (`titulo`),
  ADD KEY `contenidos_creador_id_c0425d7e_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `contenidos_generos`
--
ALTER TABLE `contenidos_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contenidos_generos_id_contenido_id_id_genero_id_bdd2ab24_uniq` (`id_contenido_id`,`id_genero_id`),
  ADD KEY `contenidos_generos_creador_id_3704e4e5_fk_auth_user_id` (`creador_id`),
  ADD KEY `contenidos_generos_id_genero_id_14f0c61a_fk_generos_id_genero` (`id_genero_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD PRIMARY KEY (`id_entrevista`),
  ADD KEY `entrevistas_creador_id_40813751_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `galeria_creador_id_7e511b18_fk_auth_user_id` (`creador_id`),
  ADD KEY `galeria_id_contenido_id_bf11ec5b_fk_contenidos_id_contenido` (`id_contenido_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `generos_creador_id_e8d43c3b_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `listas_personalizadas`
--
ALTER TABLE `listas_personalizadas`
  ADD PRIMARY KEY (`id_lista`),
  ADD KEY `listas_personalizadas_id_usuario_id_5af4c9d0_fk_auth_user_id` (`id_usuario_id`);

--
-- Indices de la tabla `lista_personalizadas_contenidos`
--
ALTER TABLE `lista_personalizadas_contenidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lista_personalizadas_con_id_lista_id_id_contenido_825a5937_uniq` (`id_lista_id`,`id_contenido_id`),
  ADD KEY `lista_personalizadas_creador_id_d2bb6b9d_fk_auth_user` (`creador_id`),
  ADD KEY `lista_personalizadas_id_contenido_id_912dfab3_fk_contenido` (`id_contenido_id`);

--
-- Indices de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id_suscriptor`),
  ADD KEY `newsletter_creador_id_8a2efb79_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `noticias_titulo_5622c4_idx` (`titulo`),
  ADD KEY `noticias_fecha_p_a63e80_idx` (`fecha_publicacion`),
  ADD KEY `noticias_creador_id_1372e177_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `noticias_categorias`
--
ALTER TABLE `noticias_categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noticias_categorias_id_noticias_id_id_categoria_id_0136fa90_uniq` (`id_noticias_id`,`id_categoria_id`),
  ADD KEY `noticias_categorias_id_categoria_id_2eb0a00b_fk_categoria` (`id_categoria_id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_notificacion`),
  ADD KEY `notificaciones_id_usuario_id_33ecaf5a_fk_auth_user_id` (`id_usuario_id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`),
  ADD UNIQUE KEY `id_usuario_id` (`id_usuario_id`);

--
-- Indices de la tabla `plataformas_streaming`
--
ALTER TABLE `plataformas_streaming`
  ADD PRIMARY KEY (`id_plataforma`),
  ADD KEY `plataformas_streaming_creador_id_206c663d_fk_auth_user_id` (`creador_id`),
  ADD KEY `plataformas_streamin_id_contenido_id_4ca5cac3_fk_contenido` (`id_contenido_id`);

--
-- Indices de la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD PRIMARY KEY (`id_reparto`),
  ADD KEY `reparto_creador_id_8400519f_fk_auth_user_id` (`creador_id`),
  ADD KEY `reparto_id_actor_id_a059de67_fk_actor_id_actor` (`id_actor_id`),
  ADD KEY `reparto_id_contenido_id_701b5387_fk_contenidos_id_contenido` (`id_contenido_id`);

--
-- Indices de la tabla `suscripciones_usuario`
--
ALTER TABLE `suscripciones_usuario`
  ADD PRIMARY KEY (`id_suscripcion`),
  ADD KEY `suscripciones_usuario_id_usuario_id_afd46488_fk_auth_user_id` (`id_usuario_id`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`id_valoracion`),
  ADD UNIQUE KEY `valoraciones_id_usuario_id_id_contenido_id_9b8c53b6_uniq` (`id_usuario_id`,`id_contenido_id`),
  ADD KEY `valoraciones_id_contenido_id_2b5937e1_fk_contenidos_id_contenido` (`id_contenido_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actor`
--
ALTER TABLE `actor`
  MODIFY `id_actor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias_noticia`
--
ALTER TABLE `categorias_noticia`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id_contenido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `contenidos_generos`
--
ALTER TABLE `contenidos_generos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  MODIFY `id_entrevista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `listas_personalizadas`
--
ALTER TABLE `listas_personalizadas`
  MODIFY `id_lista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_personalizadas_contenidos`
--
ALTER TABLE `lista_personalizadas_contenidos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id_suscriptor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias_categorias`
--
ALTER TABLE `noticias_categorias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plataformas_streaming`
--
ALTER TABLE `plataformas_streaming`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reparto`
--
ALTER TABLE `reparto`
  MODIFY `id_reparto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT de la tabla `suscripciones_usuario`
--
ALTER TABLE `suscripciones_usuario`
  MODIFY `id_suscripcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `id_valoracion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `actor_creador_id_b18cc201_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `categorias_noticia`
--
ALTER TABLE `categorias_noticia`
  ADD CONSTRAINT `categorias_noticia_creador_id_a6977b8b_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_id_comentario_padre__2bbe5dbb_fk_comentari` FOREIGN KEY (`id_comentario_padre_id`) REFERENCES `comentarios` (`id_comentario`),
  ADD CONSTRAINT `comentarios_id_contenido_id_65fb8e89_fk_contenidos_id_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`),
  ADD CONSTRAINT `comentarios_id_usuario_id_2b984847_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD CONSTRAINT `contenidos_creador_id_c0425d7e_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `contenidos_generos`
--
ALTER TABLE `contenidos_generos`
  ADD CONSTRAINT `contenidos_generos_creador_id_3704e4e5_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `contenidos_generos_id_contenido_id_5fe668d0_fk_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`),
  ADD CONSTRAINT `contenidos_generos_id_genero_id_14f0c61a_fk_generos_id_genero` FOREIGN KEY (`id_genero_id`) REFERENCES `generos` (`id_genero`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD CONSTRAINT `entrevistas_creador_id_40813751_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `galeria_creador_id_7e511b18_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `galeria_id_contenido_id_bf11ec5b_fk_contenidos_id_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`);

--
-- Filtros para la tabla `generos`
--
ALTER TABLE `generos`
  ADD CONSTRAINT `generos_creador_id_e8d43c3b_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `listas_personalizadas`
--
ALTER TABLE `listas_personalizadas`
  ADD CONSTRAINT `listas_personalizadas_id_usuario_id_5af4c9d0_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `lista_personalizadas_contenidos`
--
ALTER TABLE `lista_personalizadas_contenidos`
  ADD CONSTRAINT `lista_personalizadas_creador_id_d2bb6b9d_fk_auth_user` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `lista_personalizadas_id_contenido_id_912dfab3_fk_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`),
  ADD CONSTRAINT `lista_personalizadas_id_lista_id_b506bebc_fk_listas_pe` FOREIGN KEY (`id_lista_id`) REFERENCES `listas_personalizadas` (`id_lista`);

--
-- Filtros para la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD CONSTRAINT `newsletter_creador_id_8a2efb79_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_creador_id_1372e177_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `noticias_categorias`
--
ALTER TABLE `noticias_categorias`
  ADD CONSTRAINT `noticias_categorias_id_categoria_id_2eb0a00b_fk_categoria` FOREIGN KEY (`id_categoria_id`) REFERENCES `categorias_noticia` (`id_categoria`),
  ADD CONSTRAINT `noticias_categorias_id_noticias_id_ef2a0920_fk_noticias_` FOREIGN KEY (`id_noticias_id`) REFERENCES `noticias` (`id_noticia`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_id_usuario_id_33ecaf5a_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD CONSTRAINT `perfiles_id_usuario_id_4315c61b_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `plataformas_streaming`
--
ALTER TABLE `plataformas_streaming`
  ADD CONSTRAINT `plataformas_streamin_id_contenido_id_4ca5cac3_fk_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`),
  ADD CONSTRAINT `plataformas_streaming_creador_id_206c663d_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD CONSTRAINT `reparto_creador_id_8400519f_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `reparto_id_actor_id_a059de67_fk_actor_id_actor` FOREIGN KEY (`id_actor_id`) REFERENCES `actor` (`id_actor`),
  ADD CONSTRAINT `reparto_id_contenido_id_701b5387_fk_contenidos_id_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`);

--
-- Filtros para la tabla `suscripciones_usuario`
--
ALTER TABLE `suscripciones_usuario`
  ADD CONSTRAINT `suscripciones_usuario_id_usuario_id_afd46488_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT `valoraciones_id_contenido_id_2b5937e1_fk_contenidos_id_contenido` FOREIGN KEY (`id_contenido_id`) REFERENCES `contenidos` (`id_contenido`),
  ADD CONSTRAINT `valoraciones_id_usuario_id_3bde9fce_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
