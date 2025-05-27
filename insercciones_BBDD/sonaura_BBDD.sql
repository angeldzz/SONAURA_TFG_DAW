-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2025 a las 09:52:53
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
(1, 'Sam Worthington', 'actores/Sam Worthington.jpg', 1),
(2, 'Zoe Saldana', 'actores/Zoe Saldana.webp', 1),
(3, 'Sigourney Weaver', 'actores/Sigourney Weaver.jpg', 1),
(4, 'Stephen Lang', 'actores/Stephen Lang.jpg', 1),
(5, 'Robert Downey Jr.', 'actores/Robert Downey Jr..webp', 1),
(6, 'Chris Evans', 'actores/Chris Evans.jpg', 1),
(7, 'Scarlett Johansson', 'actores/Scarlett Johansson.jpg', 1),
(8, 'Chris Hemsworth', 'actores/Chris Hemsworth.jpg', 1),
(9, 'Leonardo DiCaprio', 'actores/Leonardo DiCaprio.webp', 1),
(10, 'Kate Winslet', 'actores/Kate Winslet.webp', 1),
(11, 'Billy Zane', 'actores/Billy Zane.jpg', 1),
(12, 'Kathy Bates', 'actores/Kathy Bates.jpg', 1),
(13, 'Daisy Ridley', 'actores/Daisy Ridley.jpg', 1),
(14, 'John Boyega', 'actores/John Boyega.webp', 1),
(15, 'Harrison Ford', 'actores/Harrison Ford.webp', 1),
(16, 'Adam Driver', 'actores/Adam Driver.jpg', 1),
(17, 'Chris Pratt', 'actores/Chris Pratt.webp', 1),
(18, 'Bryce Dallas Howard', 'actores/Bryce Dallas Howard.webp', 1),
(19, 'Vincent D\'Onofrio', 'actores/Vincent D Onofrio.jpg', 1),
(20, 'Irrfan Khan', 'actores/Irrfan Khan.jpg', 1),
(21, 'Donald Glover', 'actores/Donald Glover.webp', 1),
(22, 'Beyoncé', 'actores/Beyoncé.jpg', 1),
(23, 'James Earl Jones', 'actores/James Earl Jones.jpg', 1),
(24, 'Chiwetel Ejiofor', 'actores/Chiwetel Ejiofor.jpg', 1),
(25, 'Vin Diesel', 'actores/Vin Diesel.webp', 1),
(26, 'Paul Walker', 'actores/Paul Walker.jpg', 1),
(27, 'Dwayne Johnson', 'actores/Dwayne Johnson.jpg', 1),
(28, 'Michelle Rodriguez', 'actores/Michelle Rodriguez.jpg', 1),
(29, 'Idina Menzel', 'actores/Idina Menzel.jpg', 1),
(30, 'Kristen Bell', 'actores/Kristen Bell.jpg', 1),
(31, 'Josh Gad', 'actores/Josh Gad.jpg', 1),
(32, 'Jonathan Groff', 'actores/Jonathan Groff.jpg', 1),
(33, 'Emma Watson', 'actores/Emma Watson.webp', 1),
(34, 'Dan Stevens', 'actores/Dan Stevens.jpg', 1),
(35, 'Luke Evans', 'actores/Luke Evans.jpg', 1),
(36, 'Timothée Chalamet', 'actores/Timothée Chalamet.jpg', 1),
(37, 'Zendaya', 'actores/Zendaya.webp', 1),
(38, 'Rebecca Ferguson', 'actores/Rebecca Ferguson.webp', 1),
(39, 'Josh Brolin', 'actores/Josh Brolin.jpg', 1),
(40, 'Cillian Murphy', 'actores/Cillian Murphy.webp', 1),
(41, 'Emily Blunt', 'actores/Emily Blunt.png', 1),
(42, 'Matt Damon', 'actores/Matt Damon.jpg', 1),
(43, 'Emma Stone', 'actores/Emma Stone.jpg', 1),
(44, 'Mark Ruffalo', 'actores/Mark Ruffalo.jpg', 1),
(45, 'Willem Dafoe', 'actores/Willem Dafoe.webp', 1),
(46, 'Ramy Youssef', 'actores/Ramy Youssef.png', 1),
(47, 'Kirsten Dunst', 'actores/Kirsten Dunst.jpg', 1),
(48, 'Cailee Spaeny', 'actores/Cailee Spaeny.jpg', 1),
(49, 'Wagner Moura', 'actores/Wagner Moura.jpg', 1),
(50, 'Stephen McKinley Henderson', 'actores/Stephen McKinley Henderson.jpg', 1),
(51, 'Mike Faist', 'actores/Mike Faist.jpg', 1),
(52, 'Josh O\'Connor', 'actores/Josh O Connor.jpg', 1),
(53, 'A.J. Lister', 'actores/A.J. Lister.jpg', 1),
(54, 'Owen Teague', 'actores/Owen Teague.jpg', 1),
(55, 'Freya Allan', 'actores/Freya Allan.jpg', 1),
(56, 'Kevin Durand', 'actores/Kevin Durand.jpg', 1),
(57, 'Peter Macon', 'actores/Peter Macon.jpg', 1),
(58, 'Anya Taylor-Joy', 'actores/Anya Taylor-Joy.jpg', 1),
(59, 'Tom Burke', 'actores/Tom Burke.jpg', 1),
(60, 'Nathan Jones', 'actores/Nathan Jones.jpg', 1),
(61, 'Margot Robbie', 'actores/Margot Robbie.jpg', 1),
(62, 'Ryan Gosling', 'actores/Ryan Gosling.jpg', 1),
(63, 'America Ferrera', 'actores/America Ferrera.jpg', 1),
(64, 'Kate McKinnon', 'actores/Kate McKinnon.jpg', 1),
(65, 'Sandra Hüller', 'actores/Sandra Hüller.jpg', 1),
(66, 'Swann Arlaud', 'actores/Swann Arlaud.jpg', 1),
(67, 'Milo Machado Graner', 'actores/Milo Machado Graner.jpg', 1),
(68, 'Antoine Reinartz', 'actores/Antoine Reinartz.jpg', 1),
(69, 'Christian Friedel', 'actores/Christian Friedel.jpg', 1),
(70, 'Freya Kreutzkam', 'actores/Freya Kreutzkam.jpg', 1),
(71, 'Ralph Herforth', 'actores/Ralph Herforth.jpg', 1),
(72, 'Rebecca Hall', 'actores/Rebecca Hall.jpg', 1),
(73, 'Brian Tyree Henry', 'actores/Brian Tyree Henry.jpg', 1),
(74, 'Kaylee Hottle', 'actores/Kaylee Hottle.webp', 1),
(75, 'Lily Gladstone', 'actores/Lily Gladstone.jpg', 1),
(76, 'Jesse Plemons', 'actores/Jesse Plemons.png', 1),
(77, 'Amy Poehler', 'actores/Amy Poehler.jpg', 1),
(78, 'Phyllis Smith', 'actores/Phyllis Smith.jpg', 1),
(79, 'Lewis Black', 'actores/Lewis Black.jpg', 1),
(80, 'Maya Hawke', 'actores/Maya Hawke.jpg', 1),
(81, 'Hugh Grant', 'actores/Hugh Grant.jpg', 1),
(82, 'Olivia Colman', 'actores/Olivia Colman.jpg', 1),
(83, 'Keegan-Michael Key', 'actores/Keegan-Michael Key.jpg', 1),
(84, 'Jason Momoa', 'actores/Jason Momoa.jpg', 1),
(85, 'Patrick Wilson', 'actores/Patrick Wilson.jpg', 1),
(86, 'Amber Heard', 'actores/Amber Heard.jpg', 1),
(87, 'Yahya Abdul-Mateen II', 'actores/Yahya Abdul-Mateen II.jpg', 1),
(88, 'Robert Pattinson', 'actores/Robert Pattinson.jpg', 1),
(89, 'Zoë Kravitz', 'actores/Zoë Kravitz.jpg', 1),
(90, 'Paul Dano', 'actores/Paul Dano.jpg', 1),
(91, 'Colin Farrell', 'actores/Colin Farrell.jpg', 1),
(92, 'Song Kang-ho', 'actores/Song Kang-ho.jpg', 1),
(93, 'Lee Sun-kyun', 'actores/Lee Sun-kyun.jpg', 1),
(94, 'Cho Yeo-jeong', 'actores/Cho Yeo-jeong.jpg', 1),
(95, 'Choi Woo-shik', 'actores/Choi Woo-shik.jpg', 1),
(96, 'Shameik Moore', 'actores/Shameik Moore.jpg', 1),
(97, 'Hailee Steinfeld', 'actores/Hailee Steinfeld.jpg', 1),
(98, 'Oscar Isaac', 'actores/Oscar Isaac.jpg', 1),
(99, 'Jake Johnson', 'actores/Jake Johnson.jpg', 1),
(100, 'Michelle Yeoh', 'actores/Michelle Yeoh.jpg', 1),
(101, 'Ke Huy Quan', 'actores/Ke Huy Quan.jpg', 1),
(102, 'Stephanie Hsu', 'actores/Stephanie Hsu.jpg', 1),
(103, 'James Hong', 'actores/James Hong.jpg', 1),
(104, 'Tom Cruise', 'actores/Tom Cruise.jpg', 1),
(105, 'Miles Teller', 'actores/Miles Teller.jpg', 1),
(106, 'Jennifer Connelly', 'actores/Jennifer Connelly.jpg', 1),
(107, 'Jon Hamm', 'actores/Jon Hamm.jpg', 1),
(108, 'Joaquin Phoenix', 'actores/Joaquin Phoenix.jpg', 1),
(109, 'Zazie Beetz', 'actores/Zazie Beetz.jpg', 1),
(110, 'Frances Conroy', 'actores/Frances Conroy.jpg', 1),
(111, 'Joseph Gordon-Levitt', 'actores/Joseph Gordon-Levitt.jpg', 1),
(112, 'Elliot Page', 'actores/Elliot Page.jpg', 1),
(113, 'Tom Hardy', 'actores/Tom Hardy.jpg', 1),
(114, 'Christian Bale', 'actores/Christian Bale.jpg', 1),
(115, 'Heath Ledger', 'actores/Heath Ledger.jpg', 1),
(116, 'Aaron Eckhart', 'actores/Aaron Eckhart.jpg', 1),
(117, 'Maggie Gyllenhaal', 'actores/Maggie Gyllenhaal.jpg', 1),
(118, 'Matthew McConaughey', 'actores/Matthew McConaughey.jpg', 1),
(119, 'Anne Hathaway', 'actores/Anne Hathaway.jpg', 1),
(120, 'Jessica Chastain', 'actores/Jessica Chastain.jpg', 1),
(121, 'Michael Caine', 'actores/Michael Caine.jpg', 1),
(122, 'Edward Norton', 'actores/Edward Norton.jpg', 1),
(123, 'Brad Pitt', 'actores/Brad Pitt.jpg', 1),
(124, 'Helena Bonham Carter', 'actores/Helena Bonham Carter.jpg', 1),
(125, 'Meat Loaf', 'actores/Meat Loaf.jpg', 1),
(126, 'John Travolta', 'actores/John Travolta.jpg', 1),
(127, 'Samuel L. Jackson', 'actores/Samuel L. Jackson.jpg', 1),
(128, 'Uma Thurman', 'actores/Uma Thurman.jpg', 1),
(129, 'Bruce Willis', 'actores/Bruce Willis.jpg', 1),
(130, 'Tim Robbins', 'actores/Tim Robbins.jpg', 1),
(131, 'Morgan Freeman', 'actores/Morgan Freeman.jpg', 1),
(132, 'Bob Gunton', 'actores/Bob Gunton.jpg', 1),
(133, 'William Sadler', 'actores/William Sadler.jpg', 1),
(134, 'Marlon Brando', 'actores/Marlon Brando.jpg', 1),
(135, 'Al Pacino', 'actores/Al Pacino.jpg', 1),
(136, 'James Caan', 'actores/James Caan.jpg', 1),
(137, 'Diane Keaton', 'actores/Diane Keaton.jpg', 1),
(138, 'Tom Hanks', 'actores/Tom Hanks.jpg', 1),
(139, 'Robin Wright', 'actores/Robin Wright.jpg', 1),
(140, 'Gary Sinise', 'actores/Gary Sinise.jpg', 1),
(141, 'Sally Field', 'actores/Sally Field.jpg', 1),
(142, 'Elijah Wood', 'actores/Elijah Wood.jpg', 1),
(143, 'Ian McKellen', 'actores/Ian McKellen.jpg', 1),
(144, 'Viggo Mortensen', 'actores/Viggo Mortensen.jpg', 1),
(145, 'Sean Astin', 'actores/Sean Astin.jpg', 1),
(146, 'Keanu Reeves', 'actores/Keanu Reeves.jpg', 1),
(147, 'Laurence Fishburne', 'actores/Laurence Fishburne.jpg', 1),
(148, 'Carrie-Anne Moss', 'actores/Carrie-Anne Moss.jpg', 1),
(149, 'Hugo Weaving', 'actores/Hugo Weaving.jpg', 1),
(150, 'Russell Crowe', 'actores/Russell Crowe.jpg', 1),
(151, 'Connie Nielsen', 'actores/Connie Nielsen.jpg', 1),
(152, 'Oliver Reed', 'actores/Oliver Reed.jpg', 1),
(153, 'Gwyneth Paltrow', 'actores/Gwyneth Paltrow.jpg', 1),
(154, 'Kevin Spacey', 'actores/Kevin Spacey.jpg', 1),
(155, 'Tom Sizemore', 'actores/Tom Sizemore.jpg', 1),
(156, 'Edward Burns', 'actores/Edward Burns.jpg', 1),
(157, 'Matthew Broderick', 'actores/Matthew Broderick.jpg', 1),
(158, 'Jeremy Irons', 'actores/Jeremy Irons.jpg', 1),
(159, 'Moira Kelly', 'actores/Moira Kelly.jpg', 1),
(160, 'Michael J. Fox', 'actores/Michael J. Fox.jpg', 1),
(161, 'Christopher Lloyd', 'actores/Christopher Lloyd.jpg', 1),
(162, 'Lea Thompson', 'actores/Lea Thompson.jpg', 1),
(163, 'Crispin Glover', 'actores/Crispin Glover.jpg', 1),
(164, 'Jodie Foster', 'actores/Jodie Foster.jpg', 1),
(165, 'Anthony Hopkins', 'actores/Anthony Hopkins.jpg', 1),
(166, 'Scott Glenn', 'actores/Scott Glenn.jpg', 1),
(167, 'Ted Levine', 'actores/Ted Levine.jpg', 1),
(168, 'Sam Neill', 'actores/Sam Neill.jpg', 1),
(169, 'Laura Dern', 'actores/Laura Dern.jpg', 1),
(170, 'Jeff Goldblum', 'actores/Jeff Goldblum.jpg', 1),
(171, 'Richard Attenborough', 'actores/Richard Attenborough.jpg', 1),
(172, 'Liam Neeson', 'actores/Liam Neeson.jpg', 1),
(173, 'Ben Kingsley', 'actores/Ben Kingsley.jpg', 1),
(174, 'Ralph Fiennes', 'actores/Ralph Fiennes.jpg', 1),
(175, 'Caroline Goodall', 'actores/Caroline Goodall.jpg', 1),
(176, 'Robin Williams', 'actores/Robin Williams.jpg', 1),
(177, 'Ben Affleck', 'actores/Ben Affleck.jpg', 1),
(178, 'Stellan Skarsgård', 'actores/Stellan Skarsgård.jpg', 1),
(179, 'Mark Wahlberg', 'actores/Mark Wahlberg.jpg', 1),
(180, 'Ryan Reynolds', 'actores/Ryan Reynolds.jpg', 1),
(181, 'Hugh Jackman', 'actores/Hugh Jackman.jpg', 1),
(182, 'Emma Corrin', 'actores/Emma Corrin.jpg', 1),
(183, 'Matthew Macfadyen', 'actores/Matthew Macfadyen.jpg', 1),
(184, 'Javier Bardem', 'actores/Javier Bardem.jpg', 1),
(185, 'Tommy Lee Jones', 'actores/Tommy Lee Jones.jpg', 1),
(186, 'Kelly Macdonald', 'actores/Kelly Macdonald.jpg', 1),
(187, 'John Legend', 'actores/John Legend.jpg', 1),
(188, 'Rosemarie DeWitt', 'actores/Rosemarie DeWitt.jpg', 1),
(189, 'Anthony Gonzalez', 'actores/Anthony Gonzalez.jpg', 1),
(190, 'Gael García Bernal', 'actores/Gael García Bernal.jpg', 1),
(191, 'Benjamin Bratt', 'actores/Benjamin Bratt.jpg', 1),
(192, 'Alanna Ubach', 'actores/Alanna Ubach.jpg', 1),
(193, 'Sandra Bullock', 'actores/Sandra Bullock.jpg', 1),
(194, 'George Clooney', 'actores/George Clooney.jpg', 1),
(195, 'Ed Harris', 'actores/Ed Harris.jpg', 1),
(196, 'Orto Ignatiussen', 'actores/Orto Ignatiussen.jpg', 1),
(197, 'Tony Revolori', 'actores/Tony Revolori.jpg', 1),
(198, 'Saoirse Ronan', 'actores/Saoirse Ronan.jpg', 1),
(199, 'Adrien Brody', 'actores/Adrien Brody.jpg', 1),
(200, 'Chadwick Boseman', 'actores/Chadwick Boseman.jpg', 1),
(201, 'Michael B. Jordan', 'actores/Michael B. Jordan.jpg', 1),
(202, 'Lupita Nyong`o', 'actores/Lupita Nyong o.jpg', 1),
(203, 'Danai Gurira', 'actores/Danai Gurira.jpg', 1),
(204, 'Ewan McGregor', 'actores/Ewan McGregor.jpg', 1),
(205, 'Albert Finney', 'actores/Albert Finney.jpg', 1),
(206, 'Billy Crudup', 'actores/Billy Crudup.jpg', 1),
(207, 'Jessica Lange', 'actores/Jessica Lange.jpg', 1),
(208, 'Emilia Clarke', 'actores/Emilia Clarke.jpg', 1),
(209, 'Kit Harington', 'actores/Kit Harington.jpg', 1),
(210, 'Peter Dinklage', 'actores/Peter Dinklage.jpg', 1),
(211, 'Lena Headey', 'actores/Lena Headey.jpg', 1),
(212, 'Bryan Cranston', 'actores/Bryan Cranston.jpg', 1),
(213, 'Aaron Paul', 'actores/Aaron Paul.jpg', 1),
(214, 'Anna Gunn', 'actores/Anna Gunn.jpg', 1),
(215, 'Bob Odenkirk', 'actores/Bob Odenkirk.jpg', 1),
(216, 'Millie Bobby Brown', 'actores/Millie Bobby Brown.jpg', 1),
(217, 'Finn Wolfhard', 'actores/Finn Wolfhard.jpg', 1),
(218, 'Winona Ryder', 'actores/Winona Ryder.jpg', 1),
(219, 'David Harbour', 'actores/David Harbour.jpg', 1),
(220, 'James Gandolfini', 'actores/James Gandolfini.jpg', 1),
(221, 'Edie Falco', 'actores/Edie Falco.jpg', 1),
(222, 'Michael K. Williams', 'actores/Michael K. Williams.jpg', 1),
(223, 'Dominic West', 'actores/Dominic West.jpg', 1),
(224, 'Evan Rachel Wood', 'actores/Evan Rachel Wood.jpg', 1),
(225, 'Thandiwe Newton', 'actores/Thandiwe Newton.jpg', 1),
(226, 'Claire Foy', 'actores/Claire Foy.jpg', 1),
(227, 'Woody Harrelson', 'actores/Woody Harrelson.jpg', 1),
(228, 'Billy Bob Thornton', 'actores/Billy Bob Thornton.jpg', 1),
(229, 'Kieran Culkin', 'actores/Kieran Culkin.jpg', 1),
(230, 'Sarah Snook', 'actores/Sarah Snook.jpg', 1),
(231, 'Pedro Pascal', 'actores/Pedro Pascal.jpg', 1),
(232, 'Steve Carell', 'actores/Steve Carell.jpg', 1),
(233, 'Jenna Fischer', 'actores/Jenna Fischer.jpg', 1),
(234, 'Jennifer Aniston', 'actores/Jennifer Aniston.jpg', 1),
(235, 'Courteney Cox', 'actores/Courteney Cox.jpg', 1),
(236, 'Homer Simpson', 'actores/Homer Simpson.jpg', 1),
(237, 'Marge Simpson', 'actores/Marge Simpson.jpg', 1),
(238, 'Sophie Turner', 'actores/Sophie Turner.jpg', 1),
(239, 'Elisabeth Moss', 'actores/Elisabeth Moss.jpg', 1),
(240, 'Andrew Lincoln', 'actores/Andrew Lincoln.jpg', 1),
(241, 'Norman Reedus', 'actores/Norman Reedus.jpg', 1),
(242, 'Mads Mikkelsen', 'actores/Mads Mikkelsen.jpg', 1),
(243, 'Phoebe Waller-Bridge', 'actores/Phoebe Waller-Bridge.jpg', 1);

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
(1, 'pbkdf2_sha256$1000000$q8yNdfGViRwnPOiPu28zZe$p8l2dRZjZNzFSGMp19SqjrJ+kZ8J/gykEAuUVK+dkgM=', '2025-05-26 11:27:13.079416', 1, 'sonaura', '', '', '', 1, 1, '2025-05-26 11:12:55.202444');

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
(1, 'Avatar', 'pelicula', 'Entra en Pandora', 'Jake Sully, un ex-marine parapléjico, es enviado al exuberante planeta Pandora para infiltrarse entre los Na’vi, una raza indígena. Usando un avatar alienígena, descubre un mundo de maravillas y conflictos. Dividido entre su misión y su conexión con los Na’vi, Jake debe elegir un bando en una épica batalla por la supervivencia y el equilibrio de la naturaleza.', 2009, 162, 'James Cameron', 'James Cameron', 'PG-13', 'posters/Avatar.jpg', 'Avatar', NULL, NULL, 7.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(2, 'Avengers: Endgame', 'pelicula', 'El final del juego', 'Tras una devastadora derrota, los Vengadores supervivientes se unen para revertir las acciones de Thanos, quien aniquiló a la mitad de la humanidad. Con el tiempo como su mayor enemigo, emprenden una misión épica llena de sacrificios y decisiones imposibles, donde el destino del universo pende de un hilo en esta culminante batalla de superhéroes.', 2019, 181, 'Anthony y Joe Russo', 'Christopher Markus, Stephen McFeely', 'PG-13', 'posters/Avengers Endgame.jpg', 'Avengers: Endgame', NULL, NULL, 8.4, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(3, 'Titanic', 'pelicula', 'Nada en la Tierra podría separarlos', 'En 1912, Rose, una joven de clase alta, y Jack, un artista bohemio, se enamoran a bordo del lujoso Titanic. Su apasionado romance desafía las barreras sociales, pero el destino del barco, en ruta hacia un trágico iceberg, pone a prueba su amor y su lucha por la supervivencia en una de las mayores catástrofes marítimas de la historia.', 1997, 194, 'James Cameron', 'James Cameron', 'PG-13', 'posters/Titanic.jpg', 'Titanic', NULL, NULL, 7.9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(4, 'Star Wars: The Force Awakens', 'pelicula', 'Despierta la fuerza', 'Décadas después de la caída del Imperio, una nueva amenaza, la Primera Orden, emerge en la galaxia. Rey, una recolectora de chatarra, y Finn, un desertor de los stormtroopers, se unen a la Resistencia para enfrentar al malvado Kylo Ren. Con la ayuda de leyendas como Han Solo, su aventura destapa secretos que podrían cambiar el destino de la galaxia.', 2015, 138, 'J.J. Abrams', 'Lawrence Kasdan, J.J. Abrams', 'PG-13', 'posters/Star Wars The Force Awakens.webp', 'Star Wars: The Force Awakens', NULL, NULL, 7.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(5, 'Jurassic World', 'pelicula', 'El parque ha abierto', 'En Isla Nublar, un parque temático de dinosaurios de última generación atrae a millones. Pero cuando un nuevo híbrido genético, el Indominus Rex, escapa, el caos se desata. Owen, un entrenador de velociraptores, y Claire, la gerente del parque, lideran una desesperada misión para salvar a los visitantes y restaurar el orden en un mundo donde la naturaleza reclama su poder.', 2015, 124, 'Colin Trevorrow', 'Rick Jaffa, Amanda Silver', 'PG-13', 'posters/Jurassic World.jpg', 'Jurassic World', NULL, NULL, 7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(6, 'The Lion King', 'pelicula', 'Siente el rugido', 'Simba, un joven león destinado a ser rey, enfrenta la traición y el exilio tras la muerte de su padre. Guiado por nuevos amigos y el espíritu de su pasado, emprende un viaje de autodescubrimiento para reclamar su lugar en la Roca del Rey. Esta vibrante reimaginación en acción real celebra el legado, el coraje y el ciclo de la vida.', 2019, 118, 'Jon Favreau', 'Jeff Nathanson', 'PG', 'posters/The Lion King.jpg', 'The Lion King', NULL, NULL, 6.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(7, 'The Avengers', 'pelicula', 'Reunidos', 'Cuando Loki amenaza la Tierra con una invasión alienígena, Nick Fury reúne a un grupo dispar de superhéroes: Iron Man, Capitán América, Thor, Hulk, Viuda Negra y Ojo de Halcón. Juntos, deben superar sus diferencias y unir fuerzas en una batalla épica para salvar al mundo de la destrucción, demostrando que el verdadero poder radica en el trabajo en equipo.', 2012, 143, 'Joss Whedon', 'Joss Whedon', 'PG-13', 'posters/The Avengers.jpg', 'The Avengers', NULL, NULL, 8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(8, 'Furious 7', 'pelicula', 'Una última carrera', 'Dom Toretto y su equipo enfrentan una nueva amenaza: Deckard Shaw, un letal asesino que busca vengarse. Entre carreras de alta velocidad, acrobacias imposibles y lealtades puestas a prueba, la familia debe unirse para proteger a los suyos y detener a Shaw en una aventura global cargada de adrenalina, donde el pasado regresa con fuerza y el peligro acecha en cada curva.', 2015, 137, 'James Wan', 'Chris Morgan', 'PG-13', 'posters/Furious 7.jpg', 'Furious 7', NULL, NULL, 7.1, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(9, 'Frozen II', 'pelicula', 'El viaje continúa', 'Elsa, Anna, Kristoff, Olaf y Sven se aventuran más allá de Arendelle para descubrir el origen de los poderes de Elsa. Una misteriosa voz la llama hacia un bosque encantado, donde enfrentarán peligros y secretos del pasado. En esta mágica odisea, las hermanas aprenderán que el amor y la valentía son la clave para proteger su reino y su vínculo.', 2019, 103, 'Chris Buck, Jennifer Lee', 'Jennifer Lee', 'PG', 'posters/Frozen II.jpg', 'Frozen II', NULL, NULL, 6.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(10, 'Beauty and the Beast', 'pelicula', 'La belleza está en el interior', 'Bella, una joven soñadora, se sacrifica para salvar a su padre y queda atrapada en el castillo de una misteriosa Bestia. A medida que descubre la bondad oculta tras su apariencia, surge un amor que desafía encantamientos y prejuicios. Esta mágica adaptación en acción real explora la redención, el coraje y la fuerza de los lazos que trascienden las apariencias.', 2017, 129, 'Bill Condon', 'Stephen Chbosky, Evan Spiliotopoulos', 'PG', 'posters/Beauty and the Beast.jpg', 'Beauty and the Beast', NULL, NULL, 7.1, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(11, 'Dune: Parte 2', 'pelicula', 'Entra en el desierto', 'Paul Atreides abraza su destino entre los Fremen de Arrakis, mientras la galaxia se tambalea bajo conspiraciones y guerras por el control de la especia. Aliado con Chani, lidera una rebelión contra las fuerzas opresoras. Esta épica continuación combina intriga política, misticismo y batallas colosales en un desierto donde el poder y la profecía chocan con consecuencias universales.', 2024, 166, 'Denis Villeneuve', 'Denis Villeneuve, Jon Spaihts', 'PG-13', 'posters/DuneParte2.jpg', 'Dune: Parte 2', NULL, NULL, 9.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(12, 'Oppenheimer', 'pelicula', 'El hombre detrás de la bomba', 'J. Robert Oppenheimer, un brillante físico, lidera el Proyecto Manhattan para crear la primera bomba atómica durante la Segunda Guerra Mundial. Su genialidad choca con dilemas éticos y políticos mientras el arma redefine el destino de la humanidad. Este drama histórico explora el peso de la ambición, el sacrificio y las consecuencias de un descubrimiento que cambió el mundo para siempre.', 2023, 180, 'Christopher Nolan', 'Christopher Nolan', 'PG-13', 'posters/Oppenheimer.jpg', 'Oppenheimer', NULL, NULL, 9.6, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(13, 'Pobres Criaturas', 'pelicula', 'Una vida extraordinaria', 'Bella Baxter, resucitada por un excéntrico científico, despierta a un mundo de maravillas y excesos. Su insaciable curiosidad la lleva a un viaje de autodescubrimiento, desafiando normas sociales y explorando el amor, la libertad y la identidad. Esta fábula surrealista, cargada de humor negro y audacia visual, reimagina el poder de la voluntad humana en un mundo extraño y fascinante.', 2023, 141, 'Yorgos Lanthimos', 'Tony McNamara', 'R', 'posters/PoorThings.jpg', 'Pobres Criaturas', NULL, NULL, 9.4, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(14, 'Civil War', 'pelicula', 'El país dividido', 'En un Estados Unidos fracturado por una guerra civil moderna, un grupo de periodistas recorre un país devastado para documentar la verdad. Entre ciudades destruidas y facciones enfrentadas, enfrentan peligros mortales mientras intentan llegar a Washington D.C. Este thriller distópico explora la fragilidad de la democracia y el costo humano de un conflicto que divide a una nación.', 2024, 109, 'Alex Garland', 'Alex Garland', 'R', 'posters/CivilWar.jpg', 'Civil War', NULL, NULL, 9.2, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(15, 'Rivales', 'pelicula', 'Competencia sin límites', 'Tashi, una ex-promesa del tenis convertida en entrenadora, guía a su esposo hacia la grandeza en la cancha, pero su pasado se reaviva cuando enfrentan a un antiguo amigo y rival. En un torbellino de pasión, ambición y secretos, este triángulo amoroso en el mundo del tenis profesional desafía lealtades y desata emociones intensas en cada punto del juego.', 2024, 131, 'Luca Guadagnino', 'Justin Kuritzkes', 'R', 'posters/Rivales.jpg', 'Rivales', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(16, 'El Planeta de los Simios: Nuevo Reino', 'pelicula', 'Un nuevo comienzo', 'Siglos después del reinado de César, una nueva generación de simios construye una civilización avanzada. Noa, un joven líder, se enfrenta a un tirano que amenaza el futuro de su especie. Aliado con una humana misteriosa, emprende una aventura que revela secretos del pasado y redefine la convivencia entre simios y humanos en un mundo al borde del cambio.', 2024, 145, 'Wes Ball', 'Josh Friedman', 'PG-13', 'posters/PlanetaDeLosSimios.jpeg', 'El Planeta de los Simios: Nuevo Reino', NULL, NULL, 8.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(17, 'Furiosa: De la Saga Mad Max', 'pelicula', 'El origen de Furiosa', 'En un páramo postapocalíptico, la joven Furiosa es arrancada de su hogar y cae en manos de un señor de la guerra. Su lucha por sobrevivir y regresar a casa forja su leyenda como guerrera implacable. Esta precuela de Mad Max: Fury Road ofrece acción vertiginosa, paisajes desoladores y una historia de venganza y redención que define a una heroína inolvidable.', 2024, 150, 'George Miller', 'George Miller, Nico Lathouris', 'R', 'posters/Furiosa.jpg', 'Furiosa: De la Saga Mad Max', NULL, NULL, 8.6, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(18, 'Barbie', 'pelicula', 'Sé lo que quieras ser', 'Barbie, habitante de un mundo perfecto, se embarca en una aventura en el mundo real cuando enfrenta una crisis existencial. Acompañada por Ken, descubre las complejidades de la humanidad, el feminismo y la libertad de elegir su propio camino. Esta comedia vibrante y conmovedora combina humor, sátira y un mensaje poderoso sobre la identidad y el empoderamiento.', 2023, 114, 'Greta Gerwig', 'Greta Gerwig, Noah Baumbach', 'PG-13', 'posters/Barbie.jpg', 'Barbie', NULL, NULL, 8.2, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(19, 'Anatomía de una Caída', 'pelicula', '¿Culpable o inocente?', 'Sandra, una escritora de éxito, se convierte en la principal sospechosa tras la misteriosa muerte de su esposo. En un juicio que desentraña su matrimonio, su hijo ciego debe enfrentar la verdad sobre sus padres. Este thriller psicológico explora la ambigüedad de la verdad, las dinámicas familiares y los prejuicios, manteniendo al espectador al borde de la duda hasta el final.', 2023, 150, 'Justine Triet', 'Justine Triet, Arthur Harari', 'R', 'posters/AnatomiaDeUnaCaida.jpg', 'Anatomía de una Caída', NULL, NULL, 8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(20, 'La Zona de Interés', 'pelicula', 'La banalidad del mal', 'Rudolf Höss, comandante de Auschwitz, y su familia llevan una vida idílica junto al campo de concentración. Mientras el horror ocurre a pocos metros, su rutina cotidiana revela una perturbadora indiferencia. Esta inquietante obra maestra examina la deshumanización, la complicidad silenciosa y el contraste entre la vida doméstica y las atrocidades inimaginables, dejando una huella imborrable sobre el costo moral de la ignorancia.', 2023, 105, 'Jonathan Glazer', 'Jonathan Glazer', 'PG-13', 'posters/la zona de interes.jpg', 'La Zona de Interés', NULL, NULL, 7.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(21, 'Godzilla y Kong: El Nuevo Imperio', 'pelicula', 'Dos titanes, un destino', 'Godzilla y Kong, antiguos rivales, deben unirse para enfrentar una amenaza colosal que emerge de la Tierra Hueca. Mientras los humanos descubren secretos ancestrales, los titanes libran una batalla épica que determinará el equilibrio del mundo. Esta aventura llena de acción combina espectaculares enfrentamientos con una exploración de la mitología de los monstruos más icónicos del cine.', 2024, 115, 'Adam Wingard', 'Terry Rossio, Simon Barrett', 'PG-13', 'posters/Godzilla y Kong El Nuevo Imperio.jpg', 'Godzilla y Kong: El Nuevo Imperio', NULL, NULL, 7.6, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(22, 'Los Asesinos de la Luna', 'pelicula', 'La codicia no tiene límites', 'En la Oklahoma de los años 20, los asesinatos de miembros de la nación Osage, enriquecida por el petróleo, desencadenan una investigación del naciente FBI. Este drama épico desentraña una red de codicia, traición y racismo, mientras explora el amor y la lealtad en un contexto de ambición desmedida. Basada en hechos reales, es un retrato inquietante de la injusticia.', 2023, 206, 'Martin Scorsese', 'Eric Roth, Martin Scorsese', 'R', 'posters/Los Asesinos de la Luna.jpg', 'Los Asesinos de la Luna', NULL, NULL, 7.4, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(23, 'Del Revés 2', 'pelicula', 'Nuevas emociones', 'Riley, ahora adolescente, enfrenta los retos de la pubertad mientras nuevas emociones, como Ansiedad, irrumpen en su mente. Alegría y el resto del equipo luchan por mantener el equilibrio en un torbellino de cambios. Esta encantadora secuela animada explora con humor y corazón los desafíos de crecer, la aceptación de uno mismo y la complejidad de las emociones humanas.', 2024, 96, 'Kelsey Mann', 'Meg LeFauve', 'PG', 'posters/DelReves2.jpg', 'Del Revés 2', NULL, NULL, 7.2, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(24, 'Wonka', 'pelicula', 'El origen del chocolate', 'El joven Willy Wonka, lleno de sueños y creatividad, se embarca en una aventura para abrir su primera tienda de chocolates. Enfrentando rivales y desafíos, su ingenio y magia transforman el mundo a su alrededor. Esta colorida precuela explora los orígenes del excéntrico chocolatero, celebrando la imaginación, la perseverancia y el dulce poder de hacer realidad los sueños.', 2023, 116, 'Paul King', 'Simon Farnaby, Paul King', 'PG', 'posters/Wonka.jpg', 'Wonka', NULL, NULL, 7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(25, 'Aquaman y el Reino Perdido', 'pelicula', 'El océano en peligro', 'Arthur Curry, el rey de Atlantis, enfrenta una antigua amenaza que pone en peligro los siete mares. Aliado con su hermano Orm, debe forjar una alianza improbable para detener la destrucción. Esta aventura épica combina acción submarina, mitología y lealtades divididas, mientras Aquaman lucha por proteger su reino y el mundo de la superficie en una batalla de proporciones colosales.', 2023, 124, 'James Wan', 'David Leslie Johnson-McGoldrick', 'PG-13', 'posters/Aquaman.jpg', 'Aquaman y el Reino Perdido', NULL, NULL, 6.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(26, 'The Batman', 'pelicula', 'La venganza tiene un nuevo rostro', 'En una Gotham sumida en la corrupción, Bruce Wayne, en su segundo año como Batman, investiga una serie de asesinatos orquestados por el Acertijo. Mientras desentraña un complot que amenaza a la ciudad, enfrenta sus propios demonios. Este thriller oscuro y psicológico redefine al caballero de la noche con una intensidad visceral, explorando la justicia, la venganza y la esperanza en la oscuridad.', 2022, 176, 'Matt Reeves', 'Matt Reeves, Peter Craig', 'PG-13', 'posters/The Batman.webp', 'The Batman', NULL, NULL, 8.9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(27, 'Parásitos', 'pelicula', 'La lucha de clases', 'La familia Kim, sumida en la pobreza, se infiltra astutamente en la vida de los ricos Park, haciéndose pasar por empleados calificados. Su plan desata una serie de eventos impredecibles que revelan las profundas desigualdades sociales. Este thriller satírico, cargado de humor negro y giros inesperados, explora la codicia, la moralidad y las barreras invisibles que dividen a la sociedad.', 2019, 132, 'Bong Joon-ho', 'Bong Joon-ho, Han Jin-won', 'R', 'posters/Parasite.jpg', 'Parásitos', NULL, NULL, 9.7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(28, 'Spider-Man: A Través del Spider-Verso', 'pelicula', 'El multiverso se expande', 'Miles Morales, el joven Spider-Man, se lanza a una aventura a través de dimensiones paralelas, enfrentándose a un misterioso villano que amenaza la existencia de todos los universos. Junto a otros Spider-People, explora mundos vibrantes y únicos. Esta secuela animada combina arte innovador, acción trepidante y una emotiva historia sobre el sacrificio, la identidad y el poder de elegir tu propio destino.', 2023, 140, 'Joaquim Dos Santos, Kemp Powers', 'Phil Lord, Christopher Miller', 'PG', 'posters/Spider-Man a traves spiderverso.webp', 'Spider-Man: A Través del Spider-Verso', NULL, NULL, 9.5, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(29, 'Todo a la Vez en Todas Partes', 'pelicula', 'El multiverso es caótico', 'Evelyn Wang, una inmigrante china agotada por su lavandería y sus problemas familiares, descubre que puede conectarse con versiones de sí misma en universos paralelos. Enfrentando una amenaza multiversal, debe usar sus nuevas habilidades para salvar la realidad. Esta comedia surrealista y conmovedora explora la identidad, el amor familiar y la búsqueda de sentido en un caos infinito.', 2022, 139, 'Daniel Kwan, Daniel Scheinert', 'Daniel Kwan, Daniel Scheinert', 'R', 'posters/Todo a la vez en todas partes.jpg', 'Todo a la Vez en Todas Partes', NULL, NULL, 9.3, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(30, 'Top Gun: Maverick', 'pelicula', 'El regreso de Maverick', 'Pete \"Maverick\" Mitchell, un piloto legendario, regresa para entrenar a una nueva generación de aviadores en una misión de alto riesgo. Enfrentando su pasado y a un talentoso pero rebelde piloto, Maverick lidera un equipo en una operación que desafía los límites del coraje y la tecnología. Esta secuela llena de acción combina adrenalina aérea con una emotiva historia de redención.', 2022, 131, 'Joseph Kosinski', 'Ehren Kruger, Eric Warren Singer', 'PG-13', 'posters/Top Gun Maverick.webp', 'Top Gun: Maverick', NULL, NULL, 9.1, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(31, 'Joker', 'pelicula', 'Ríe y el mundo reirá contigo', 'Arthur Fleck, un comediante fracasado en una Gotham opresiva, lucha contra el abandono y la crueldad de la sociedad. Su descenso a la locura lo transforma en el icónico Joker, desencadenando un caos que sacude la ciudad. Este drama psicológico, oscuro y provocador, explora la alienación, la desesperación y los orígenes de un villano que redefine el crimen y la rebelión.', 2019, 122, 'Todd Phillips', 'Todd Phillips, Scott Silver', 'R', 'posters/Joker (2019).jpg', 'Joker', NULL, NULL, 8.7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(32, 'Origen', 'pelicula', 'Tu mente es la escena del crimen', 'Dom Cobb, un ladrón especializado en infiltrarse en sueños, recibe el encargo definitivo: implantar una idea en la mente de una persona mientras duerme. Con un equipo de expertos, enfrenta un laberinto de sueños dentro de sueños, donde el tiempo, la realidad y el peligro se distorsionan. Este thriller de ciencia ficción explora la mente humana y los límites de la percepción.', 2010, 148, 'Christopher Nolan', 'Christopher Nolan', 'PG-13', 'posters/Origen.webp', 'Origen', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(33, 'El Caballero Oscuro', 'pelicula', 'El caballero de Gotham', 'Batman enfrenta su mayor desafío cuando el Joker desata el caos en Gotham con un plan para destruir el orden y la esperanza. Mientras el fiscal Harvey Dent lucha por la justicia, Bruce Wayne debe confrontar los límites de su moralidad. Este thriller épico combina acción, intriga y dilemas éticos, redefiniendo el género de superhéroes con una intensidad inolvidable.', 2008, 152, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'PG-13', 'posters/CaballeroOscuro.webp', 'El Caballero Oscuro', NULL, NULL, 9.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(34, 'Interstellar', 'pelicula', 'El destino de la humanidad está en las estrellas', 'En un futuro donde la Tierra agoniza, Cooper, un ex-piloto, lidera una misión para encontrar un nuevo hogar para la humanidad a través de un agujero de gusano. Enfrentando sacrificios personales y fenómenos cósmicos, el equipo lucha contra el tiempo y el espacio. Este drama de ciencia ficción explora el amor, la supervivencia y la búsqueda de esperanza en lo desconocido.', 2014, 169, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'PG-13', 'posters/Interestellar.jpg', 'Interstellar', NULL, NULL, 9.5, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(35, 'El Club de la Pelea', 'pelicula', 'La primera regla es...', 'Un oficinista desencantado y un carismático desconocido crean un club secreto donde los hombres liberan sus frustraciones a puñetazos. Lo que comienza como una rebelión contra la monotonía se convierte en un movimiento caótico que desafía el orden social. Este thriller satírico y psicológico explora la identidad, el consumismo y la rebelión, dejando una marca imborrable con su audacia y provocación.', 1999, 139, 'David Fincher', 'Jim Uhls', 'R', 'posters/El Club de la Pelea.webp', 'El Club de la Pelea', NULL, NULL, 9.3, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(36, 'Tiempos Violentos', 'pelicula', 'Historias entrelazadas', 'En Los Ángeles, las vidas de un boxeador, dos sicarios, un gánster y su esposa se cruzan en una serie de historias entrelazadas llenas de crimen, redención y caos. Con diálogos ingeniosos y una narrativa no lineal, esta obra maestra de Quentin Tarantino combina violencia estilizada, humor negro y personajes inolvidables en un retrato vibrante de la vida al margen de la ley.', 1994, 154, 'Quentin Tarantino', 'Quentin Tarantino, Roger Avary', 'R', 'posters/Tiempos Violentos.jpg', 'Tiempos Violentos', NULL, NULL, 9.4, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(37, 'Cadena Perpetua', 'pelicula', 'La esperanza es algo peligroso', 'Andy Dufresne, un banquero condenado injustamente por asesinato, llega a la prisión de Shawshank, donde forja una improbable amistad con Red. A través de décadas de adversidad, su ingenio y esperanza desafían un sistema opresivo. Este drama conmovedor, basado en un relato de Stephen King, celebra la resiliencia humana, la redención y el poder transformador de la amistad frente a la injusticia.', 1994, 142, 'Frank Darabont', 'Frank Darabont', 'R', 'posters/Cadena Perpetua.jpg', 'Cadena Perpetua', NULL, NULL, 9.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(38, 'El Padrino', 'pelicula', 'El poder lo es todo', 'En la Nueva York de los años 40, la familia Corleone, liderada por Don Vito, navega el mundo del crimen organizado. Cuando una traición amenaza su imperio, Michael, el hijo menor, se ve arrastrado a un camino de poder y violencia. Este drama épico explora la lealtad, el legado y el costo moral de la ambición en una saga mafiosa inolvidable.', 1972, 175, 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'R', 'posters/El Padrino.jpg', 'El Padrino', NULL, NULL, 9.7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(39, 'Forrest Gump', 'pelicula', 'La vida es como una caja de bombones', 'Forrest Gump, un hombre sencillo con un corazón puro, vive una vida extraordinaria a través de décadas de cambios en Estados Unidos. Desde su infancia hasta convertirse en héroe, corredor y empresario, su amor por Jenny y su bondad inquebrantable lo guían. Esta conmovedora historia celebra la resiliencia, el destino y la belleza de la humanidad en un mundo impredecible.', 1994, 142, 'Robert Zemeckis', 'Eric Roth', 'PG-13', 'posters/Forrest Gump.jpg', 'Forrest Gump', NULL, NULL, 9.3, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(40, 'El Señor de los Anillos: La Comunidad del Anillo', 'pelicula', 'Un anillo para gobernarlos a todos', 'Frodo, un joven hobbit, hereda un anillo que encierra un poder oscuro. Junto a una comunidad de héroes, incluidos Gandalf, Aragorn y Legolas, emprende un peligroso viaje para destruirlo y evitar que caiga en manos del malvado Sauron. Esta épica aventura combina magia, valentía y amistad en un mundo fantástico al borde de la guerra.', 2001, 178, 'Peter Jackson', 'Fran Walsh, Philippa Boyens', 'PG-13', 'posters/El Señor de los Anillos 1 La Comunidad del Anillo.jpg', 'El Señor de los Anillos: La Comunidad del Anillo', NULL, NULL, 9.4, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(41, 'Matrix', 'pelicula', 'La realidad es una ilusión', 'Neo, un hacker, descubre que el mundo es una simulación controlada por máquinas. Guiado por Morfeo y Trinity, se une a la resistencia para despertar a la humanidad y enfrentar a los agentes de la Matrix. Este revolucionario thriller de ciencia ficción combina acción, filosofía y efectos visuales innovadores, cuestionando la realidad y el poder de la elección en un mundo digital.', 1999, 136, 'Lana Wachowski, Lilly Wachowski', 'Lana Wachowski, Lilly Wachowski', 'R', 'posters/Matrix.jpg', 'Matrix', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(42, 'Gladiador', 'pelicula', 'Fuerza y honor', 'Maximus, un general romano traicionado, es esclavizado y convertido en gladiador tras la muerte de su familia. En la arena, su fuerza y carisma lo convierten en un símbolo de resistencia contra un emperador corrupto. Este drama épico combina acción visceral, venganza y redención, mientras Maximus lucha por la justicia y la libertad en un Imperio Romano al borde del caos.', 2000, 155, 'Ridley Scott', 'David Franzoni, John Logan', 'R', 'posters/Gladiador (2000).jpg', 'Gladiador', NULL, NULL, 8.9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(43, 'Siete', 'pelicula', 'Los siete pecados capitales', 'Dos detectives, el veterano Somerset y el impulsivo Mills, persiguen a un asesino en serie que usa los siete pecados capitales como inspiración para sus crímenes. En una ciudad oscura y opresiva, cada caso los lleva más cerca de un final inquietante. Este thriller psicológico combina suspenso, horror y dilemas morales, dejando una marca imborrable con su atmósfera sombría y giros devastadores.', 1995, 127, 'David Fincher', 'Andrew Kevin Walker', 'R', 'posters/Siete (1995).jpg', 'Siete', NULL, NULL, 9.2, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(44, 'Rescatando al Soldado Ryan', 'pelicula', 'La guerra tiene un precio', 'Tras el desembarco de Normandía, el capitán Miller lidera un escuadrón en una peligrosa misión para rescatar al soldado Ryan, el último superviviente de cuatro hermanos. Enfrentando los horrores de la Segunda Guerra Mundial, el equipo cuestiona el valor de una vida frente al sacrificio colectivo. Este drama bélico ofrece acción cruda y una profunda reflexión sobre el deber y la humanidad.', 1998, 169, 'Steven Spielberg', 'Robert Rodat', 'R', 'posters/Rescatando al Soldado Ryan.jpg', 'Rescatando al Soldado Ryan', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(45, 'El Rey León', 'pelicula', 'Siente el rugido', 'Simba, un cachorro de león destinado a gobernar, huye tras una tragedia familiar orquestada por su tío Scar. Criado por un dúo improbable, Timón y Pumba, regresa para enfrentar su pasado y reclamar su lugar como rey. Esta joya animada combina humor, música y una emotiva historia sobre el crecimiento, la responsabilidad y el ciclo eterno de la vida.', 1994, 89, 'Roger Allers, Rob Minkoff', 'Irene Mecchi, Jonathan Roberts', 'G', 'posters/El Rey León (1994).jpg', 'El Rey León', NULL, NULL, 8.8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(46, 'Regreso al Futuro', 'pelicula', 'Nunca llegaba a tiempo a clase', 'Marty McFly, un adolescente, viaja accidentalmente a 1955 en un DeLorean modificado por el excéntrico Doc Brown. Para regresar a 1985, debe asegurar que sus padres se enamoren mientras evita alterar el futuro. Esta aventura de ciencia ficción combina humor, acción y nostalgia, explorando el destino, la familia y las consecuencias de jugar con el tiempo en un viaje inolvidable.', 1985, 116, 'Robert Zemeckis', 'Robert Zemeckis, Bob Gale', 'PG', 'posters/regreso al futuro.jpg', 'Volver al Futuro', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(47, 'El Silencio de los Corderos', 'pelicula', 'El mal tiene muchas caras', 'Clarice Starling, una joven agente del FBI, busca la ayuda del brillante pero aterrador Hannibal Lecter para capturar a un asesino en serie conocido como Buffalo Bill. En un juego psicológico de astucia y manipulación, Clarice enfrenta sus miedos mientras desentraña un caso macabro. Este thriller icónico combina suspenso, horror y personajes inolvidables en una cacería implacable.', 1991, 118, 'Jonathan Demme', 'Ted Tally', 'R', 'posters/El_silencio_de_los_corderos.jpg', 'El Silencio de los Corderos', NULL, NULL, 9.2, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(48, 'Jurassic Park', 'pelicula', 'La vida se abre camino', 'Un excéntrico millonario crea un parque temático con dinosaurios clonados en una isla remota. Cuando un fallo de seguridad desata el caos, un grupo de visitantes, incluidos un paleontólogo y dos niños, lucha por sobrevivir entre criaturas prehistóricas. Este clásico de ciencia ficción combina maravilla, tensión y efectos visuales revolucionarios, explorando la arrogancia humana frente al poder de la naturaleza.', 1993, 127, 'Steven Spielberg', 'Michael Crichton, David Koepp', 'PG-13', 'posters/Jurassic Park.jpg', 'Parque Jurásico', NULL, NULL, 9.1, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(49, 'La Lista de Schindler', 'pelicula', 'El valor de una vida', 'Oskar Schindler, un empresario alemán, transforma su ambición en una misión para salvar a más de mil judíos durante el Holocausto, arriesgando todo en un acto de humanidad. Este drama histórico, basado en hechos reales, retrata el horror del genocidio y el poder de la compasión, dejando una profunda reflexión sobre el sacrificio y la esperanza en tiempos de oscuridad.', 1993, 195, 'Steven Spielberg', 'Steven Zaillian', 'R', 'posters/La_lista_de_Schindler.jpg', 'La Lista de Schindler', NULL, NULL, 9.7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(50, 'El Indomable Will Hunting', 'pelicula', 'El genio está en todas partes', 'Will Hunting, un joven conserje con un intelecto prodigioso para las matemáticas, oculta su talento tras un pasado turbulento. Cuando un profesor lo descubre, un terapeuta poco convencional lo ayuda a enfrentar sus demonios emocionales. Este drama conmovedor explora la genialidad, la vulnerabilidad y la búsqueda de propósito, destacando el poder transformador de la conexión humana y el autodescubrimiento.', 1997, 126, 'Gus Van Sant', 'Matt Damon, Ben Affleck', 'R', 'posters/El Indomable Will Hunting (1997).jpg', 'El Indomable Will Hunting', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(51, 'Infiltrados', 'pelicula', '¿Quién es el topo?', 'En Boston, un policía encubierto, Billy Costigan, se infiltra en la mafia irlandesa, mientras un criminal, Colin Sullivan, se convierte en topo dentro de la policía. Sus caminos se cruzan en un juego mortal de engaño y traición. Este thriller intenso de Martin Scorsese combina suspenso, intriga y actuaciones magistrales, explorando la lealtad y el costo de vivir una doble vida.', 2006, 151, 'Martin Scorsese', 'William Monahan', 'R', 'posters/infiltrados.jpg', 'Infiltrados', NULL, NULL, 9.1, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(52, 'Avatar 2', 'pelicula', 'El camino del agua', 'Jake Sully y Neytiri, ahora padres, enfrentan nuevas amenazas en Pandora mientras protegen a su familia. Explorando océanos y culturas desconocidas, se unen a los clanes Na’vi para combatir una invasión humana renovada. Esta secuela épica combina espectaculares paisajes acuáticos, acción y una emotiva historia sobre la familia, la resistencia y la conexión con la naturaleza.', 2022, 192, 'James Cameron', 'James Cameron', 'PG-13', 'posters/Avatar2.jpg', 'Avatar 2', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(53, 'Deadpool y Wolverine', 'pelicula', 'El dúo más irreverente', 'Deadpool, el mercenario bocazas, une fuerzas con un Wolverine renuente en una misión multiversal llena de caos y humor. Enfrentando enemigos extravagantes y rompiendo la cuarta pared, este dúo improbable combina acción explosiva, bromas irreverentes y una sorprendente camaradería, mientras intentan salvar su realidad en una aventura que redefine la amistad y la redención.', 2024, 128, 'Shawn Levy', 'Rhett Reese, Paul Wernick', 'R', 'posters/Deadpool y Wolverine (2024).jpg', 'Deadpool y Wolverine', NULL, NULL, 8.7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(54, 'Sin Lugar para los Débiles', 'pelicula', 'El destino está escrito', 'Llewelyn Moss encuentra una maleta llena de dinero en una escena de crimen en el desierto, desencadenando una persecución implacable por parte de Anton Chigurh, un asesino psicopático. En un juego mortal de gato y ratón, este thriller de los hermanos Coen explora el destino, la moralidad y la violencia en un paisaje desolado donde nadie está a salvo.', 2007, 122, 'Joel Coen, Ethan Coen', 'Joel Coen, Ethan Coen', 'R', 'posters/Sin Lugar para los Débiles (2007).jpg', 'Sin Lugar para los Débiles', NULL, NULL, 9, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(55, 'La La Land', 'pelicula', 'Haz realidad tus sueños', 'Mia, una aspirante a actriz, y Sebastian, un pianista de jazz, se enamoran en Los Ángeles mientras persiguen sus sueños. Su romance se enfrenta a los sacrificios que exige la ambición en una ciudad de ilusiones. Esta vibrante historia musical combina números espectaculares, emoción y una reflexión agridulce sobre el amor, el arte y las decisiones que definen la vida.', 2016, 128, 'Damien Chazelle', 'Damien Chazelle', 'PG-13', 'posters/Lalaland.jpg', 'La La Land', NULL, NULL, 8.5, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(56, 'Coco', 'pelicula', 'Recuerda a tu familia', 'Miguel, un niño mexicano con sueños de ser músico, se adentra accidentalmente en la vibrante Tierra de los Muertos. Allí, descubre secretos de su familia y la importancia de honrar a sus ancestros. Esta colorida aventura animada celebra la cultura mexicana, la música y los lazos familiares, entregando una historia conmovedora sobre la memoria, el legado y el poder de seguir tus pasiones.', 2017, 105, 'Lee Unkrich', 'Adrian Molina, Matthew Aldrich', 'PG', 'posters/Coco.jpeg', 'Coco', NULL, NULL, 8.7, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(57, 'Gravity', 'pelicula', 'No hay nada que temer allá afuera', 'La Dra. Ryan Stone y el astronauta Matt Kowalski quedan varados en el espacio tras un accidente que destruye su transbordador. Enfrentando la soledad y el vacío infinito, luchan por sobrevivir contra el tiempo y las adversidades. Este thriller visualmente impactante combina tensión, efectos revolucionarios y una profunda exploración de la resiliencia humana frente al aislamiento y la desesperación.', 2013, 91, 'Alfonso Cuarón', 'Alfonso Cuarón, Jonás Cuarón', 'PG-13', 'posters/Gravity.jpg', 'Gravity', NULL, NULL, 8.1, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(58, 'El Gran Hotel Budapest', 'pelicula', 'Una aventura inolvidable', 'En los años 30, Gustave, un excéntrico conserje, y Zero, su joven protegido, se ven envueltos en una intriga tras la muerte de una huésped adinerada. Entre robos, persecuciones y un valioso cuadro, esta comedia estilizada de Wes Anderson combina humor extravagante, personajes coloridos y una estética única, explorando la lealtad y la nostalgia en un mundo en declive.', 2014, 99, 'Wes Anderson', 'Wes Anderson, Hugo Guinness', 'R', 'posters/ElGranHotelBudapest.jpg', 'El Gran Hotel Budapest', NULL, NULL, 8.4, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(59, 'Black Panther', 'pelicula', 'Wakanda por siempre', 'T’Challa, el nuevo rey de Wakanda, debe proteger su nación tecnológicamente avanzada de amenazas internas y externas tras la muerte de su padre. Como Black Panther, enfrenta a un rival que desafía su liderazgo y los secretos del reino. Esta épica de superhéroes combina acción, cultura africana y temas de identidad, ofreciendo un vibrante homenaje al legado y la responsabilidad.', 2018, 134, 'Ryan Coogler', 'Ryan Coogler, Joe Robert Cole', 'PG-13', 'posters/Black Panther.jpg', 'Black Panther', NULL, NULL, 8, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(60, 'El Gran Pez', 'pelicula', 'Una vida de historias', 'Will Bloom intenta descifrar la verdad detrás de las fantásticas historias de su padre, Edward, un hombre cuya vida está llena de relatos extraordinarios. A través de cuentos de gigantes, brujas y amores épicos, esta fábula de Tim Burton explora la relación entre padre e hijo, la magia de la narrativa y la búsqueda de significado en una vida llena de imaginación.', 2003, 125, 'Tim Burton', 'John August', 'PG-13', 'posters/El_Gran_Pez_-_Poster.webp', 'El Gran Pez', NULL, NULL, 8.2, 0, '2025-05-26 13:13:04.000000', '2025-05-26 13:13:04.000000', 1),
(61, 'Game of Thrones', 'serie', 'El invierno se acerca', 'En Westeros, las casas nobles luchan por el Trono de Hierro mientras una antigua amenaza, los Caminantes Blancos, emerge del Norte. Intrigas, batallas y traiciones definen esta épica saga de poder y destino.', 2011, 60, 'David Benioff', 'David Benioff, D.B. Weiss', 'TV-MA', 'posters/GameOfThrones.jpg', 'Game of Thrones', NULL, NULL, 9.3, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(62, 'Breaking Bad', 'serie', 'De maestro a capo', 'Walter White, un profesor de química con cáncer, se convierte en un narcotraficante para asegurar el futuro de su familia. Su alianza con un exalumno desata una espiral de crimen y consecuencias morales.', 2008, 47, 'Vince Gilligan', 'Vince Gilligan', 'TV-MA', 'posters/BreakingBad.jpg', 'Breaking Bad', NULL, NULL, 9.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(63, 'Stranger Things', 'serie', 'Lo extraño acecha', 'En los 80, un grupo de amigos en Hawkins enfrenta fenómenos sobrenaturales vinculados a un laboratorio secreto. Mientras buscan a su amigo perdido, descubren conspiraciones y un mundo invertido.', 2016, 50, 'The Duffer Brothers', 'The Duffer Brothers', 'TV-14', 'posters/StrangerThings.jpg', 'Stranger Things', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(64, 'The Sopranos', 'serie', 'La familia es todo', 'Tony Soprano, un jefe de la mafia de Nueva Jersey, equilibra su vida criminal con problemas familiares y terapia. Este drama explora el poder, la lealtad y los conflictos internos de un mafioso moderno.', 1999, 55, 'David Chase', 'David Chase', 'TV-MA', 'posters/TheSopranos.jpg', 'The Sopranos', NULL, NULL, 9.2, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(65, 'The Wire', 'serie', 'La ciudad sin escapatoria', 'En Baltimore, policías y traficantes se enfrentan en un juego de poder donde las líneas entre el bien y el mal se difuminan. Este drama crudo explora el crimen, la educación y la corrupción sistémica.', 2002, 60, 'David Simon', 'David Simon', 'TV-MA', 'posters/TheWire.jpg', 'The Wire', NULL, NULL, 9.3, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(66, 'Better Call Saul', 'serie', 'Antes de Breaking Bad', 'Saul Goodman, antes de ser el abogado de Walter White, es un abogado en apuros que se transforma en un astuto defensor del crimen. Este spin-off mezcla drama, humor y dilemas éticos.', 2015, 46, 'Vince Gilligan', 'Vince Gilligan, Peter Gould', 'TV-MA', 'posters/BetterCallSaul.jpg', 'Better Call Saul', NULL, NULL, 8.9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(67, 'Westworld', 'serie', '¿Qué es real?', 'En un parque temático futurista, androides con conciencia desafían a sus creadores, desatando un conflicto entre humanidad y tecnología. Este thriller de ciencia ficción explora la libertad y la moralidad.', 2016, 60, 'Jonathan Nolan', 'Jonathan Nolan, Lisa Joy', 'TV-MA', 'posters/Westworld.jpg', 'Westworld', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(68, 'The Crown', 'serie', 'El peso de la corona', 'La reina Isabel II enfrenta desafíos políticos y personales mientras lidera la monarquía británica a través de décadas de cambios. Este drama histórico explora el poder, el deber y las dinámicas familiares.', 2016, 55, 'Peter Morgan', 'Peter Morgan', 'TV-MA', 'posters/TheCrown.jpg', 'The Crown', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(69, 'True Detective', 'serie', 'La verdad está en las sombras', 'Detectives investigan crímenes oscuros que revelan conspiraciones y traumas personales. Cada temporada ofrece una nueva historia de misterio, con personajes complejos y una atmósfera inquietante.', 2014, 60, 'Nic Pizzolatto', 'Nic Pizzolatto', 'TV-MA', 'posters/TrueDetective.jpg', 'True Detective', NULL, NULL, 8.9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(70, 'Fargo', 'serie', 'El crimen nunca es simple', 'Historias de crímenes excéntricos en el Medio Oeste americano, inspiradas en la película de los Coen. Cada temporada mezcla humor negro, violencia y personajes inolvidables en un mosaico de caos.', 2014, 50, 'Noah Hawley', 'Noah Hawley', 'TV-MA', 'posters/Fargo.jpg', 'Fargo', NULL, NULL, 8.9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(71, 'Succession', 'serie', 'La familia lo es todo', 'La familia Roy, dueña de un imperio mediático, lucha por el control en un juego de traiciones y ambiciones. Este drama satírico explora el poder, la riqueza y las dinámicas familiares disfuncionales.', 2018, 60, 'Jesse Armstrong', 'Jesse Armstrong', 'TV-MA', 'posters/Succession.jpg', 'Succession', NULL, NULL, 8.8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(72, 'The Mandalorian', 'serie', 'Un cazarrecompensas, un destino', 'Un cazarrecompensas solitario en el universo de Star Wars protege a un misterioso bebé Yoda mientras enfrenta enemigos y descubre su propósito. Esta aventura combina acción y mitología galáctica.', 2019, 40, 'Jon Favreau', 'Jon Favreau', 'TV-PG', 'posters/TheMandalorian.jpg', 'The Mandalorian', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(73, 'The Office', 'serie', 'La vida en la oficina', 'En la sucursal de Dunder Mifflin, empleados excéntricos enfrentan la rutina con humor y caos. Esta comedia mockumentary celebra las dinámicas laborales y las conexiones humanas con ingenio.', 2005, 22, 'Greg Daniels', 'Greg Daniels', 'TV-14', 'posters/TheOffice.jpg', 'The Office', NULL, NULL, 9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(74, 'Friends', 'serie', 'Siempre estarán ahí', 'Seis amigos en Nueva York enfrentan amores, trabajos y la vida diaria con humor y corazón. Esta icónica comedia captura la amistad y las risas en un mundo de relaciones y sueños.', 1994, 22, 'David Crane', 'David Crane, Marta Kauffman', 'TV-PG', 'posters/Friends.jpg', 'Friends', NULL, NULL, 8.9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(75, 'The Simpsons', 'serie', 'La familia que nunca cambia', 'Los Simpson, una familia disfuncional de Springfield, enfrentan aventuras absurdas y sátiras de la vida americana. Esta serie animada es un ícono cultural lleno de humor y crítica social.', 1989, 22, 'Matt Groening', 'Matt Groening', 'TV-PG', 'posters/TheSimpsons.jpg', 'The Simpsons', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(76, 'House of the Dragon', 'serie', 'El fuego reinará', 'La dinastía Targaryen enfrenta intrigas y guerras civiles por el control del Trono de Hierro. Este spin-off de Game of Thrones combina dragones, ambición y traiciones en un mundo épico.', 2022, 60, 'Ryan Condal', 'Ryan Condal', 'TV-MA', 'posters/HouseOfTheDragon.jpg', 'House of the Dragon', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(77, 'Lost', 'serie', 'El misterio te encuentra', 'Supervivientes de un accidente aéreo en una isla misteriosa enfrentan fenómenos extraños y secretos personales. Este drama de ciencia ficción mezcla supervivencia, mitología y giros inesperados.', 2004, 45, 'J.J. Abrams', 'J.J. Abrams, Damon Lindelof', 'TV-14', 'posters/Lost.jpg', 'Lost', NULL, NULL, 8.3, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(78, 'Mad Men', 'serie', 'La imagen lo es todo', 'En la Nueva York de los 60, Don Draper, un publicista brillante pero atormentado, navega la industria de la publicidad y su vida personal. Este drama explora la ambición, la identidad y el cambio social.', 2007, 47, 'Matthew Weiner', 'Matthew Weiner', 'TV-MA', 'posters/MadMen.jpg', 'Mad Men', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(79, 'The Walking Dead', 'serie', 'Sobrevive o muere', 'En un mundo postapocalíptico, Rick Grimes lidera a un grupo de supervivientes contra zombis y amenazas humanas. Este drama de terror explora la supervivencia, la moralidad y la humanidad en crisis.', 2010, 45, 'Frank Darabont', 'Frank Darabont', 'TV-MA', 'posters/TheWalkingDead.jpg', 'The Walking Dead', NULL, NULL, 8.2, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(80, 'Black Mirror', 'serie', 'El futuro es ahora', 'Cada episodio explora un futuro distópico donde la tecnología transforma la sociedad de formas inquietantes. Esta antología de ciencia ficción combina sátira, suspense y reflexiones sobre la humanidad.', 2011, 60, 'Charlie Brooker', 'Charlie Brooker', 'TV-MA', 'posters/BlackMirror.jpg', 'Black Mirror', NULL, NULL, 8.8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(81, 'Sherlock', 'serie', 'La mente es el arma', 'Sherlock Holmes y John Watson resuelven crímenes en el Londres moderno con ingenio y tecnología. Este drama detectivesco reimagina el clásico con giros brillantes y personajes carismáticos.', 2010, 90, 'Mark Gatiss', 'Mark Gatiss, Steven Moffat', 'TV-14', 'posters/Sherlock.jpg', 'Sherlock', NULL, NULL, 9.1, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(82, 'The Witcher', 'serie', 'El destino los une', 'Geralt de Rivia, un cazador de monstruos, se cruza con una hechicera y una princesa en un mundo de magia y peligro. Esta épica fantástica explora el destino, el poder y la lucha por el equilibrio.', 2019, 60, 'Lauren Schmidt Hissrich', 'Lauren Schmidt Hissrich', 'TV-MA', 'posters/TheWitcher.jpg', 'The Witcher', NULL, NULL, 8.2, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(83, 'Narcos', 'serie', 'El poder tiene un precio', 'La historia del ascenso y caída de los carteles de droga colombianos, centrada en Pablo Escobar y los agentes que lo persiguen. Este drama combina crimen, política y tensión en un relato implacable.', 2015, 50, 'Chris Brancato', 'Chris Brancato', 'TV-MA', 'posters/Narcos.jpg', 'Narcos', NULL, NULL, 8.8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(84, 'The Boys', 'serie', 'Los héroes no siempre son buenos', 'En un mundo donde los superhéroes son corruptos, un grupo de vigilantes lucha para exponer sus crímenes. Esta sátira de acción combina violencia, humor negro y críticas al poder y la fama.', 2019, 60, 'Eric Kripke', 'Eric Kripke', 'TV-MA', 'posters/TheBoys.jpg', 'The Boys', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(85, 'Ozark', 'serie', 'El dinero lo cambia todo', 'Marty Byrde, un asesor financiero, traslada a su familia a los Ozarks para lavar dinero para un cartel. Este thriller explora el crimen, la familia y las decisiones desesperadas en un mundo peligroso.', 2017, 60, 'Bill Dubuque', 'Bill Dubuque', 'TV-MA', 'posters/Ozark.jpg', 'Ozark', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(86, 'Chernobyl', 'serie', 'La verdad tiene un costo', 'Tras el desastre nuclear de Chernobyl, científicos y funcionarios arriesgan todo para contener la catástrofe. Este drama histórico recrea los eventos con intensidad, mostrando el sacrificio y el encubrimiento.', 2019, 65, 'Craig Mazin', 'Craig Mazin', 'TV-MA', 'posters/Chernobyl.jpg', 'Chernobyl', NULL, NULL, 9.4, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1);
INSERT INTO `contenidos` (`id_contenido`, `titulo`, `pelicula_serie`, `eslogan`, `sinopsis`, `año_estreno`, `duracion`, `director`, `guionistas`, `clasificacion`, `imagen_poster`, `alt_imagen_poster`, `imagen_fondo`, `alt_imagen_fondo`, `puntuacion`, `es_exclusivo`, `fecha_edicion`, `fecha_creacion`, `creador_id`) VALUES
(87, 'The Queen’s Gambit', 'serie', 'El jaque mate es solo el comienzo', 'Beth Harmon, una joven prodigio del ajedrez, enfrenta adicciones y sexismo mientras asciende en un mundo dominado por hombres. Este drama combina intensidad emocional y una historia de superación.', 2020, 60, 'Scott Frank', 'Scott Frank', 'TV-MA', 'posters/TheQueensGambit.jpg', 'The Queen’s Gambit', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(88, 'Mindhunter', 'serie', 'Dentro de la mente criminal', 'En los 70, agentes del FBI desarrollan técnicas de perfilación psicológica entrevistando a asesinos en serie. Este thriller explora la oscuridad de la mente humana y los inicios de la criminología moderna.', 2017, 60, 'Joe Penhall', 'Joe Penhall', 'TV-MA', 'posters/Mindhunter.jpg', 'Mindhunter', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(89, 'The Handmaid’s Tale', 'serie', 'Bajo su ojo', 'En una distopía donde las mujeres son subyugadas, June lucha por sobrevivir y encontrar a su hija en un régimen totalitario. Este drama explora la opresión, la resistencia y la esperanza en un mundo oscuro.', 2017, 50, 'Bruce Miller', 'Bruce Miller', 'TV-MA', 'posters/TheHandmaidsTale.jpg', 'The Handmaid’s Tale', NULL, NULL, 8.4, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(90, 'Vikings', 'serie', 'La leyenda comienza', 'Ragnar Lothbrok, un guerrero vikingo, lidera incursiones y explora nuevos mundos mientras enfrenta traiciones y dioses. Esta épica histórica combina acción, mitología y dramas familiares.', 2013, 45, 'Michael Hirst', 'Michael Hirst', 'TV-MA', 'posters/Vikings.jpg', 'Vikings', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(91, 'Peaky Blinders', 'serie', 'Por orden de los Peaky Blinders', 'En Birmingham post Primera Guerra Mundial, la familia Shelby lidera una banda criminal con ambiciones de poder. Este drama combina crimen, política y traiciones en un mundo de gánsteres.', 2013, 60, 'Steven Knight', 'Steven Knight', 'TV-MA', 'posters/PeakyBlinders.jpg', 'Peaky Blinders', NULL, NULL, 8.8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(92, 'The Last of Us', 'serie', 'El amor en el fin del mundo', 'En un mundo devastado por un hongo, Joel y Ellie, una adolescente inmune, cruzan un Estados Unidos postapocalíptico. Este drama explora la supervivencia, el vínculo humano y la esperanza en la desesperación.', 2023, 60, 'Craig Mazin', 'Craig Mazin, Neil Druckmann', 'TV-MA', 'posters/TheLastOfUs.jpg', 'The Last of Us', NULL, NULL, 8.8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(93, 'Euphoria', 'serie', 'La vida es un caos', 'Un grupo de adolescentes navega el amor, las adicciones y la identidad en un mundo hiperconectado. Este drama crudo explora los desafíos de la juventud con una estética audaz y emociones intensas.', 2019, 60, 'Sam Levinson', 'Sam Levinson', 'TV-MA', 'posters/Euphoria.jpg', 'Euphoria', NULL, NULL, 8.4, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(94, 'Yellowstone', 'serie', 'La tierra es la guerra', 'La familia Dutton protege su rancho en Montana contra desarrolladores, políticos y enemigos. Este drama moderno combina intrigas familiares, poder y conflictos territoriales en un Oeste contemporáneo.', 2018, 60, 'Taylor Sheridan', 'Taylor Sheridan', 'TV-MA', 'posters/Yellowstone.jpg', 'Yellowstone', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(95, 'Ted Lasso', 'serie', 'La bondad siempre gana', 'Ted Lasso, un entrenador de fútbol americano, lidera un equipo de fútbol inglés con optimismo y corazón. Esta comedia explora la empatía, el liderazgo y la superación en un mundo competitivo.', 2020, 30, 'Jason Sudeikis', 'Jason Sudeikis, Bill Lawrence', 'TV-MA', 'posters/TedLasso.jpg', 'Ted Lasso', NULL, NULL, 8.8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(96, 'House M.D.', 'serie', 'Todos mienten', 'El Dr. Gregory House, un médico brillante pero excéntrico, resuelve casos médicos complejos con métodos poco convencionales. Este drama combina misterio, humor y dilemas éticos en un hospital.', 2004, 45, 'David Shore', 'David Shore', 'TV-14', 'posters/HouseMD.jpg', 'House M.D.', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(97, 'Dexter', 'serie', 'El asesino con código', 'Dexter Morgan, un forense que es secretamente un asesino en serie, mata a criminales que escapan de la justicia. Este thriller psicológico explora la moralidad, la identidad y el control en un mundo oscuro.', 2006, 55, 'Jeff Dunham', 'Jeff Dunham', 'TV-MA', 'posters/Dexter.jpg', 'Dexter', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(98, 'The Big Bang Theory', 'serie', 'La ciencia de la amistad', 'Un grupo de científicos brillantes pero socialmente torpes enfrenta la vida, el amor y la amistad. Esta comedia celebra la inteligencia y las conexiones humanas con humor y corazón.', 2007, 22, 'Chuck Lorre', 'Chuck Lorre, Bill Prady', 'TV-PG', 'posters/TheBigBangTheory.jpg', 'The Big Bang Theory', NULL, NULL, 8.1, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(99, 'Modern Family', 'serie', 'La familia es un caos', 'Tres familias interconectadas enfrentan la vida moderna con humor y amor. Esta comedia mockumentary explora la diversidad, las relaciones y los retos de la familia en un mundo cambiante.', 2009, 22, 'Christopher Lloyd', 'Christopher Lloyd, Steven Levitan', 'TV-PG', 'posters/ModernFamily.jpg', 'Modern Family', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(100, 'The West Wing', 'serie', 'El poder detrás del poder', 'El presidente de EE.UU. y su equipo enfrentan crisis políticas y personales en la Casa Blanca. Este drama combina diálogos brillantes, idealismo y los retos del liderazgo en un mundo complejo.', 1999, 45, 'Aaron Sorkin', 'Aaron Sorkin', 'TV-14', 'posters/TheWestWing.jpg', 'The West Wing', NULL, NULL, 8.9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(101, 'Boardwalk Empire', 'serie', 'El crimen reina', 'En Atlantic City durante la Prohibición, Nucky Thompson lidera un imperio criminal mientras enfrenta rivales y el gobierno. Este drama histórico combina ambición, traición y el glamour de los años 20.', 2010, 55, 'Terence Winter', 'Terence Winter', 'TV-MA', 'posters/BoardwalkEmpire.jpg', 'Boardwalk Empire', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(102, 'Sons of Anarchy', 'serie', 'La lealtad es todo', 'Jax Teller, líder de un club de motociclistas, enfrenta conflictos internos y externos mientras protege a su familia y su legado. Este drama explora el crimen, la lealtad y la redención en un mundo brutal.', 2008, 45, 'Kurt Sutter', 'Kurt Sutter', 'TV-MA', 'posters/SonsOfAnarchy.jpg', 'Sons of Anarchy', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(103, 'The Expanse', 'serie', 'El universo es el límite', 'En un futuro donde la humanidad coloniza el sistema solar, un detective, un capitán y una diplomática descubren una conspiración que amenaza la paz. Esta épica de ciencia ficción combina política y acción.', 2015, 45, 'Mark Fergus', 'Mark Fergus, Hawk Ostby', 'TV-14', 'posters/TheExpanse.jpg', 'The Expanse', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(104, 'Downton Abbey', 'serie', 'La tradición frente al cambio', 'La familia Crawley y sus sirvientes navegan la vida en una mansión inglesa durante el siglo XX. Este drama histórico explora el amor, la clase y los cambios sociales con elegancia y emoción.', 2010, 50, 'Julian Fellowes', 'Julian Fellowes', 'TV-PG', 'posters/DowntonAbbey.jpg', 'Downton Abbey', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(105, 'Atlanta', 'serie', 'La vida es un escenario', 'Earn y su primo Alfred, un rapero en ascenso, enfrentan la vida y la fama en Atlanta. Esta comedia dramática combina surrealismo, humor y comentarios sociales sobre la raza y la cultura.', 2016, 30, 'Donald Glover', 'Donald Glover', 'TV-MA', 'posters/Atlanta.jpg', 'Atlanta', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(106, 'Hannibal', 'serie', 'El depredador perfecto', 'Will Graham, un profiler del FBI, colabora con el psiquiatra Hannibal Lecter para atrapar asesinos. Este thriller psicológico explora la mente criminal y la oscuridad con una estética hipnótica.', 2013, 45, 'Bryan Fuller', 'Bryan Fuller', 'TV-MA', 'posters/Hannibal.jpg', 'Hannibal', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(107, 'Fleabag', 'serie', 'La vida es un desastre', 'Una joven londinense enfrenta la vida, el amor y la familia con humor y caos. Esta comedia dramática, narrada con ingenio y ruptura de la cuarta pared, explora la vulnerabilidad y la autenticidad.', 2016, 25, 'Phoebe Waller-Bridge', 'Phoebe Waller-Bridge', 'TV-MA', 'posters/Fleabag.jpg', 'Fleabag', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(108, 'The Good Place', 'serie', 'El paraíso no es lo que parece', 'Eleanor, una mujer egoísta, llega por error a un paraíso utópico tras su muerte. Este drama cómico explora la moralidad, la redención y la filosofía con humor y giros inesperados.', 2016, 25, 'Michael Schur', 'Michael Schur', 'TV-PG', 'posters/TheGoodPlace.jpg', 'The Good Place', NULL, NULL, 8.2, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(109, 'This Is Us', 'serie', 'La vida nos conecta', 'La familia Pearson enfrenta alegrías y tragedias a través de generaciones. Este drama emocional explora el amor, la pérdida y las conexiones humanas con una narrativa conmovedora y no lineal.', 2016, 45, 'Dan Fogelman', 'Dan Fogelman', 'TV-14', 'posters/ThisIsUs.jpg', 'This Is Us', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(110, 'Your Honor', 'serie', 'La justicia tiene un precio', 'Un juez respetado arriesga todo para proteger a su hijo tras un accidente que involucra a una familia criminal. Este thriller legal explora la moralidad, la lealtad y las consecuencias de las decisiones.', 2020, 60, 'Peter Moffat', 'Peter Moffat', 'TV-MA', 'posters/YourHonor.jpg', 'Your Honor', NULL, NULL, 7.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(111, 'Loki', 'serie', 'El dios del engaño', 'Loki, el dios asgardiano, navega el multiverso tras robar el Tesseract. Esta serie de Marvel combina aventura, humor y caos cósmico mientras explora la identidad y el destino.', 2021, 50, 'Michael Waldron', 'Michael Waldron', 'TV-14', 'posters/Loki.jpg', 'Loki', NULL, NULL, 8.2, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(112, 'Arcane', 'serie', 'El poder divide', 'En las ciudades de Piltover y Zaun, las hermanas Vi y Powder enfrentan un mundo de magia y tecnología. Esta serie animada, basada en League of Legends, combina acción y drama emocional.', 2021, 40, 'Christian Linke', 'Christian Linke', 'TV-14', 'posters/Arcane.jpg', 'Arcane', NULL, NULL, 9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(113, 'The Haunting of Hill House', 'serie', 'El pasado nunca muere', 'La familia Crain enfrenta los horrores de su infancia en una mansión embrujada. Este drama de terror mezcla fantasmas, trauma y relaciones familiares en una narrativa emocional y aterradora.', 2018, 55, 'Mike Flanagan', 'Mike Flanagan', 'TV-MA', 'posters/TheHauntingOfHillHouse.jpg', 'The Haunting of Hill House', NULL, NULL, 8.6, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(114, 'Bridgerton', 'serie', 'El amor escandaliza', 'En la Inglaterra del siglo XIX, los hermanos Bridgerton buscan amor y estatus en una sociedad llena de intrigas. Esta serie romántica combina drama, pasión y un estilo visual vibrante.', 2020, 60, 'Chris Van Dusen', 'Chris Van Dusen', 'TV-MA', 'posters/Bridgerton.jpg', 'Bridgerton', NULL, NULL, 7.4, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(115, 'The Umbrella Academy', 'serie', 'Héroes disfuncionales', 'Una familia de superhéroes adoptivos se reúne para prevenir el apocalipsis mientras enfrenta su pasado. Esta serie combina acción, humor y drama familiar en un mundo de poderes y caos.', 2019, 50, 'Steve Blackman', 'Steve Blackman', 'TV-14', 'posters/TheUmbrellaAcademy.jpg', 'The Umbrella Academy', NULL, NULL, 8, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(116, 'Cobra Kai', 'serie', 'El karate nunca muere', 'Décadas después de Karate Kid, Daniel LaRusso y Johnny Lawrence reavivan su rivalidad mientras entrenan a una nueva generación. Esta serie combina acción, nostalgia y redención con humor.', 2018, 30, 'Jon Hurwitz', 'Jon Hurwitz, Hayden Schlossberg', 'TV-14', 'posters/CobraKai.jpg', 'Cobra Kai', NULL, NULL, 8.5, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(117, 'The Morning Show', 'serie', 'La verdad en pantalla', 'Periodistas de un programa matutino enfrentan escándalos, ambiciones y dilemas éticos en un mundo mediático competitivo. Este drama explora el poder, la fama y la verdad con actuaciones estelares.', 2019, 60, 'Jay Carson', 'Jay Carson', 'TV-MA', 'posters/TheMorningShow.jpg', 'The Morning Show', NULL, NULL, 8.4, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(118, 'Yellowjackets', 'serie', 'La supervivencia tiene secretos', 'Tras un accidente aéreo, un equipo de fútbol femenino lucha por sobrevivir en la naturaleza. Décadas después, los supervivientes enfrentan los ecos de su pasado. Este thriller mezcla misterio y drama.', 2021, 60, 'Ashley Lyle', 'Ashley Lyle, Bart Nickerson', 'TV-MA', 'posters/Yellowjackets.jpg', 'Yellowjackets', NULL, NULL, 7.9, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(119, 'Severance', 'serie', 'El trabajo no es tu vida', 'Empleados de una corporación usan una tecnología que separa sus recuerdos laborales y personales. Cuando un misterio surge, cuestionan su realidad. Este thriller psicológico explora la identidad y el control.', 2022, 50, 'Dan Erickson', 'Dan Erickson', 'TV-MA', 'posters/Severance.jpg', 'Severance', NULL, NULL, 8.7, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1),
(120, 'Andor', 'serie', 'La chispa de la rebelión', 'Cassian Andor, un espía rebelde, enfrenta misiones peligrosas contra el Imperio en el universo de Star Wars. Este drama explora el sacrificio y la resistencia en una galaxia oprimida.', 2022, 45, 'Tony Gilroy', 'Tony Gilroy', 'TV-14', 'posters/Andor.jpg', 'Andor', NULL, NULL, 8.4, 0, '2025-05-26 13:13:12.000000', '2025-05-26 13:13:12.000000', 1);

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
(1, 1, 1, 3),
(2, 1, 1, 2),
(3, 1, 1, 5),
(4, 1, 1, 1),
(5, 1, 2, 1),
(6, 1, 2, 3),
(7, 1, 2, 2),
(8, 1, 2, 5),
(9, 1, 3, 9),
(10, 1, 3, 4),
(11, 1, 3, 16),
(12, 1, 4, 3),
(13, 1, 4, 2),
(14, 1, 4, 1),
(15, 1, 4, 5),
(16, 1, 5, 3),
(17, 1, 5, 2),
(18, 1, 5, 1),
(19, 1, 5, 8),
(20, 1, 6, 10),
(21, 1, 6, 2),
(22, 1, 6, 4),
(23, 1, 6, 12),
(24, 1, 7, 1),
(25, 1, 7, 3),
(26, 1, 7, 2),
(27, 1, 8, 1),
(28, 1, 8, 2),
(29, 1, 8, 13),
(30, 1, 9, 10),
(31, 1, 9, 2),
(32, 1, 9, 5),
(33, 1, 9, 12),
(34, 1, 10, 9),
(35, 1, 10, 5),
(36, 1, 10, 12),
(37, 1, 11, 3),
(38, 1, 11, 2),
(39, 1, 11, 5),
(40, 1, 12, 4),
(41, 1, 12, 16),
(42, 1, 12, 18),
(43, 1, 13, 4),
(44, 1, 13, 3),
(45, 1, 13, 9),
(46, 1, 14, 4),
(47, 1, 14, 3),
(48, 1, 14, 8),
(49, 1, 15, 4),
(50, 1, 15, 19),
(51, 1, 15, 9),
(52, 1, 16, 3),
(53, 1, 16, 1),
(54, 1, 16, 2),
(55, 1, 17, 1),
(56, 1, 17, 3),
(57, 1, 17, 2),
(58, 1, 18, 5),
(59, 1, 18, 6),
(60, 1, 18, 4),
(61, 1, 19, 4),
(62, 1, 19, 8),
(63, 1, 19, 14),
(64, 1, 20, 4),
(65, 1, 20, 16),
(66, 1, 20, 15),
(67, 1, 21, 1),
(68, 1, 21, 3),
(69, 1, 21, 2),
(70, 1, 22, 4),
(71, 1, 22, 13),
(72, 1, 22, 16),
(73, 1, 23, 10),
(74, 1, 23, 6),
(75, 1, 23, 4),
(76, 1, 24, 5),
(77, 1, 24, 12),
(78, 1, 24, 6),
(79, 1, 25, 1),
(80, 1, 25, 3),
(81, 1, 25, 2),
(82, 1, 26, 4),
(83, 1, 26, 13),
(84, 1, 26, 14),
(85, 1, 27, 4),
(86, 1, 27, 8),
(87, 1, 27, 13),
(88, 1, 28, 1),
(89, 1, 28, 10),
(90, 1, 28, 2),
(91, 1, 29, 3),
(92, 1, 29, 6),
(93, 1, 29, 4),
(94, 1, 30, 1),
(95, 1, 30, 4),
(96, 1, 30, 2),
(97, 1, 31, 4),
(98, 1, 31, 13),
(99, 1, 31, 18),
(100, 1, 32, 3),
(101, 1, 32, 8),
(102, 1, 32, 1),
(103, 1, 33, 1),
(104, 1, 33, 13),
(105, 1, 33, 14),
(106, 1, 34, 3),
(107, 1, 34, 4),
(108, 1, 34, 2),
(109, 1, 35, 4),
(110, 1, 35, 14),
(111, 1, 35, 8),
(112, 1, 36, 4),
(113, 1, 36, 13),
(114, 1, 36, 6),
(115, 1, 37, 4),
(116, 1, 37, 13),
(117, 1, 38, 4),
(118, 1, 38, 13),
(119, 1, 39, 4),
(120, 1, 39, 9),
(121, 1, 39, 18),
(122, 1, 40, 5),
(123, 1, 40, 2),
(124, 1, 40, 1),
(125, 1, 41, 3),
(126, 1, 41, 1),
(127, 1, 41, 20),
(128, 1, 42, 1),
(129, 1, 42, 16),
(130, 1, 42, 4),
(131, 1, 43, 8),
(132, 1, 43, 13),
(133, 1, 43, 14),
(134, 1, 44, 15),
(135, 1, 44, 16),
(136, 1, 44, 4),
(137, 1, 45, 10),
(138, 1, 45, 12),
(139, 1, 45, 2),
(140, 1, 46, 3),
(141, 1, 46, 2),
(142, 1, 46, 6),
(143, 1, 47, 14),
(144, 1, 47, 8),
(145, 1, 47, 13),
(146, 1, 48, 3),
(147, 1, 48, 8),
(148, 1, 48, 2),
(149, 1, 49, 16),
(150, 1, 49, 18),
(151, 1, 49, 4),
(152, 1, 50, 4),
(153, 1, 50, 9),
(154, 1, 51, 13),
(155, 1, 51, 8),
(156, 1, 51, 4),
(157, 1, 52, 3),
(158, 1, 52, 2),
(159, 1, 52, 5),
(160, 1, 53, 1),
(161, 1, 53, 6),
(162, 1, 53, 3),
(163, 1, 54, 13),
(164, 1, 54, 8),
(165, 1, 54, 4),
(166, 1, 55, 12),
(167, 1, 55, 9),
(168, 1, 55, 4),
(169, 1, 56, 10),
(170, 1, 56, 12),
(171, 1, 56, 2),
(172, 1, 57, 3),
(173, 1, 57, 8),
(174, 1, 57, 4),
(175, 1, 58, 6),
(176, 1, 58, 13),
(177, 1, 58, 2),
(178, 1, 59, 1),
(179, 1, 59, 5),
(180, 1, 59, 3),
(181, 1, 60, 2),
(182, 1, 60, 6),
(183, 1, 60, 5),
(184, 1, 61, 5),
(185, 1, 61, 1),
(186, 1, 61, 4),
(187, 1, 62, 13),
(188, 1, 62, 4),
(189, 1, 62, 8),
(190, 1, 63, 3),
(191, 1, 63, 8),
(192, 1, 63, 2),
(193, 1, 64, 13),
(194, 1, 64, 4),
(195, 1, 65, 13),
(196, 1, 65, 4),
(197, 1, 66, 13),
(198, 1, 66, 4),
(199, 1, 66, 6),
(200, 1, 67, 3),
(201, 1, 67, 8),
(202, 1, 67, 4),
(203, 1, 68, 16),
(204, 1, 68, 4),
(205, 1, 68, 18),
(206, 1, 69, 13),
(207, 1, 69, 14),
(208, 1, 69, 8),
(209, 1, 70, 13),
(210, 1, 70, 6),
(211, 1, 70, 8),
(212, 1, 71, 4),
(213, 1, 71, 6),
(214, 1, 72, 3),
(215, 1, 72, 2),
(216, 1, 72, 1),
(217, 1, 73, 6),
(218, 1, 73, 9),
(219, 1, 74, 6),
(220, 1, 74, 9),
(221, 1, 75, 10),
(222, 1, 75, 6),
(223, 1, 76, 5),
(224, 1, 76, 4),
(225, 1, 76, 1),
(226, 1, 77, 14),
(227, 1, 77, 3),
(228, 1, 77, 4),
(229, 1, 78, 4),
(230, 1, 78, 16),
(231, 1, 79, 7),
(232, 1, 79, 4),
(233, 1, 79, 8),
(234, 1, 80, 3),
(235, 1, 80, 8),
(236, 1, 80, 4),
(237, 1, 81, 14),
(238, 1, 81, 4),
(239, 1, 81, 13),
(240, 1, 82, 5),
(241, 1, 82, 2),
(242, 1, 82, 1),
(243, 1, 83, 13),
(244, 1, 83, 4),
(245, 1, 83, 8),
(246, 1, 84, 1),
(247, 1, 84, 3),
(248, 1, 84, 6),
(249, 1, 85, 13),
(250, 1, 85, 8),
(251, 1, 85, 4),
(252, 1, 86, 16),
(253, 1, 86, 4),
(254, 1, 86, 8),
(255, 1, 87, 4),
(256, 1, 87, 18),
(257, 1, 88, 13),
(258, 1, 88, 8),
(259, 1, 88, 4),
(260, 1, 89, 3),
(261, 1, 89, 4),
(262, 1, 89, 8),
(263, 1, 90, 16),
(264, 1, 90, 1),
(265, 1, 90, 4),
(266, 1, 91, 13),
(267, 1, 91, 4),
(268, 1, 91, 16),
(269, 1, 92, 4),
(270, 1, 92, 3),
(271, 1, 92, 8),
(272, 1, 93, 4),
(273, 1, 93, 9),
(274, 1, 94, 4),
(275, 1, 94, 17),
(276, 1, 95, 6),
(277, 1, 95, 19),
(278, 1, 96, 4),
(279, 1, 96, 14),
(280, 1, 97, 13),
(281, 1, 97, 8),
(282, 1, 97, 4),
(283, 1, 98, 6),
(284, 1, 98, 9),
(285, 1, 99, 6),
(286, 1, 99, 9),
(287, 1, 100, 4),
(288, 1, 100, 8),
(289, 1, 101, 13),
(290, 1, 101, 4),
(291, 1, 101, 16),
(292, 1, 102, 13),
(293, 1, 102, 4),
(294, 1, 103, 3),
(295, 1, 103, 4),
(296, 1, 103, 8),
(297, 1, 104, 16),
(298, 1, 104, 4),
(299, 1, 105, 6),
(300, 1, 105, 4),
(301, 1, 106, 8),
(302, 1, 106, 13),
(303, 1, 106, 4),
(304, 1, 107, 6),
(305, 1, 107, 4),
(306, 1, 108, 6),
(307, 1, 108, 5),
(308, 1, 109, 4),
(309, 1, 109, 9),
(310, 1, 110, 8),
(311, 1, 110, 13),
(312, 1, 110, 4),
(313, 1, 111, 3),
(314, 1, 111, 2),
(315, 1, 111, 5),
(316, 1, 112, 10),
(317, 1, 112, 1),
(318, 1, 112, 3),
(319, 1, 113, 7),
(320, 1, 113, 4),
(321, 1, 113, 8),
(322, 1, 114, 9),
(323, 1, 114, 4),
(324, 1, 114, 16),
(325, 1, 115, 3),
(326, 1, 115, 1),
(327, 1, 115, 6),
(328, 1, 116, 1),
(329, 1, 116, 6),
(330, 1, 116, 19),
(331, 1, 117, 4),
(332, 1, 117, 8),
(333, 1, 118, 8),
(334, 1, 118, 4),
(335, 1, 118, 14),
(336, 1, 119, 8),
(337, 1, 119, 3),
(338, 1, 119, 4),
(339, 1, 120, 3),
(340, 1, 120, 1),
(341, 1, 120, 4);

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

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-05-27 07:16:06.561016', '1', 'Netflix', 1, '[{\"added\": {}}]', 22, 1),
(2, '2025-05-27 07:17:15.201017', '2', 'Disney', 1, '[{\"added\": {}}]', 22, 1);

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
(1, 'contenttypes', '0001_initial', '2025-05-26 11:12:40.752269'),
(2, 'auth', '0001_initial', '2025-05-26 11:12:40.854263'),
(3, 'admin', '0001_initial', '2025-05-26 11:12:40.890415'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-26 11:12:40.891269'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-26 11:12:40.898661'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-26 11:12:40.919102'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-26 11:12:40.934187'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-26 11:12:40.942042'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-26 11:12:40.946341'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-26 11:12:40.961866'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-26 11:12:40.961866'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-26 11:12:40.965866'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-26 11:12:40.974458'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-26 11:12:40.983032'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-26 11:12:40.988548'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-26 11:12:40.996848'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-26 11:12:41.002331'),
(18, 'base', '0001_initial', '2025-05-26 11:12:41.566743'),
(19, 'sessions', '0001_initial', '2025-05-26 11:12:41.582367');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q0hj0tkzl6lkj1g6mx2a0drjvq1udtjn', '.eJxVjE0OwiAYRO_C2hAoYKlL956BfH9I1dCktCvj3W2TLnQ3mfdm3irBupS0NpnTyOqirDr9dgj0lLoDfkC9T5qmuswj6l3RB236NrG8rof7d1CglW0dzy6QCxkwEuVMYgaOGZEMdOLCQF004pG3GFzvKfreCtjMxnnHEdXnCwsfOJQ:1uJVz7:9CvIsL8tgJa5_4Ak5oJFRgCAFwYxO0pz-kOVg2ouNVQ', '2025-06-09 11:27:13.079416');

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

--
-- Volcado de datos para la tabla `plataformas_streaming`
--

INSERT INTO `plataformas_streaming` (`id_plataforma`, `nombre_plataforma`, `imagen_logo_plataforma`, `alt_imagen_logo_plataforma`, `tipo_acceso`, `precio`, `creador_id`, `id_contenido_id`) VALUES
(1, 'Netflix', 'logos/Logo_Netflix.png', 'Logo NetFlix', 'Suscripcion', 0.00, 1, 1),
(2, 'Disney', 'logos/Logo_Disney.png', 'Logo Disney', 'Suscripcion', 0.00, 1, 1),
(3, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, NULL),
(4, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, NULL),
(5, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 1),
(6, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 1),
(7, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 2),
(8, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 3),
(9, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 4),
(10, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 5),
(11, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 6),
(12, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 7),
(13, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 7),
(14, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 8),
(15, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 9),
(16, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 10),
(17, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 11),
(18, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 12),
(19, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 13),
(20, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 14),
(21, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 15),
(22, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 16),
(23, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 17),
(24, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 18),
(25, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 18),
(26, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 19),
(27, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 20),
(28, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 21),
(29, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 22),
(30, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 23),
(31, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 24),
(32, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 25),
(33, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 26),
(34, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 27),
(35, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 28),
(36, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 29),
(37, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 30),
(38, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 31),
(39, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 32),
(40, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 32),
(41, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 33),
(42, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 34),
(43, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 35),
(44, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 36),
(45, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 37),
(46, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 38),
(47, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 39),
(48, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 40),
(49, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 41),
(50, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 41),
(51, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 42),
(52, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 43),
(53, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 44),
(54, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 45),
(55, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 46),
(56, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 47),
(57, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 48),
(58, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 49),
(59, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 50),
(60, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 51),
(61, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 52),
(62, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 53),
(63, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 54),
(64, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 55),
(65, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 56),
(66, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 57),
(67, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 58),
(68, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 59),
(69, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 60),
(70, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 61),
(71, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 62),
(72, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 63),
(73, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 64),
(74, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 65),
(75, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 66),
(76, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 67),
(77, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 68),
(78, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 69),
(79, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 70),
(80, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 71),
(81, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 72),
(82, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 73),
(83, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 74),
(84, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 75),
(85, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 76),
(86, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 77),
(87, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 78),
(88, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 79),
(89, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 80),
(90, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 81),
(91, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 82),
(92, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 83),
(93, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 84),
(94, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 85),
(95, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 86),
(96, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 87),
(97, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 88),
(98, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 89),
(99, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 90),
(100, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 91),
(101, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 92),
(102, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 93),
(103, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 94),
(104, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 95),
(105, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 96),
(106, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 97),
(107, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 98),
(108, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 99),
(109, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 100),
(110, 'HBO Max', 'logos/hbomax.jpg', 'Logo de HBO Max', 'suscripción', 9.99, 1, 101),
(111, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 102),
(112, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 103),
(113, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 104),
(114, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 105),
(115, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 106),
(116, 'Prime Video', 'logos/primevideo.jpg', 'Logo de Prime Video', 'suscripción', 9.99, 1, 107),
(117, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 108),
(118, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 109),
(119, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 110),
(120, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 111),
(121, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 112),
(122, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 113),
(123, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 114),
(124, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 115),
(125, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 116),
(126, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 117),
(127, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 118),
(128, 'Netflix', 'logos/netflix.jpg', 'Logo de Netflix', 'suscripción', 9.99, 1, 119),
(129, 'Disney+', 'logos/disneyplus.jpg', 'Logo de Disney+', 'suscripción', 9.99, 1, 120);

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
(25, 'Tony Stark / Iron Man', 1, 5, 7),
(26, 'Steve Rogers / Capitán América', 1, 6, 7),
(27, 'Bruce Banner / Hulk', 1, 44, 7),
(28, 'Thor', 1, 8, 7),
(29, 'Dominic Toretto', 1, 25, 8),
(30, 'Brian O\'Conner', 1, 26, 8),
(31, 'Luke Hobbs', 1, 27, 8),
(32, 'Letty Ortiz', 1, 28, 8),
(33, 'Elsa', 1, 29, 9),
(34, 'Anna', 1, 30, 9),
(35, 'Olaf', 1, 31, 9),
(36, 'Kristoff', 1, 32, 9),
(37, 'Bella', 1, 33, 10),
(38, 'Bestia', 1, 34, 10),
(39, 'Gaston', 1, 35, 10),
(40, 'LeFou', 1, 36, 10),
(41, 'Paul Atreides', 1, 36, 11),
(42, 'Chani', 1, 37, 11),
(43, 'Lady Jessica', 1, 38, 11),
(44, 'Gurney Halleck', 1, 39, 11),
(45, 'J. Robert Oppenheimer', 1, 40, 12),
(46, 'Kitty Oppenheimer', 1, 41, 12),
(47, 'Leslie Groves', 1, 42, 12),
(48, 'Lewis Strauss', 1, 48, 12),
(49, 'Bella Baxter', 1, 43, 13),
(50, 'Duncan Wedderburn', 1, 44, 13),
(51, 'Godwin Baxter', 1, 45, 13),
(52, 'Max McCandles', 1, 46, 13),
(53, 'Lee Smith', 1, 47, 14),
(54, 'Jessie', 1, 48, 14),
(55, 'Joel', 1, 49, 14),
(56, 'Sammy', 1, 50, 14),
(57, 'Tashi Duncan', 1, 37, 15),
(58, 'Art Donaldson', 1, 51, 15),
(59, 'Patrick Zweig', 1, 52, 15),
(60, 'Lily', 1, 53, 15),
(61, 'Noa', 1, 54, 16),
(62, 'Mae', 1, 55, 16),
(63, 'Proximus Caesar', 1, 56, 16),
(64, 'Raka', 1, 57, 16),
(65, 'Furiosa', 1, 58, 17),
(66, 'Dementus', 1, 181, 17),
(67, 'Praetorian Jack', 1, 59, 17),
(68, 'Rictus Erectus', 1, 60, 17),
(69, 'Barbie', 1, 61, 18),
(70, 'Ken', 1, 62, 18),
(71, 'Gloria', 1, 63, 18),
(72, 'Barbie Rara', 1, 64, 18),
(73, 'Sandra Voyter', 1, 65, 19),
(74, 'Vincent Renzi', 1, 66, 19),
(75, 'Daniel M.', 1, 67, 19),
(76, 'Abogado', 1, 68, 19),
(77, 'Rudolf Höss', 1, 69, 20),
(78, 'Hedwig Höss', 1, 70, 20),
(79, 'Inge', 1, 71, 20),
(80, 'SS Officer', 1, 72, 20),
(81, 'Ilene Andrews', 1, 72, 21),
(82, 'Bernie Hayes', 1, 73, 21),
(83, 'Trapper', 1, 74, 21),
(84, 'Jia', 1, 74, 21),
(85, 'Ernest Burkhart', 1, 9, 22),
(86, 'William Hale', 1, 45, 22),
(87, 'Mollie Burkhart', 1, 75, 22),
(88, 'Tom White', 1, 76, 22),
(89, 'Alegría', 1, 77, 23),
(90, 'Tristeza', 1, 78, 23),
(91, 'Furia', 1, 79, 23),
(92, 'Ansiedad', 1, 80, 23),
(93, 'Willy Wonka', 1, 36, 24),
(94, 'Oompa Loompa', 1, 81, 24),
(95, 'Señora Scrubitt', 1, 82, 24),
(96, 'Jefe de Policía', 1, 83, 24),
(97, 'Arthur Curry / Aquaman', 1, 84, 25),
(98, 'Orm', 1, 85, 25),
(99, 'Mera', 1, 86, 25),
(100, 'Black Manta', 1, 87, 25),
(101, 'Bruce Wayne / Batman', 1, 88, 26),
(102, 'Selina Kyle / Catwoman', 1, 89, 26),
(103, 'Edward Nashton / Enigma', 1, 90, 26),
(104, 'Oswald Cobblepot / Pingüino', 1, 91, 26),
(105, 'Kim Ki-taek', 1, 92, 27),
(106, 'Park Dong-ik', 1, 93, 27),
(107, 'Choi Yeon-gyo', 1, 94, 27),
(108, 'Kim Ki-woo', 1, 95, 27),
(109, 'Miles Morales', 1, 96, 28),
(110, 'Gwen Stacy', 1, 97, 28),
(111, 'Miguel O\'Hara', 1, 98, 28),
(112, 'Peter B. Parker', 1, 99, 28),
(113, 'Evelyn Wang', 1, 100, 29),
(114, 'Waymond Wang', 1, 101, 29),
(115, 'Joy Wang', 1, 102, 29),
(116, 'Gong Gong', 1, 103, 29),
(117, 'Pete \"Maverick\" Mitchell', 1, 104, 30),
(118, 'Bradley \"Rooster\" Bradshaw', 1, 105, 30),
(119, 'Penny Benjamin', 1, 106, 30),
(120, 'Cyclone', 1, 107, 30),
(121, 'Arthur Fleck / Joker', 1, 108, 31),
(122, 'Murray Franklin', 1, 242, 31),
(123, 'Sophie Dumond', 1, 109, 31),
(124, 'Penny Fleck', 1, 110, 31),
(125, 'Dom Cobb', 1, 9, 32),
(126, 'Arthur', 1, 111, 32),
(127, 'Ariadne', 1, 112, 32),
(128, 'Eames', 1, 113, 32),
(129, 'Bruce Wayne / Batman', 1, 114, 33),
(130, 'Joker', 1, 115, 33),
(131, 'Harvey Dent', 1, 116, 33),
(132, 'Rachel Dawes', 1, 117, 33),
(133, 'Cooper', 1, 118, 34),
(134, 'Brand', 1, 119, 34),
(135, 'Murph', 1, 120, 34),
(136, 'Profesor Brand', 1, 121, 34),
(137, 'Narrador', 1, 122, 35),
(138, 'Tyler Durden', 1, 123, 35),
(139, 'Marla Singer', 1, 124, 35),
(140, 'Robert Paulson', 1, 125, 35),
(141, 'Vincent Vega', 1, 126, 36),
(142, 'Jules Winnfield', 1, 127, 36),
(143, 'Mia Wallace', 1, 128, 36),
(144, 'Butch Coolidge', 1, 129, 36),
(145, 'Andy Dufresne', 1, 130, 37),
(146, 'Ellis Boyd \"Red\" Redding', 1, 131, 37),
(147, 'Warden Norton', 1, 132, 37),
(148, 'Heywood', 1, 133, 37),
(149, 'Vito Corleone', 1, 134, 38),
(150, 'Michael Corleone', 1, 135, 38),
(151, 'Sonny Corleone', 1, 136, 38),
(152, 'Kay Adams', 1, 137, 38),
(153, 'Forrest Gump', 1, 138, 39),
(154, 'Jenny Curran', 1, 139, 39),
(155, 'Teniente Dan', 1, 140, 39),
(156, 'Sra. Gump', 1, 141, 39),
(157, 'Frodo Bolsón', 1, 142, 40),
(158, 'Gandalf', 1, 143, 40),
(159, 'Aragorn', 1, 144, 40),
(160, 'Sam', 1, 145, 40),
(161, 'Neo', 1, 146, 41),
(162, 'Morpheus', 1, 147, 41),
(163, 'Trinity', 1, 148, 41),
(164, 'Agente Smith', 1, 149, 41),
(165, 'Máximo', 1, 150, 42),
(166, 'Cómodo', 1, 108, 42),
(167, 'Lucila', 1, 151, 42),
(168, 'Próximo', 1, 152, 42),
(169, 'David Mills', 1, 123, 43),
(170, 'William Somerset', 1, 131, 43),
(171, 'Tracy Mills', 1, 153, 43),
(172, 'John Doe', 1, 154, 43),
(173, 'Capitán Miller', 1, 138, 44),
(174, 'Soldado Ryan', 1, 42, 44),
(175, 'Sargento Horvath', 1, 155, 44),
(176, 'Reiben', 1, 156, 44),
(177, 'Simba (voz)', 1, 157, 45),
(178, 'Scar (voz)', 1, 158, 45),
(179, 'Mufasa (voz)', 1, 23, 45),
(180, 'Nala (voz)', 1, 159, 45),
(181, 'Marty McFly', 1, 160, 46),
(182, 'Doc Brown', 1, 161, 46),
(183, 'Lorraine Baines', 1, 162, 46),
(184, 'George McFly', 1, 163, 46),
(185, 'Clarice Starling', 1, 164, 47),
(186, 'Hannibal Lecter', 1, 165, 47),
(187, 'Jack Crawford', 1, 166, 47),
(188, 'Buffalo Bill', 1, 167, 47),
(189, 'Dr. Alan Grant', 1, 168, 48),
(190, 'Dr. Ellie Sattler', 1, 169, 48),
(191, 'Dr. Ian Malcolm', 1, 170, 48),
(192, 'John Hammond', 1, 171, 48),
(193, 'Oskar Schindler', 1, 172, 49),
(194, 'Itzhak Stern', 1, 173, 49),
(195, 'Amon Goeth', 1, 174, 49),
(196, 'Emilie Schindler', 1, 175, 49),
(197, 'Will Hunting', 1, 177, 50),
(198, 'Sean Maguire', 1, 176, 50),
(199, 'Chuckie Sullivan', 1, 177, 50),
(200, 'Gerald Lambeau', 1, 178, 50),
(201, 'Billy Costigan', 1, 177, 51),
(202, 'Colin Sullivan', 1, 42, 51),
(203, 'Frank Costello', 1, 179, 51),
(204, 'Dignam', 1, 180, 51),
(205, 'Jake Sully', 1, 1, 52),
(206, 'Neytiri', 1, 2, 52),
(207, 'Dr. Grace Augustine', 1, 3, 52),
(208, 'Coronel Miles Quaritch', 1, 4, 52),
(209, 'Deadpool', 1, 180, 53),
(210, 'Wolverine', 1, 181, 53),
(211, 'Villana', 1, 182, 53),
(212, 'Agente Paradox', 1, 183, 53),
(213, 'Llewelyn Moss', 1, 213, 54),
(214, 'Anton Chigurh', 1, 184, 54),
(215, 'Ed Tom Bell', 1, 185, 54),
(216, 'Carla Jean Moss', 1, 186, 54),
(217, 'Sebastian', 1, 187, 55),
(218, 'Mia', 1, 43, 55),
(219, 'Keith', 1, 188, 55),
(220, 'Laura', 1, 188, 55),
(221, 'Miguel (voz)', 1, 189, 56),
(222, 'Héctor (voz)', 1, 190, 56),
(223, 'Ernesto de la Cruz (voz)', 1, 191, 56),
(224, 'Mamá Imelda (voz)', 1, 192, 56),
(225, 'Ryan Stone', 1, 193, 57),
(226, 'Matt Kowalski', 1, 194, 57),
(227, 'Misión Control (voz)', 1, 195, 57),
(228, 'Aningaaq (voz)', 1, 196, 57),
(229, 'M. Gustave', 1, 199, 58),
(230, 'Zero Moustafa', 1, 197, 58),
(231, 'Agatha', 1, 198, 58),
(232, 'Dmitri', 1, 199, 58),
(233, 'T\'Challa / Black Panther', 1, 200, 59),
(234, 'Erik Killmonger', 1, 201, 59),
(235, 'Nakia', 1, 202, 59),
(236, 'Okoye', 1, 203, 59),
(237, 'Edward Bloom (joven)', 1, 204, 60),
(238, 'Edward Bloom (adulto)', 1, 205, 60),
(239, 'Will Bloom', 1, 206, 60),
(240, 'Sandra Bloom', 1, 207, 60),
(241, 'Daenerys Targaryen', 1, 208, 61),
(242, 'Jon Snow', 1, 209, 61),
(243, 'Tyrion Lannister', 1, 210, 61),
(244, 'Cersei Lannister', 1, 211, 61),
(245, 'Walter White', 1, 212, 62),
(246, 'Jesse Pinkman', 1, 213, 62),
(247, 'Skyler White', 1, 214, 62),
(248, 'Saul Goodman', 1, 215, 62),
(249, 'Eleven', 1, 216, 63),
(250, 'Mike Wheeler', 1, 217, 63),
(251, 'Joyce Byers', 1, 218, 63),
(252, 'Jim Hopper', 1, 219, 63),
(253, 'Tony Soprano', 1, 220, 64),
(254, 'Carmela Soprano', 1, 221, 64),
(255, 'Omar Little', 1, 222, 64),
(256, 'Jimmy McNulty', 1, 223, 64),
(257, 'Stringer Bell', 1, 222, 65),
(258, 'Bunk Moreland', 1, 223, 65),
(259, 'Lester Freamon', 1, 220, 65),
(260, 'Saul Goodman', 1, 215, 66),
(261, 'Mike Ehrmantraut', 1, 212, 66),
(262, 'Kim Wexler', 1, 213, 66),
(263, 'Dolores Abernathy', 1, 224, 67),
(264, 'Maeve Millay', 1, 225, 67),
(265, 'Bernard Lowe', 1, 226, 67),
(266, 'Queen Elizabeth II', 1, 226, 68),
(267, 'Queen Elizabeth II (older)', 1, 82, 68),
(268, 'Princess Margaret', 1, 124, 68),
(269, 'Rust Cohle', 1, 227, 69),
(270, 'Marty Hart', 1, 118, 69),
(271, 'Wayne Hays', 1, 227, 69),
(272, 'Lorne Malvo', 1, 228, 70),
(273, 'Lester Nygaard', 1, 227, 70),
(274, 'Molly Solverson', 1, 228, 70),
(275, 'Kendall Roy', 1, 229, 71),
(276, 'Shiv Roy', 1, 230, 71),
(277, 'Logan Roy', 1, 210, 71),
(278, 'The Mandalorian', 1, 231, 72),
(279, 'Cara Dune', 1, 208, 72),
(280, 'Greef Karga', 1, 209, 72),
(281, 'Michael Scott', 1, 232, 73),
(282, 'Pam Beesly', 1, 233, 73),
(283, 'Jim Halpert', 1, 234, 73),
(284, 'Rachel Green', 1, 234, 74),
(285, 'Monica Geller', 1, 235, 74),
(286, 'Ross Geller', 1, 232, 74),
(287, 'Homer Simpson', 1, 236, 75),
(288, 'Marge Simpson', 1, 237, 75),
(289, 'Bart Simpson', 1, 236, 75),
(290, 'Rhaenyra Targaryen', 1, 208, 76),
(291, 'Daemon Targaryen', 1, 209, 76),
(292, 'Alicent Hightower', 1, 211, 76),
(293, 'Kate Austen', 1, 218, 77),
(294, 'Jack Shephard', 1, 219, 77),
(295, 'John Locke', 1, 228, 77),
(296, 'Don Draper', 1, 107, 78),
(297, 'Peggy Olson', 1, 239, 78),
(298, 'Roger Sterling', 1, 232, 78),
(299, 'Rick Grimes', 1, 240, 79),
(300, 'Daryl Dixon', 1, 241, 79),
(301, 'Michonne', 1, 203, 79),
(302, 'Nessa Stein', 1, 117, 80),
(303, 'Charlie', 1, 217, 80),
(304, 'Hannah', 1, 218, 80),
(305, 'Sherlock Holmes', 1, 242, 81),
(306, 'John Watson', 1, 219, 81),
(307, 'Mycroft Holmes', 1, 239, 81),
(308, 'Geralt of Rivia', 1, 242, 82),
(309, 'Yennefer of Vengerberg', 1, 208, 82),
(310, 'Ciri', 1, 55, 82),
(311, 'Pablo Escobar', 1, 49, 83),
(312, 'Steve Murphy', 1, 222, 83),
(313, 'Javier Peña', 1, 231, 83),
(314, 'Homelander', 1, 242, 84),
(315, 'Billy Butcher', 1, 231, 84),
(316, 'Starlight', 1, 208, 84),
(317, 'Marty Byrde', 1, 118, 85),
(318, 'Wendy Byrde', 1, 239, 85),
(319, 'Ruth Langmore', 1, 227, 85),
(320, 'Valery Legasov', 1, 107, 86),
(321, 'Boris Shcherbina', 1, 239, 86),
(322, 'Ulana Khomyuk', 1, 208, 86),
(323, 'Beth Harmon', 1, 58, 87),
(324, 'Benny Watts', 1, 36, 87),
(325, 'Harry Beltik', 1, 227, 87),
(326, 'Holden Ford', 1, 219, 88),
(327, 'Bill Tench', 1, 118, 88),
(328, 'Wendy Carr', 1, 239, 88),
(329, 'June Osborne', 1, 239, 89),
(330, 'Serena Joy', 1, 208, 89),
(331, 'Fred Waterford', 1, 227, 89),
(332, 'Ragnar Lothbrok', 1, 210, 90),
(333, 'Lagertha', 1, 208, 90),
(334, 'Rollo', 1, 209, 90),
(335, 'Tommy Shelby', 1, 242, 91),
(336, 'Grace Burgess', 1, 208, 91),
(337, 'Arthur Shelby', 1, 209, 91),
(338, 'Joel', 1, 231, 92),
(339, 'Ellie', 1, 216, 92),
(340, 'Tess', 1, 208, 92),
(341, 'Rue Bennett', 1, 37, 93),
(342, 'Jules Vaughn', 1, 208, 93),
(343, 'Nate Jacobs', 1, 209, 93),
(344, 'John Dutton', 1, 107, 94),
(345, 'Beth Dutton', 1, 239, 94),
(346, 'Rip Wheeler', 1, 227, 94),
(347, 'Ted Lasso', 1, 232, 95),
(348, 'Rebecca Welton', 1, 208, 95),
(349, 'Roy Kent', 1, 209, 95),
(350, 'Gregory House', 1, 242, 96),
(351, 'Lisa Cuddy', 1, 239, 96),
(352, 'James Wilson', 1, 227, 96),
(353, 'Dexter Morgan', 1, 242, 97),
(354, 'Debra Morgan', 1, 208, 97),
(355, 'Harry Morgan', 1, 209, 97),
(356, 'Sheldon Cooper', 1, 232, 98),
(357, 'Penny', 1, 233, 98),
(358, 'Leonard Hofstadter', 1, 234, 98),
(359, 'Phil Dunphy', 1, 232, 99),
(360, 'Claire Dunphy', 1, 233, 99),
(361, 'Gloria Pritchett', 1, 234, 99),
(362, 'Jed Bartlet', 1, 107, 100),
(363, 'Josh Lyman', 1, 239, 100),
(364, 'C.J. Cregg', 1, 208, 100),
(365, 'Nucky Thompson', 1, 232, 101),
(366, 'Margaret Schroeder', 1, 239, 101),
(367, 'Jimmy Darmody', 1, 227, 101),
(368, 'Jax Teller', 1, 242, 102),
(369, 'Gemma Teller Morrow', 1, 208, 102),
(370, 'Clay Morrow', 1, 209, 102),
(371, 'James Holden', 1, 231, 103),
(372, 'Naomi Nagata', 1, 208, 103),
(373, 'Alex Kamal', 1, 209, 103),
(374, 'Robert Crawley', 1, 82, 104),
(375, 'Mary Crawley', 1, 239, 104),
(376, 'Matthew Crawley', 1, 227, 104),
(377, 'Earn Marks', 1, 21, 105),
(378, 'Alfred Miles', 1, 208, 105),
(379, 'Darius', 1, 209, 105),
(380, 'Hannibal Lecter', 1, 242, 106),
(381, 'Will Graham', 1, 219, 106),
(382, 'Alana Bloom', 1, 208, 106),
(383, 'Fleabag', 1, 243, 107),
(384, 'Claire', 1, 208, 107),
(385, 'Priest', 1, 209, 107),
(386, 'Eleanor Shellstrop', 1, 208, 108),
(387, 'Chidi Anagonye', 1, 209, 108),
(388, 'Tahani Al-Jamil', 1, 210, 108),
(389, 'Kate Pearson', 1, 239, 109),
(390, 'Randall Pearson', 1, 227, 109),
(391, 'Kevin Pearson', 1, 208, 109),
(392, 'Michael Desiato', 1, 107, 110),
(393, 'Adam Desiato', 1, 208, 110),
(394, 'Gina Baxter', 1, 239, 110),
(395, 'Loki', 1, 242, 111),
(396, 'Mobius', 1, 209, 111),
(397, 'Sylvie', 1, 208, 111),
(398, 'Vi', 1, 208, 112),
(399, 'Jinx', 1, 209, 112),
(400, 'Caitlyn', 1, 210, 112),
(401, 'Nell Crain', 1, 239, 113),
(402, 'Theo Crain', 1, 208, 113),
(403, 'Luke Crain', 1, 227, 113),
(404, 'Daphne Bridgerton', 1, 208, 114),
(405, 'Simon Basset', 1, 209, 114),
(406, 'Anthony Bridgerton', 1, 210, 114),
(407, 'Number Five', 1, 208, 115),
(408, 'Luther Hargreeves', 1, 209, 115),
(409, 'Diego Hargreeves', 1, 210, 115),
(410, 'Daniel LaRusso', 1, 208, 116),
(411, 'Johnny Lawrence', 1, 209, 116),
(412, 'Miguel Diaz', 1, 210, 116),
(413, 'Alex Levy', 1, 234, 117),
(414, 'Bradley Jackson', 1, 232, 117),
(415, 'Cory Ellison', 1, 208, 117),
(416, 'Misty Quigley', 1, 239, 118),
(417, 'Natalie Scatorccio', 1, 208, 118),
(418, 'Shauna Shipman', 1, 227, 118),
(419, 'Mark Scout', 1, 208, 119),
(420, 'Helly Riggs', 1, 209, 119),
(421, 'Dylan George', 1, 210, 119),
(422, 'Cassian Andor', 1, 231, 120),
(423, 'Mon Mothma', 1, 208, 120),
(424, 'Luthen Rael', 1, 209, 120);

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
  MODIFY `id_actor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

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
