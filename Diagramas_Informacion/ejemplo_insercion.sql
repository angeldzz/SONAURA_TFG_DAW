-- 1. Géneros
INSERT INTO generos (id_genero, nombre,creador_id) VALUES
(1, 'Acción', 1), (2, 'Aventura', 1), (3, 'Ciencia Ficción', 1), (4, 'Drama', 1), (5, 'Fantasía', 1);

-- 2. Películas taquilleras
INSERT INTO contenidos (id_contenido, titulo, pelicula_serie, eslogan, sinopsis, año_estreno, duracion, director, guionistas, clasificacion, imagen_poster, alt_imagen_poster, imagen_fondo, alt_imagen_fondo, puntuacion, es_exclusivo, fecha_edicion, fecha_creacion,creador_id)
VALUES
(1, 'Avatar', 'pelicula', 'Entra en Pandora', 'Un ex-marine explora un mundo alienígena.', 2009, 9720, 'James Cameron', 'James Cameron', 'PG-13', NULL, NULL, NULL, NULL, 7.8, 0, NOW(), NOW(), 1),
(2, 'Avengers: Endgame', 'pelicula', 'El final del juego', 'Los Vengadores luchan contra Thanos.', 2019, 10860, 'Anthony y Joe Russo', 'Christopher Markus, Stephen McFeely', 'PG-13', NULL, NULL, NULL, NULL, 8.4, 0, NOW(), NOW(), 1),
(3, 'Titanic', 'pelicula', 'Nada en la Tierra podría separarlos', 'Historia de amor en el Titanic.', 1997, 11640, 'James Cameron', 'James Cameron', 'PG-13', NULL, NULL, NULL, NULL, 7.9, 0, NOW(), NOW(), 1),
(4, 'Star Wars: The Force Awakens', 'pelicula', 'Despierta la fuerza', 'La Resistencia lucha contra la Primera Orden.', 2015, 8280, 'J.J. Abrams', 'Lawrence Kasdan, J.J. Abrams', 'PG-13', NULL, NULL, NULL, NULL, 7.8, 0, NOW(), NOW(), 1),
(5, 'Jurassic World', 'pelicula', 'El parque ha abierto', 'Dinosaurios en un parque temático.', 2015, 7440, 'Colin Trevorrow', 'Rick Jaffa, Amanda Silver', 'PG-13', NULL, NULL, NULL, NULL, 7.0, 0, NOW(), NOW(), 1),
(6, 'The Lion King', 'pelicula', 'Siente el rugido', 'El viaje de Simba para convertirse en rey.', 2019, 7080, 'Jon Favreau', 'Jeff Nathanson', 'PG', NULL, NULL, NULL, NULL, 6.8, 0, NOW(), NOW(), 1),
(7, 'The Avengers', 'pelicula', 'Reunidos', 'Superhéroes se unen para salvar el mundo.', 2012, 8580, 'Joss Whedon', 'Joss Whedon', 'PG-13', NULL, NULL, NULL, NULL, 8.0, 0, NOW(), NOW(), 1),
(8, 'Furious 7', 'pelicula', 'Una última carrera', 'Carreras y acción a toda velocidad.', 2015, 8220, 'James Wan', 'Chris Morgan', 'PG-13', NULL, NULL, NULL, NULL, 7.1, 0, NOW(), NOW(), 1),
(9, 'Frozen II', 'pelicula', 'El viaje continúa', 'Elsa y Anna exploran el pasado.', 2019, 6180, 'Chris Buck, Jennifer Lee', 'Jennifer Lee', 'PG', NULL, NULL, NULL, NULL, 6.8, 0, NOW(), NOW(), 1),
(10, 'Beauty and the Beast', 'pelicula', 'La belleza está en el interior', 'Bella conoce a la Bestia.', 2017, 7740, 'Bill Condon', 'Stephen Chbosky, Evan Spiliotopoulos', 'PG', NULL, NULL, NULL, NULL, 7.1, 0, NOW(), NOW(), 1),
(11, 'Dune: Parte 2', 'pelicula', 'Entra en el desierto', 'La continuación de la épica saga de Dune.', 2024, 9960, 'Denis Villeneuve', 'Denis Villeneuve, Jon Spaihts', 'PG-13', NULL, NULL, NULL, NULL, 9.8, 0, NOW(), NOW(), 1),
(12, 'Oppenheimer', 'pelicula', 'El hombre detrás de la bomba', 'La vida de J. Robert Oppenheimer y el Proyecto Manhattan.', 2023, 10800, 'Christopher Nolan', 'Christopher Nolan', 'PG-13', NULL, NULL, NULL, NULL, 9.6, 0, NOW(), NOW(), 1),
(13, 'Pobres Criaturas', 'pelicula', 'Una vida extraordinaria', 'La historia de Bella Baxter, una joven devuelta a la vida.', 2023, 8460, 'Yorgos Lanthimos', 'Tony McNamara', 'R', NULL, NULL, NULL, NULL, 9.4, 0, NOW(), NOW(), 1),
(14, 'Civil War', 'pelicula', 'El país dividido', 'Un futuro distópico donde EE.UU. está en guerra civil.', 2024, 6540, 'Alex Garland', 'Alex Garland', 'R', NULL, NULL, NULL, NULL, 9.2, 0, NOW(), NOW(), 1),
(15, 'Rivales', 'pelicula', 'Competencia sin límites', 'Un triángulo amoroso en el mundo del tenis profesional.', 2024, 7860, 'Luca Guadagnino', 'Justin Kuritzkes', 'R', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(16, 'El Planeta de los Simios: Nuevo Reino', 'pelicula', 'Un nuevo comienzo', 'Generaciones después del reinado de César.', 2024, 8700, 'Wes Ball', 'Josh Friedman', 'PG-13', NULL, NULL, NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(17, 'Furiosa: De la Saga Mad Max', 'pelicula', 'El origen de Furiosa', 'La historia de Furiosa antes de Mad Max: Fury Road.', 2024, 9000, 'George Miller', 'George Miller, Nico Lathouris', 'R', NULL, NULL, NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(18, 'Barbie', 'pelicula', 'Sé lo que quieras ser', 'Barbie vive una aventura en el mundo real.', 2023, 6840, 'Greta Gerwig', 'Greta Gerwig, Noah Baumbach', 'PG-13', NULL, NULL, NULL, NULL, 8.2, 0, NOW(), NOW(), 1),
(19, 'Anatomía de una Caída', 'pelicula', '¿Culpable o inocente?', 'Una escritora es acusada de la muerte de su marido.', 2023, 9000, 'Justine Triet', 'Justine Triet, Arthur Harari', 'R', NULL, NULL, NULL, NULL, 8.0, 0, NOW(), NOW(), 1),
(20, 'La Zona de Interés', 'pelicula', 'La banalidad del mal', 'La vida cotidiana de una familia nazi junto a Auschwitz.', 2023, 6300, 'Jonathan Glazer', 'Jonathan Glazer', 'PG-13', NULL, NULL, NULL, NULL, 7.8, 0, NOW(), NOW(), 1),
(21, 'Godzilla y Kong: El Nuevo Imperio', 'pelicula', 'Dos titanes, un destino', 'Godzilla y Kong unen fuerzas ante una nueva amenaza.', 2024, 6900, 'Adam Wingard', 'Terry Rossio, Simon Barrett', 'PG-13', NULL, NULL, NULL, NULL, 7.6, 0, NOW(), NOW(), 1),
(22, 'Los Asesinos de la Luna', 'pelicula', 'La codicia no tiene límites', 'Crímenes en la nación Osage en los años 20.', 2023, 12360, 'Martin Scorsese', 'Eric Roth, Martin Scorsese', 'R', NULL, NULL, NULL, NULL, 7.4, 0, NOW(), NOW(), 1),
(23, 'Del Revés 2', 'pelicula', 'Nuevas emociones', 'Riley enfrenta la adolescencia y nuevas emociones.', 2024, 5760, 'Kelsey Mann', 'Meg LeFauve', 'PG', NULL, NULL, NULL, NULL, 7.2, 0, NOW(), NOW(), 1),
(24, 'Wonka', 'pelicula', 'El origen del chocolate', 'La juventud de Willy Wonka y sus aventuras.', 2023, 6960, 'Paul King', 'Simon Farnaby, Paul King', 'PG', NULL, NULL, NULL, NULL, 7.0, 0, NOW(), NOW(), 1),
(25, 'Aquaman y el Reino Perdido', 'pelicula', 'El océano en peligro', 'Aquaman debe salvar Atlantis de una nueva amenaza.', 2023, 7440, 'James Wan', 'David Leslie Johnson-McGoldrick', 'PG-13', NULL, NULL, NULL, NULL, 6.8, 0, NOW(), NOW(), 1),
(26, 'The Batman', 'pelicula', 'La venganza tiene un nuevo rostro', 'Batman investiga una serie de asesinatos en Gotham.', 2022, 10560, 'Matt Reeves', 'Matt Reeves, Peter Craig', 'PG-13', NULL, NULL, NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(27, 'Parásitos', 'pelicula', 'La lucha de clases', 'Una familia pobre se infiltra en una familia rica.', 2019, 7920, 'Bong Joon-ho', 'Bong Joon-ho, Han Jin-won', 'R', NULL, NULL, NULL, NULL, 9.7, 0, NOW(), NOW(), 1),
(28, 'Spider-Man: A Través del Spider-Verso', 'pelicula', 'El multiverso se expande', 'Miles Morales viaja por el multiverso.', 2023, 8400, 'Joaquim Dos Santos, Kemp Powers', 'Phil Lord, Christopher Miller', 'PG', NULL, NULL, NULL, NULL, 9.5, 0, NOW(), NOW(), 1),
(29, 'Todo a la Vez en Todas Partes', 'pelicula', 'El multiverso es caótico', 'Una mujer común se convierte en heroína multiversal.', 2022, 8340, 'Daniel Kwan, Daniel Scheinert', 'Daniel Kwan, Daniel Scheinert', 'R', NULL, NULL, NULL, NULL, 9.3, 0, NOW(), NOW(), 1),
(30, 'Top Gun: Maverick', 'pelicula', 'El regreso de Maverick', 'Maverick entrena a una nueva generación de pilotos.', 2022, 7860, 'Joseph Kosinski', 'Ehren Kruger, Eric Warren Singer', 'PG-13', NULL, NULL, NULL, NULL, 9.1, 0, NOW(), NOW(), 1),
(31, 'Joker', 'pelicula', 'Ríe y el mundo reirá contigo', 'El origen del icónico villano de Gotham.', 2019, 7320, 'Todd Phillips', 'Todd Phillips, Scott Silver', 'R', NULL, NULL, NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(32, 'Origen', 'pelicula', 'Tu mente es la escena del crimen', 'Un ladrón roba secretos a través de los sueños.', 2010, 8880, 'Christopher Nolan', 'Christopher Nolan', 'PG-13', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(33, 'El Caballero Oscuro', 'pelicula', 'El caballero de Gotham', 'Batman enfrenta al Joker en Gotham.', 2008, 9120, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'PG-13', NULL, NULL, NULL, NULL, 9.8, 0, NOW(), NOW(), 1),
(34, 'Interstellar', 'pelicula', 'El destino de la humanidad está en las estrellas', 'Un grupo viaja a través de un agujero de gusano.', 2014, 10140, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'PG-13', NULL, NULL, NULL, NULL, 9.5, 0, NOW(), NOW(), 1),
(35, 'El Club de la Pelea', 'pelicula', 'La primera regla es...', 'Un hombre crea un club secreto de peleas.', 1999, 8340, 'David Fincher', 'Jim Uhls', 'R', NULL, NULL, NULL, NULL, 9.3, 0, NOW(), NOW(), 1),
(36, 'Tiempos Violentos', 'pelicula', 'Historias entrelazadas', 'Varios relatos criminales en Los Ángeles.', 1994, 9240, 'Quentin Tarantino', 'Quentin Tarantino, Roger Avary', 'R', NULL, NULL, NULL, NULL, 9.4, 0, NOW(), NOW(), 1),
(37, 'Cadena Perpetua', 'pelicula', 'La esperanza es algo peligroso', 'Un hombre es condenado injustamente a cadena perpetua.', 1994, 8520, 'Frank Darabont', 'Frank Darabont', 'R', NULL, NULL, NULL, NULL, 9.8, 0, NOW(), NOW(), 1),
(38, 'El Padrino', 'pelicula', 'El poder lo es todo', 'La historia de la familia mafiosa Corleone.', 1972, 10500, 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'R', NULL, NULL, NULL, NULL, 9.7, 0, NOW(), NOW(), 1),
(39, 'Forrest Gump', 'pelicula', 'La vida es como una caja de bombones', 'La vida extraordinaria de Forrest Gump.', 1994, 8520, 'Robert Zemeckis', 'Eric Roth', 'PG-13', NULL, NULL, NULL, NULL, 9.3, 0, NOW(), NOW(), 1),
(40, 'El Señor de los Anillos: La Comunidad del Anillo', 'pelicula', 'Un anillo para gobernarlos a todos', 'Frodo inicia su viaje para destruir el Anillo Único.', 2001, 10680, 'Peter Jackson', 'Fran Walsh, Philippa Boyens', 'PG-13', NULL, NULL, NULL, NULL, 9.4, 0, NOW(), NOW(), 1),
(41, 'Matrix', 'pelicula', 'La realidad es una ilusión', 'Un hacker descubre la verdad sobre su mundo.', 1999, 8160, 'Lana Wachowski, Lilly Wachowski', 'Lana Wachowski, Lilly Wachowski', 'R', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(42, 'Gladiador', 'pelicula', 'Fuerza y honor', 'Un general romano busca venganza.', 2000, 9300, 'Ridley Scott', 'David Franzoni, John Logan', 'R', NULL, NULL, NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(43, 'Siete', 'pelicula', 'Los siete pecados capitales', 'Dos detectives buscan a un asesino en serie.', 1995, 7620, 'David Fincher', 'Andrew Kevin Walker', 'R', NULL, NULL, NULL, NULL, 9.2, 0, NOW(), NOW(), 1),
(44, 'Rescatando al Soldado Ryan', 'pelicula', 'La guerra tiene un precio', 'Un escuadrón busca a un soldado tras el Día D.', 1998, 10140, 'Steven Spielberg', 'Robert Rodat', 'R', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(45, 'El Rey León', 'pelicula', 'Siente el rugido', 'El viaje de Simba para convertirse en rey.', 1994, 5340, 'Roger Allers, Rob Minkoff', 'Irene Mecchi, Jonathan Roberts', 'G', NULL, NULL, NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(46, 'Volver al Futuro', 'pelicula', 'Regresa al pasado', 'Un adolescente viaja accidentalmente al pasado.', 1985, 6960, 'Robert Zemeckis', 'Robert Zemeckis, Bob Gale', 'PG', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(47, 'El Silencio de los Corderos', 'pelicula', 'El mal tiene muchas caras', 'Una agente del FBI busca a un asesino con la ayuda de Hannibal Lecter.', 1991, 7080, 'Jonathan Demme', 'Ted Tally', 'R', NULL, NULL, NULL, NULL, 9.2, 0, NOW(), NOW(), 1),
(48, 'Parque Jurásico', 'pelicula', 'La vida se abre camino', 'Un parque temático con dinosaurios clonados.', 1993, 7620, 'Steven Spielberg', 'Michael Crichton, David Koepp', 'PG-13', NULL, NULL, NULL, NULL, 9.1, 0, NOW(), NOW(), 1),
(49, 'La Lista de Schindler', 'pelicula', 'El valor de una vida', 'Un empresario salva a judíos durante el Holocausto.', 1993, 11700, 'Steven Spielberg', 'Steven Zaillian', 'R', NULL, NULL, NULL, NULL, 9.7, 0, NOW(), NOW(), 1),
(50, 'El Indomable Will Hunting', 'pelicula', 'El genio está en todas partes', 'Un joven con talento para las matemáticas lucha con su pasado.', 1997, 7560, 'Gus Van Sant', 'Matt Damon, Ben Affleck', 'R', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(51, 'Infiltrados', 'pelicula', '¿Quién es el topo?', 'Un policía y un infiltrado en la mafia irlandesa.', 2006, 9060, 'Martin Scorsese', 'William Monahan', 'R', NULL, NULL, NULL, NULL, 9.1, 0, NOW(), NOW(), 1),
(52, 'Avatar', 'pelicula', 'Entra en Pandora', 'Un ex-marine explora un mundo alienígena.', 2009, 9720, 'James Cameron', 'James Cameron', 'PG-13', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(53, 'Deadpool y Wolverine', 'pelicula', 'El dúo más irreverente', 'Deadpool y Wolverine unen fuerzas en una nueva aventura.', 2024, 7680, 'Shawn Levy', 'Rhett Reese, Paul Wernick', 'R', NULL, NULL, NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(54, 'Sin Lugar para los Débiles', 'pelicula', 'El destino está escrito', 'Un hombre encuentra una maleta con dinero y es perseguido por un asesino.', 2007, 7320, 'Joel Coen, Ethan Coen', 'Joel Coen, Ethan Coen', 'R', NULL, NULL, NULL, NULL, 9.0, 0, NOW(), NOW(), 1);

-- 3. Repartos (uno por película)
INSERT INTO reparto (id_reparto, id_contenido_id, creador_id) VALUES
(1, 1, 1), (2, 2, 1), (3, 3, 1), (4, 4, 1), (5, 5, 1), (6, 6, 1), (7, 7, 1), (8, 8, 1), (9, 9, 1), (10, 10, 1),
(11, 11, 1), (12, 12, 1), (13, 13, 1), (14, 14, 1), (15, 15, 1), (16, 16, 1), (17, 17, 1), (18, 18, 1), (19, 19, 1), (20, 20, 1),
(21, 21, 1), (22, 22, 1), (23, 23, 1), (24, 24, 1), (25, 25, 1), (26, 26, 1), (27, 27, 1), (28, 28, 1), (29, 29, 1), (30, 30, 1),
(31, 31, 1), (32, 32, 1), (33, 33, 1), (34, 34, 1), (35, 35, 1), (36, 36, 1), (37, 37, 1), (38, 38, 1), (39, 39, 1), (40, 40, 1),
(41, 41, 1), (42, 42, 1), (43, 43, 1), (44, 44, 1), (45, 45, 1), (46, 46, 1), (47, 47, 1), (48, 48, 1), (49, 49, 1), (50, 50, 1),
(51, 51, 1), (52, 52, 1), (53, 53, 1), (54, 54, 1);

-- 4. Actores (4 por reparto)
INSERT INTO actor (id_actor, id_reparto_id, nombre_actor, personaje, imagen_actor, creador_id) VALUES
-- Avatar
(1, 1, 'Sam Worthington', 'Jake Sully', NULL, 1),
(2, 1, 'Zoe Saldana', 'Neytiri', NULL, 1),
(3, 1, 'Sigourney Weaver', 'Dr. Grace Augustine', NULL, 1),
(4, 1, 'Stephen Lang', 'Coronel Miles Quaritch', NULL, 1),
-- Avengers: Endgame
(5, 2, 'Robert Downey Jr.', 'Tony Stark / Iron Man', NULL, 1),
(6, 2, 'Chris Evans', 'Steve Rogers / Capitán América', NULL, 1),
(7, 2, 'Scarlett Johansson', 'Natasha Romanoff / Black Widow', NULL, 1),
(8, 2, 'Chris Hemsworth', 'Thor', NULL, 1),
-- Titanic
(9, 3, 'Leonardo DiCaprio', 'Jack Dawson', NULL, 1),
(10, 3, 'Kate Winslet', 'Rose DeWitt Bukater', NULL, 1),
(11, 3, 'Billy Zane', 'Cal Hockley', NULL, 1),
(12, 3, 'Kathy Bates', 'Molly Brown', NULL, 1),
-- Star Wars: The Force Awakens
(13, 4, 'Daisy Ridley', 'Rey', NULL, 1),
(14, 4, 'John Boyega', 'Finn', NULL, 1),
(15, 4, 'Harrison Ford', 'Han Solo', NULL, 1),
(16, 4, 'Adam Driver', 'Kylo Ren', NULL, 1),
-- Jurassic World
(17, 5, 'Chris Pratt', 'Owen Grady', NULL, 1),
(18, 5, 'Bryce Dallas Howard', 'Claire Dearing', NULL, 1),
(19, 5, 'Vincent D''Onofrio', 'Vic Hoskins', NULL, 1),
(20, 5, 'Irrfan Khan', 'Simon Masrani', NULL, 1),
-- The Lion King
(21, 6, 'Donald Glover', 'Simba', NULL, 1),
(22, 6, 'Beyoncé', 'Nala', NULL, 1),
(23, 6, 'James Earl Jones', 'Mufasa', NULL, 1),
(24, 6, 'Chiwetel Ejiofor', 'Scar', NULL, 1),
-- The Avengers
(25, 7, 'Robert Downey Jr.', 'Tony Stark / Iron Man', NULL, 1),
(26, 7, 'Chris Evans', 'Steve Rogers / Capitán América', NULL, 1),
(27, 7, 'Mark Ruffalo', 'Bruce Banner / Hulk', NULL, 1),
(28, 7, 'Chris Hemsworth', 'Thor', NULL, 1),
-- Furious 7
(29, 8, 'Vin Diesel', 'Dominic Toretto', NULL, 1),
(30, 8, 'Paul Walker', 'Brian O''Conner', NULL, 1),
(31, 8, 'Dwayne Johnson', 'Luke Hobbs', NULL, 1),
(32, 8, 'Michelle Rodriguez', 'Letty Ortiz', NULL, 1),
-- Frozen II
(33, 9, 'Idina Menzel', 'Elsa', NULL, 1),
(34, 9, 'Kristen Bell', 'Anna', NULL, 1),
(35, 9, 'Josh Gad', 'Olaf', NULL, 1),
(36, 9, 'Jonathan Groff', 'Kristoff', NULL, 1),
-- Beauty and the Beast
(37, 10, 'Emma Watson', 'Bella', NULL, 1),
(38, 10, 'Dan Stevens', 'Bestia', NULL, 1),
(39, 10, 'Luke Evans', 'Gaston', NULL, 1),
(40, 10, 'Josh Gad', 'LeFou', NULL, 1),
-- Dune: Parte 2
(41, 11, 'Timothée Chalamet', 'Paul Atreides', NULL, 1),
(42, 11, 'Zendaya', 'Chani', NULL, 1),
(43, 11, 'Rebecca Ferguson', 'Lady Jessica', NULL, 1),
(44, 11, 'Josh Brolin', 'Gurney Halleck', NULL, 1),
-- Oppenheimer
(45, 12, 'Cillian Murphy', 'J. Robert Oppenheimer', NULL, 1),
(46, 12, 'Emily Blunt', 'Kitty Oppenheimer', NULL, 1),
(47, 12, 'Matt Damon', 'Leslie Groves', NULL, 1),
(48, 12, 'Robert Downey Jr.', 'Lewis Strauss', NULL, 1),
-- Pobres Criaturas
(49, 13, 'Emma Stone', 'Bella Baxter', NULL, 1),
(50, 13, 'Mark Ruffalo', 'Duncan Wedderburn', NULL, 1),
(51, 13, 'Willem Dafoe', 'Godwin Baxter', NULL, 1),
(52, 13, 'Ramy Youssef', 'Max McCandles', NULL, 1),
-- Civil War
(53, 14, 'Kirsten Dunst', 'Lee Smith', NULL, 1),
(54, 14, 'Cailee Spaeny', 'Jessie', NULL, 1),
(55, 14, 'Wagner Moura', 'Joel', NULL, 1),
(56, 14, 'Stephen McKinley Henderson', 'Sammy', NULL, 1),
-- Rivales
(57, 15, 'Zendaya', 'Tashi Duncan', NULL, 1),
(58, 15, 'Mike Faist', 'Art Donaldson', NULL, 1),
(59, 15, 'Josh O''Connor', 'Patrick Zweig', NULL, 1),
(60, 15, 'A.J. Lister', 'Lily', NULL, 1),
-- El Planeta de los Simios: Nuevo Reino
(61, 16, 'Owen Teague', 'Noa', NULL, 1),
(62, 16, 'Freya Allan', 'Mae', NULL, 1),
(63, 16, 'Kevin Durand', 'Proximus Caesar', NULL, 1),
(64, 16, 'Peter Macon', 'Raka', NULL, 1),
-- Furiosa: De la Saga Mad Max
(65, 17, 'Anya Taylor-Joy', 'Furiosa', NULL, 1),
(66, 17, 'Chris Hemsworth', 'Dementus', NULL, 1),
(67, 17, 'Tom Burke', 'Praetorian Jack', NULL, 1),
(68, 17, 'Nathan Jones', 'Rictus Erectus', NULL, 1),
-- Barbie
(69, 18, 'Margot Robbie', 'Barbie', NULL, 1),
(70, 18, 'Ryan Gosling', 'Ken', NULL, 1),
(71, 18, 'America Ferrera', 'Gloria', NULL, 1),
(72, 18, 'Kate McKinnon', 'Barbie Rara', NULL, 1),
-- Anatomía de una Caída
(73, 19, 'Sandra Hüller', 'Sandra Voyter', NULL, 1),
(74, 19, 'Swann Arlaud', 'Vincent Renzi', NULL, 1),
(75, 19, 'Milo Machado Graner', 'Daniel M.', NULL, 1),
(76, 19, 'Antoine Reinartz', 'Abogado', NULL, 1),
-- La Zona de Interés
(77, 20, 'Christian Friedel', 'Rudolf Höss', NULL, 1),
(78, 20, 'Sandra Hüller', 'Hedwig Höss', NULL, 1),
(79, 20, 'Freya Kreutzkam', 'Inge', NULL, 1),
(80, 20, 'Ralph Herforth', 'SS Officer', NULL, 1),
-- Godzilla y Kong: El Nuevo Imperio
(81, 21, 'Rebecca Hall', 'Ilene Andrews', NULL, 1),
(82, 21, 'Brian Tyree Henry', 'Bernie Hayes', NULL, 1),
(83, 21, 'Dan Stevens', 'Trapper', NULL, 1),
(84, 21, 'Kaylee Hottle', 'Jia', NULL, 1),
-- Los Asesinos de la Luna
(85, 22, 'Leonardo DiCaprio', 'Ernest Burkhart', NULL, 1),
(86, 22, 'Robert De Niro', 'William Hale', NULL, 1),
(87, 22, 'Lily Gladstone', 'Mollie Burkhart', NULL, 1),
(88, 22, 'Jesse Plemons', 'Tom White', NULL, 1),
-- Del Revés 2
(89, 23, 'Amy Poehler', 'Alegría', NULL, 1),
(90, 23, 'Phyllis Smith', 'Tristeza', NULL, 1),
(91, 23, 'Lewis Black', 'Furia', NULL, 1),
(92, 23, 'Maya Hawke', 'Ansiedad', NULL, 1),
-- Wonka
(93, 24, 'Timothée Chalamet', 'Willy Wonka', NULL, 1),
(94, 24, 'Hugh Grant', 'Oompa Loompa', NULL, 1),
(95, 24, 'Olivia Colman', 'Señora Scrubitt', NULL, 1),
(96, 24, 'Keegan-Michael Key', 'Jefe de Policía', NULL, 1),
-- Aquaman y el Reino Perdido
(97, 25, 'Jason Momoa', 'Arthur Curry / Aquaman', NULL, 1),
(98, 25, 'Patrick Wilson', 'Orm', NULL, 1),
(99, 25, 'Amber Heard', 'Mera', NULL, 1),
(100, 25, 'Yahya Abdul-Mateen II', 'Black Manta', NULL, 1),
-- The Batman
(101, 26, 'Robert Pattinson', 'Bruce Wayne / Batman', NULL, 1),
(102, 26, 'Zoë Kravitz', 'Selina Kyle / Catwoman', NULL, 1),
(103, 26, 'Paul Dano', 'Edward Nashton / Enigma', NULL, 1),
(104, 26, 'Colin Farrell', 'Oswald Cobblepot / Pingüino', NULL, 1),
-- Parásitos
(105, 27, 'Song Kang-ho', 'Kim Ki-taek', NULL, 1),
(106, 27, 'Lee Sun-kyun', 'Park Dong-ik', NULL, 1),
(107, 27, 'Cho Yeo-jeong', 'Choi Yeon-gyo', NULL, 1),
(108, 27, 'Choi Woo-shik', 'Kim Ki-woo', NULL, 1),
-- Spider-Man: A Través del Spider-Verso
(109, 28, 'Shameik Moore', 'Miles Morales', NULL, 1),
(110, 28, 'Hailee Steinfeld', 'Gwen Stacy', NULL, 1),
(111, 28, 'Oscar Isaac', 'Miguel O''Hara', NULL, 1),
(112, 28, 'Jake Johnson', 'Peter B. Parker', NULL, 1),
-- Todo a la Vez en Todas Partes
(113, 29, 'Michelle Yeoh', 'Evelyn Wang', NULL, 1),
(114, 29, 'Ke Huy Quan', 'Waymond Wang', NULL, 1),
(115, 29, 'Stephanie Hsu', 'Joy Wang', NULL, 1),
(116, 29, 'James Hong', 'Gong Gong', NULL, 1),
-- Top Gun: Maverick
(117, 30, 'Tom Cruise', 'Pete "Maverick" Mitchell', NULL, 1),
(118, 30, 'Miles Teller', 'Bradley "Rooster" Bradshaw', NULL, 1),
(119, 30, 'Jennifer Connelly', 'Penny Benjamin', NULL, 1),
(120, 30, 'Jon Hamm', 'Cyclone', NULL, 1),
-- Joker
(121, 31, 'Joaquin Phoenix', 'Arthur Fleck / Joker', NULL, 1),
(122, 31, 'Robert De Niro', 'Murray Franklin', NULL, 1),
(123, 31, 'Zazie Beetz', 'Sophie Dumond', NULL, 1),
(124, 31, 'Frances Conroy', 'Penny Fleck', NULL, 1),
-- Origen
(125, 32, 'Leonardo DiCaprio', 'Dom Cobb', NULL, 1),
(126, 32, 'Joseph Gordon-Levitt', 'Arthur', NULL, 1),
(127, 32, 'Elliot Page', 'Ariadne', NULL, 1),
(128, 32, 'Tom Hardy', 'Eames', NULL, 1),
-- El Caballero Oscuro
(129, 33, 'Christian Bale', 'Bruce Wayne / Batman', NULL, 1),
(130, 33, 'Heath Ledger', 'Joker', NULL, 1),
(131, 33, 'Aaron Eckhart', 'Harvey Dent', NULL, 1),
(132, 33, 'Maggie Gyllenhaal', 'Rachel Dawes', NULL, 1),
-- Interstellar
(133, 34, 'Matthew McConaughey', 'Cooper', NULL, 1),
(134, 34, 'Anne Hathaway', 'Brand', NULL, 1),
(135, 34, 'Jessica Chastain', 'Murph', NULL, 1),
(136, 34, 'Michael Caine', 'Profesor Brand', NULL, 1),
-- El Club de la Pelea
(137, 35, 'Edward Norton', 'Narrador', NULL, 1),
(138, 35, 'Brad Pitt', 'Tyler Durden', NULL, 1),
(139, 35, 'Helena Bonham Carter', 'Marla Singer', NULL, 1),
(140, 35, 'Meat Loaf', 'Robert Paulson', NULL, 1),
-- Tiempos Violentos
(141, 36, 'John Travolta', 'Vincent Vega', NULL, 1),
(142, 36, 'Samuel L. Jackson', 'Jules Winnfield', NULL, 1),
(143, 36, 'Uma Thurman', 'Mia Wallace', NULL, 1),
(144, 36, 'Bruce Willis', 'Butch Coolidge', NULL, 1),
-- Cadena Perpetua
(145, 37, 'Tim Robbins', 'Andy Dufresne', NULL, 1),
(146, 37, 'Morgan Freeman', 'Ellis Boyd "Red" Redding', NULL, 1),
(147, 37, 'Bob Gunton', 'Warden Norton', NULL, 1),
(148, 37, 'William Sadler', 'Heywood', NULL, 1),
-- El Padrino
(149, 38, 'Marlon Brando', 'Vito Corleone', NULL, 1),
(150, 38, 'Al Pacino', 'Michael Corleone', NULL, 1),
(151, 38, 'James Caan', 'Sonny Corleone', NULL, 1),
(152, 38, 'Diane Keaton', 'Kay Adams', NULL, 1),
-- Forrest Gump
(153, 39, 'Tom Hanks', 'Forrest Gump', NULL, 1),
(154, 39, 'Robin Wright', 'Jenny Curran', NULL, 1),
(155, 39, 'Gary Sinise', 'Teniente Dan', NULL, 1),
(156, 39, 'Sally Field', 'Sra. Gump', NULL, 1),
-- El Señor de los Anillos: La Comunidad del Anillo
(157, 40, 'Elijah Wood', 'Frodo Bolsón', NULL, 1),
(158, 40, 'Ian McKellen', 'Gandalf', NULL, 1),
(159, 40, 'Viggo Mortensen', 'Aragorn', NULL, 1),
(160, 40, 'Sean Astin', 'Sam', NULL, 1),
-- Matrix
(161, 41, 'Keanu Reeves', 'Neo', NULL, 1),
(162, 41, 'Laurence Fishburne', 'Morpheus', NULL, 1),
(163, 41, 'Carrie-Anne Moss', 'Trinity', NULL, 1),
(164, 41, 'Hugo Weaving', 'Agente Smith', NULL, 1),
-- Gladiador
(165, 42, 'Russell Crowe', 'Máximo', NULL, 1),
(166, 42, 'Joaquin Phoenix', 'Cómodo', NULL, 1),
(167, 42, 'Connie Nielsen', 'Lucila', NULL, 1),
(168, 42, 'Oliver Reed', 'Próximo', NULL, 1),
-- Siete
(169, 43, 'Brad Pitt', 'David Mills', NULL, 1),
(170, 43, 'Morgan Freeman', 'William Somerset', NULL, 1),
(171, 43, 'Gwyneth Paltrow', 'Tracy Mills', NULL, 1),
(172, 43, 'Kevin Spacey', 'John Doe', NULL, 1),
-- Rescatando al Soldado Ryan
(173, 44, 'Tom Hanks', 'Capitán Miller', NULL, 1),
(174, 44, 'Matt Damon', 'Soldado Ryan', NULL, 1),
(175, 44, 'Tom Sizemore', 'Sargento Horvath', NULL, 1),
(176, 44, 'Edward Burns', 'Reiben', NULL, 1),
-- El Rey León
(177, 45, 'Matthew Broderick', 'Simba (voz)', NULL, 1),
(178, 45, 'Jeremy Irons', 'Scar (voz)', NULL, 1),
(179, 45, 'James Earl Jones', 'Mufasa (voz)', NULL, 1),
(180, 45, 'Moira Kelly', 'Nala (voz)', NULL, 1),
-- Volver al Futuro
(181, 46, 'Michael J. Fox', 'Marty McFly', NULL, 1),
(182, 46, 'Christopher Lloyd', 'Doc Brown', NULL, 1),
(183, 46, 'Lea Thompson', 'Lorraine Baines', NULL, 1),
(184, 46, 'Crispin Glover', 'George McFly', NULL, 1),
-- El Silencio de los Corderos
(185, 47, 'Jodie Foster', 'Clarice Starling', NULL, 1),
(186, 47, 'Anthony Hopkins', 'Hannibal Lecter', NULL, 1),
(187, 47, 'Scott Glenn', 'Jack Crawford', NULL, 1),
(188, 47, 'Ted Levine', 'Buffalo Bill', NULL, 1),
-- Parque Jurásico
(189, 48, 'Sam Neill', 'Dr. Alan Grant', NULL, 1),
(190, 48, 'Laura Dern', 'Dr. Ellie Sattler', NULL, 1),
(191, 48, 'Jeff Goldblum', 'Dr. Ian Malcolm', NULL, 1),
(192, 48, 'Richard Attenborough', 'John Hammond', NULL, 1),
-- La Lista de Schindler
(193, 49, 'Liam Neeson', 'Oskar Schindler', NULL, 1),
(194, 49, 'Ben Kingsley', 'Itzhak Stern', NULL, 1),
(195, 49, 'Ralph Fiennes', 'Amon Goeth', NULL, 1),
(196, 49, 'Caroline Goodall', 'Emilie Schindler', NULL, 1),
-- El Indomable Will Hunting
(197, 50, 'Matt Damon', 'Will Hunting', NULL, 1),
(198, 50, 'Robin Williams', 'Sean Maguire', NULL, 1),
(199, 50, 'Ben Affleck', 'Chuckie Sullivan', NULL, 1),
(200, 50, 'Stellan Skarsgård', 'Gerald Lambeau', NULL, 1),
-- Infiltrados
(201, 51, 'Leonardo DiCaprio', 'Billy Costigan', NULL, 1),
(202, 51, 'Matt Damon', 'Colin Sullivan', NULL, 1),
(203, 51, 'Jack Nicholson', 'Frank Costello', NULL, 1),
(204, 51, 'Mark Wahlberg', 'Dignam', NULL, 1),
-- Avatar (repetida)
(205, 52, 'Sam Worthington', 'Jake Sully', NULL, 1),
(206, 52, 'Zoe Saldana', 'Neytiri', NULL, 1),
(207, 52, 'Sigourney Weaver', 'Dr. Grace Augustine', NULL, 1),
(208, 52, 'Stephen Lang', 'Coronel Miles Quaritch', NULL, 1),
-- Deadpool y Wolverine
(209, 53, 'Ryan Reynolds', 'Deadpool', NULL, 1),
(210, 53, 'Hugh Jackman', 'Wolverine', NULL, 1),
(211, 53, 'Emma Corrin', 'Villana', NULL, 1),
(212, 53, 'Matthew Macfadyen', 'Agente Paradox', NULL, 1),
-- Sin Lugar para los Débiles
(213, 54, 'Josh Brolin', 'Llewelyn Moss', NULL, 1),
(214, 54, 'Javier Bardem', 'Anton Chigurh', NULL, 1),
(215, 54, 'Tommy Lee Jones', 'Ed Tom Bell', NULL, 1),
(216, 54, 'Kelly Macdonald', 'Carla Jean Moss', NULL, 1);

-- 5. Relacionar películas con géneros (ejemplo simple)
INSERT INTO contenidos_generos (id_contenido_id, id_genero_id, creador_id) VALUES
(1, 3, 1), (2, 1, 1), (2, 2, 1), (3, 4, 1), (4, 3, 1), (5, 2, 1), (6, 5, 1), (7, 1, 1), (8, 1, 1), (9, 5, 1), (10, 5, 1),
-- A partir de aquí, desde id 11
(11, 3, 1), (11, 2, 1), (11, 4, 1), -- Dune: Parte 2 (Ciencia Ficción, Aventura, Drama)
(12, 4, 1), -- Oppenheimer (Drama)
(13, 5, 1), (13, 4, 1), -- Pobres Criaturas (Fantasía, Drama)
(14, 1, 1), (14, 4, 1), -- Civil War (Acción, Drama)
(15, 4, 1), -- Rivales (Drama)
(16, 3, 1), (16, 2, 1), -- El Planeta de los Simios: Nuevo Reino (Ciencia Ficción, Aventura)
(17, 1, 1), (17, 2, 1), -- Furiosa: De la Saga Mad Max (Acción, Aventura)
(18, 3, 1), (18, 4, 1), (18, 5, 1), -- Barbie (Ciencia Ficción, Drama, Fantasía)
(19, 4, 1), -- Anatomía de una Caída (Drama)
(20, 4, 1), -- La Zona de Interés (Drama)
(21, 1, 1), (21, 3, 1), -- Godzilla y Kong: El Nuevo Imperio (Acción, Ciencia Ficción)
(22, 4, 1), -- Los Asesinos de la Luna (Drama)
(23, 5, 1), -- Del Revés 2 (Fantasía)
(24, 5, 1), (24, 2, 1), -- Wonka (Fantasía, Aventura)
(25, 1, 1), (25, 2, 1), -- Aquaman y el Reino Perdido (Acción, Aventura)
(26, 1, 1), (26, 4, 1), -- The Batman (Acción, Drama)
(27, 4, 1), -- Parásitos (Drama)
(28, 5, 1), (28, 1, 1), -- Spider-Man: A Través del Spider-Verso (Fantasía, Acción)
(29, 3, 1), (29, 4, 1), -- Todo a la Vez en Todas Partes (Ciencia Ficción, Drama)
(30, 1, 1), (30, 2, 1), -- Top Gun: Maverick (Acción, Aventura)
(31, 4, 1), -- Joker (Drama)
(32, 3, 1), (32, 1, 1), -- Origen (Ciencia Ficción, Acción)
(33, 1, 1), (33, 4, 1), -- El Caballero Oscuro (Acción, Drama)
(34, 3, 1), (34, 2, 1), -- Interstellar (Ciencia Ficción, Aventura)
(35, 4, 1), -- El Club de la Pelea (Drama)
(36, 4, 1), -- Tiempos Violentos (Drama)
(37, 4, 1), -- Cadena Perpetua (Drama)
(38, 4, 1), -- El Padrino (Drama)
(39, 4, 1), -- Forrest Gump (Drama)
(40, 2, 1), (40, 5, 1), -- El Señor de los Anillos: La Comunidad del Anillo (Aventura, Fantasía)
(41, 3, 1), (41, 1, 1), -- Matrix (Ciencia Ficción, Acción)
(42, 1, 1), (42, 4, 1), -- Gladiador (Acción, Drama)
(43, 1, 1), (43, 4, 1), -- Siete (Acción, Drama)
(44, 1, 1), (44, 4, 1), -- Rescatando al Soldado Ryan (Acción, Drama)
(45, 5, 1), -- El Rey León (Fantasía)
(46, 2, 1), (46, 5, 1), -- Volver al Futuro (Aventura, Fantasía)
(47, 4, 1), -- El Silencio de los Corderos (Drama)
(48, 3, 1), (48, 2, 1), -- Parque Jurásico (Ciencia Ficción, Aventura)
(49, 4, 1), -- La Lista de Schindler (Drama)
(50, 4, 1), -- El Indomable Will Hunting (Drama)
(51, 4, 1), (51, 1, 1), -- Infiltrados (Drama, Acción)
(52, 3, 1), -- Avatar (Ciencia Ficción)
(53, 1, 1), (53, 3, 1), -- Deadpool y Wolverine (Acción, Ciencia Ficción)
(54, 4, 1); -- Sin Lugar para los Débiles (Drama)