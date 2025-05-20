-- 1. Géneros
INSERT INTO generos (id_genero, nombre) VALUES
(1, 'Acción'), (2, 'Aventura'), (3, 'Ciencia Ficción'), (4, 'Drama'), (5, 'Fantasía');

-- 2. Películas taquilleras
INSERT INTO contenidos (id_contenido, titulo, pelicula_serie, eslogan, sinopsis, año_estreno, duracion, director, guionistas, clasificacion, imagen_poster, alt_imagen_poster, imagen_fondo, alt_imagen_fondo, puntuacion, es_exclusivo, fecha_edicion, fecha_creacion)
VALUES
(1, 'Avatar', 'pelicula', 'Entra en Pandora', 'Un ex-marine explora un mundo alienígena.', 2009, 9720, 'James Cameron', 'James Cameron', 'PG-13', NULL, NULL, NULL, NULL, 7.8, 0, NOW(), NOW()),
(2, 'Avengers: Endgame', 'pelicula', 'El final del juego', 'Los Vengadores luchan contra Thanos.', 2019, 10860, 'Anthony y Joe Russo', 'Christopher Markus, Stephen McFeely', 'PG-13', NULL, NULL, NULL, NULL, 8.4, 0, NOW(), NOW()),
(3, 'Titanic', 'pelicula', 'Nada en la Tierra podría separarlos', 'Historia de amor en el Titanic.', 1997, 11640, 'James Cameron', 'James Cameron', 'PG-13', NULL, NULL, NULL, NULL, 7.9, 0, NOW(), NOW()),
(4, 'Star Wars: The Force Awakens', 'pelicula', 'Despierta la fuerza', 'La Resistencia lucha contra la Primera Orden.', 2015, 8280, 'J.J. Abrams', 'Lawrence Kasdan, J.J. Abrams', 'PG-13', NULL, NULL, NULL, NULL, 7.8, 0, NOW(), NOW()),
(5, 'Jurassic World', 'pelicula', 'El parque ha abierto', 'Dinosaurios en un parque temático.', 2015, 7440, 'Colin Trevorrow', 'Rick Jaffa, Amanda Silver', 'PG-13', NULL, NULL, NULL, NULL, 7.0, 0, NOW(), NOW()),
(6, 'The Lion King', 'pelicula', 'Siente el rugido', 'El viaje de Simba para convertirse en rey.', 2019, 7080, 'Jon Favreau', 'Jeff Nathanson', 'PG', NULL, NULL, NULL, NULL, 6.8, 0, NOW(), NOW()),
(7, 'The Avengers', 'pelicula', 'Reunidos', 'Superhéroes se unen para salvar el mundo.', 2012, 8580, 'Joss Whedon', 'Joss Whedon', 'PG-13', NULL, NULL, NULL, NULL, 8.0, 0, NOW(), NOW()),
(8, 'Furious 7', 'pelicula', 'Una última carrera', 'Carreras y acción a toda velocidad.', 2015, 8220, 'James Wan', 'Chris Morgan', 'PG-13', NULL, NULL, NULL, NULL, 7.1, 0, NOW(), NOW()),
(9, 'Frozen II', 'pelicula', 'El viaje continúa', 'Elsa y Anna exploran el pasado.', 2019, 6180, 'Chris Buck, Jennifer Lee', 'Jennifer Lee', 'PG', NULL, NULL, NULL, NULL, 6.8, 0, NOW(), NOW()),
(10, 'Beauty and the Beast', 'pelicula', 'La belleza está en el interior', 'Bella conoce a la Bestia.', 2017, 7740, 'Bill Condon', 'Stephen Chbosky, Evan Spiliotopoulos', 'PG', NULL, NULL, NULL, NULL, 7.1, 0, NOW(), NOW());
-- 3. Repartos (uno por película)
INSERT INTO reparto (id_reparto, id_contenido_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- 4. Actores (4 por reparto)
INSERT INTO actor (id_actor, id_reparto_id, nombre_actor, personaje, imagen_actor) VALUES
-- Avatar
(1, 1, 'Sam Worthington', 'Jake Sully', NULL),
(2, 1, 'Zoe Saldana', 'Neytiri', NULL),
(3, 1, 'Sigourney Weaver', 'Dr. Grace Augustine', NULL),
(4, 1, 'Stephen Lang', 'Coronel Miles Quaritch', NULL),
-- Avengers: Endgame
(5, 2, 'Robert Downey Jr.', 'Tony Stark / Iron Man', NULL),
(6, 2, 'Chris Evans', 'Steve Rogers / Capitán América', NULL),
(7, 2, 'Scarlett Johansson', 'Natasha Romanoff / Black Widow', NULL),
(8, 2, 'Chris Hemsworth', 'Thor', NULL),
-- Titanic
(9, 3, 'Leonardo DiCaprio', 'Jack Dawson', NULL),
(10, 3, 'Kate Winslet', 'Rose DeWitt Bukater', NULL),
(11, 3, 'Billy Zane', 'Cal Hockley', NULL),
(12, 3, 'Kathy Bates', 'Molly Brown', NULL),
-- Star Wars: The Force Awakens
(13, 4, 'Daisy Ridley', 'Rey', NULL),
(14, 4, 'John Boyega', 'Finn', NULL),
(15, 4, 'Harrison Ford', 'Han Solo', NULL),
(16, 4, 'Adam Driver', 'Kylo Ren', NULL),
-- Jurassic World
(17, 5, 'Chris Pratt', 'Owen Grady', NULL),
(18, 5, 'Bryce Dallas Howard', 'Claire Dearing', NULL),
(19, 5, 'Vincent D''Onofrio', 'Vic Hoskins', NULL),
(20, 5, 'Irrfan Khan', 'Simon Masrani', NULL),
-- The Lion King
(21, 6, 'Donald Glover', 'Simba', NULL),
(22, 6, 'Beyoncé', 'Nala', NULL),
(23, 6, 'James Earl Jones', 'Mufasa', NULL),
(24, 6, 'Chiwetel Ejiofor', 'Scar', NULL),
-- The Avengers
(25, 7, 'Robert Downey Jr.', 'Tony Stark / Iron Man', NULL),
(26, 7, 'Chris Evans', 'Steve Rogers / Capitán América', NULL),
(27, 7, 'Mark Ruffalo', 'Bruce Banner / Hulk', NULL),
(28, 7, 'Chris Hemsworth', 'Thor', NULL),
-- Furious 7
(29, 8, 'Vin Diesel', 'Dominic Toretto', NULL),
(30, 8, 'Paul Walker', 'Brian O''Conner', NULL),
(31, 8, 'Dwayne Johnson', 'Luke Hobbs', NULL),
(32, 8, 'Michelle Rodriguez', 'Letty Ortiz', NULL),
-- Frozen II
(33, 9, 'Idina Menzel', 'Elsa', NULL),
(34, 9, 'Kristen Bell', 'Anna', NULL),
(35, 9, 'Josh Gad', 'Olaf', NULL),
(36, 9, 'Jonathan Groff', 'Kristoff', NULL),
-- Beauty and the Beast
(37, 10, 'Emma Watson', 'Bella', NULL),
(38, 10, 'Dan Stevens', 'Bestia', NULL),
(39, 10, 'Luke Evans', 'Gaston', NULL),
(40, 10, 'Josh Gad', 'LeFou', NULL);

-- 5. Relacionar películas con géneros (ejemplo simple)
INSERT INTO contenidos_generos (id_contenido_id, id_genero_id) VALUES
(1, 3), (2, 1), (2, 2), (3, 4), (4, 3), (5, 2), (6, 5), (7, 1), (8, 1), (9, 5), (10, 5);