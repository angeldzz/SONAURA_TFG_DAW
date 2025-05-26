-- 5. Relacionar películas con géneros (todas las películas con al menos 2 géneros lógicos)
INSERT INTO contenidos_generos (id_contenido_id, id_genero_id, creador_id) VALUES
-- (1) Avatar → Ciencia Ficción, Aventura, Fantasía, Acción
(1, 3, 1), (1, 2, 1), (1, 5, 1), (1, 1, 1),
-- (2) Avengers: Endgame → Acción, Ciencia Ficción, Aventura, Fantasía
(2, 1, 1), (2, 3, 1), (2, 2, 1), (2, 5, 1),
-- (3) Titanic → Romance, Drama, Histórica
(3, 9, 1), (3, 4, 1), (3, 16, 1),
-- (4) Star Wars: The Force Awakens → Ciencia Ficción, Aventura, Acción, Fantasía
(4, 3, 1), (4, 2, 1), (4, 1, 1), (4, 5, 1),
-- (5) Jurassic World → Ciencia Ficción, Aventura, Acción, Suspense
(5, 3, 1), (5, 2, 1), (5, 1, 1), (5, 8, 1),
-- (6) The Lion King (2019) → Animación, Aventura, Drama, Musical
(6, 10, 1), (6, 2, 1), (6, 4, 1), (6, 12, 1),
-- (7) The Avengers → Acción, Ciencia Ficción, Aventura
(7, 1, 1), (7, 3, 1), (7, 2, 1),
-- (8) Furious 7 → Acción, Aventura, Crimen
(8, 1, 1), (8, 2, 1), (8, 13, 1),
-- (9) Frozen II → Animación, Aventura, Fantasía, Musical
(9, 10, 1), (9, 2, 1), (9, 5, 1), (9, 12, 1),
-- (10) Beauty and the Beast → Romance, Fantasía, Musical
(10, 9, 1), (10, 5, 1), (10, 12, 1),
-- (11) Dune: Parte 2 → Ciencia Ficción, Aventura, Fantasía
(11, 3, 1), (11, 2, 1), (11, 5, 1),
-- (12) Oppenheimer → Drama, Histórica, Biográfica
(12, 4, 1), (12, 16, 1), (12, 18, 1),
-- (13) Pobres Criaturas → Drama, Ciencia Ficción, Romance
(13, 4, 1), (13, 3, 1), (13, 9, 1),
-- (14) Civil War → Drama, Ciencia Ficción, Suspense
(14, 4, 1), (14, 3, 1), (14, 8, 1),
-- (15) Rivales → Drama, Deporte, Romance
(15, 4, 1), (15, 19, 1), (15, 9, 1),
-- (16) El Planeta de los Simios: Nuevo Reino → Ciencia Ficción, Acción, Aventura
(16, 3, 1), (16, 1, 1), (16, 2, 1),
-- (17) Furiosa: De la Saga Mad Max → Acción, Ciencia Ficción, Aventura
(17, 1, 1), (17, 3, 1), (17, 2, 1),
-- (18) Barbie → Fantasía, Comedia, Drama
(18, 5, 1), (18, 6, 1), (18, 4, 1),
-- (19) Anatomía de una Caída → Drama, Suspense, Misterio
(19, 4, 1), (19, 8, 1), (19, 14, 1),
-- (20) La Zona de Interés → Drama, Histórica, Bélica
(20, 4, 1), (20, 16, 1), (20, 15, 1),
-- (21) Godzilla y Kong: El Nuevo Imperio → Acción, Ciencia Ficción, Aventura
(21, 1, 1), (21, 3, 1), (21, 2, 1),
-- (22) Los Asesinos de la Luna → Drama, Crimen, Histórica
(22, 4, 1), (22, 13, 1), (22, 16, 1),
-- (23) Del Revés 2 → Animación, Comedia, Drama
(23, 10, 1), (23, 6, 1), (23, 4, 1),
-- (24) Wonka → Fantasía, Musical, Comedia
(24, 5, 1), (24, 12, 1), (24, 6, 1),
-- (25) Aquaman y el Reino Perdido → Acción, Ciencia Ficción, Aventura
(25, 1, 1), (25, 3, 1), (25, 2, 1),
-- (26) The Batman → Drama, Crimen, Misterio
(26, 4, 1), (26, 13, 1), (26, 14, 1),
-- (27) Parásitos → Drama, Suspense, Crimen
(27, 4, 1), (27, 8, 1), (27, 13, 1),
-- (28) Spider-Man: A Través del Spider-Verso → Acción, Animación, Aventura
(28, 1, 1), (28, 10, 1), (28, 2, 1),
-- (29) Todo a la Vez en Todas Partes → Ciencia Ficción, Comedia, Drama
(29, 3, 1), (29, 6, 1), (29, 4, 1),
-- (30) Top Gun: Maverick → Acción, Drama, Aventura
(30, 1, 1), (30, 4, 1), (30, 2, 1),
-- (31) Joker → Drama, Crimen, Biográfica
(31, 4, 1), (31, 13, 1), (31, 18, 1),
-- (32) Origen → Ciencia Ficción, Suspense, Acción
(32, 3, 1), (32, 8, 1), (32, 1, 1),
-- (33) El Caballero Oscuro → Acción, Crimen, Misterio
(33, 1, 1), (33, 13, 1), (33, 14, 1),
-- (34) Interstellar → Ciencia Ficción, Drama, Aventura
(34, 3, 1), (34, 4, 1), (34, 2, 1),
-- (35) El Club de la Pelea → Drama, Misterio, Suspense
(35, 4, 1), (35, 14, 1), (35, 8, 1),
-- (36) Tiempos Violentos → Drama, Crimen, Comedia
(36, 4, 1), (36, 13, 1), (36, 6, 1),
-- (37) Cadena Perpetua → Drama, Crimen
(37, 4, 1), (37, 13, 1),
-- (38) El Padrino → Drama, Crimen
(38, 4, 1), (38, 13, 1),
-- (39) Forrest Gump → Drama, Romance, Biográfica
(39, 4, 1), (39, 9, 1), (39, 18, 1),
-- (40) El Señor de los Anillos: La Comunidad del Anillo → Fantasía, Aventura, Acción
(40, 5, 1), (40, 2, 1), (40, 1, 1),
-- (41) Matrix → Ciencia Ficción, Acción, Noir
(41, 3, 1), (41, 1, 1), (41, 20, 1),
-- (42) Gladiador → Acción, Histórica, Drama
(42, 1, 1), (42, 16, 1), (42, 4, 1),
-- (43) Siete → Suspense, Crimen, Misterio
(43, 8, 1), (43, 13, 1), (43, 14, 1),
-- (44) Rescatando al Soldado Ryan → Bélica, Histórica, Drama
(44, 15, 1), (44, 16, 1), (44, 4, 1),
-- (45) El Rey León → Animación, Musical, Aventura
(45, 10, 1), (45, 12, 1), (45, 2, 1),
-- (46) Volver al Futuro → Ciencia Ficción, Aventura, Comedia
(46, 3, 1), (46, 2, 1), (46, 6, 1),
-- (47) El Silencio de los Corderos → Misterio, Suspense, Crimen
(47, 14, 1), (47, 8, 1), (47, 13, 1),
-- (48) Parque Jurásico → Ciencia Ficción, Suspense, Aventura
(48, 3, 1), (48, 8, 1), (48, 2, 1),
-- (49) La Lista de Schindler → Histórica, Biográfica, Drama
(49, 16, 1), (49, 18, 1), (49, 4, 1),
-- (50) El Indomable Will Hunting → Drama, Romance
(50, 4, 1), (50, 9, 1),
-- (51) Infiltrados → Crimen, Suspense, Drama
(51, 13, 1), (51, 8, 1), (51, 4, 1),
-- (52) Avatar 2 → Ciencia Ficción, Aventura, Fantasía
(52, 3, 1), (52, 2, 1), (52, 5, 1),
-- (53) Deadpool y Wolverine → Acción, Comedia, Ciencia Ficción
(53, 1, 1), (53, 6, 1), (53, 3, 1),
-- (54) Sin Lugar para los Débiles → Crimen, Suspense, Drama
(54, 13, 1), (54, 8, 1), (54, 4, 1),
-- (55) La La Land → Musical, Romance, Drama
(55, 12, 1), (55, 9, 1), (55, 4, 1),
-- (56) Coco → Animación, Musical, Aventura
(56, 10, 1), (56, 12, 1), (56, 2, 1),
-- (57) Gravity → Ciencia Ficción, Suspense, Drama
(57, 3, 1), (57, 8, 1), (57, 4, 1),
-- (58) El Gran Hotel Budapest → Comedia, Crimen, Aventura
(58, 6, 1), (58, 13, 1), (58, 2, 1),
-- (59) Black Panther → Acción, Fantasía, Ciencia Ficción
(59, 1, 1), (59, 5, 1), (59, 3, 1),
-- (60) El Gran Pez → Aventura, Comedia, Fantasía
(60, 2, 1), (60, 6, 1), (60, 5, 1);