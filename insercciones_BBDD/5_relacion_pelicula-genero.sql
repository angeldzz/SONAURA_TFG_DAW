-- 5. Relacionar películas con géneros
INSERT INTO contenidos_generos (id_contenido_id, id_genero_id, creador_id) VALUES
-- (1) Rebel Moon Parte 1 → Acción, Ciencia Ficción (ya están) + Aventura, Fantasía
(1, 2, 1), (1, 5, 1),
-- (2) The Marvels → Acción, Aventura (ya están) + Ciencia Ficción, Fantasía
(2, 3, 1), (2, 5, 1),
-- (3) Napoleón → Drama (ya está) + Histórica, Bélica, Biográfica
(3, 16, 1), (3, 15, 1), (3, 18, 1),
-- (4) Los Juegos del Hambre: Balada de Pájaros Cantores y Serpientes → Ciencia Ficción (ya está) + Aventura, Suspense, Drama
(4, 2, 1), (4, 8, 1), (4, 4, 1),
-- (5) Elemental → Aventura (ya está) + Fantasía, Animación, Romance
(5, 5, 1), (5, 10, 1), (5, 9, 1),
-- (6) Wish: El Poder de los Deseos → Fantasía (ya está) + Animación, Musical, Aventura
(6, 10, 1), (6, 12, 1), (6, 2, 1),
-- (7) Rápidos y Furiosos X → Acción (ya está) + Aventura, Crimen
(7, 2, 1), (7, 13, 1),
-- (8) The Equalizer 3 → Acción (ya está) + Crimen, Suspense
(8, 13, 1), (8, 8, 1),
-- (9) La Sirenita (live action) → Fantasía (ya está) + Musical, Romance
(9, 12, 1), (9, 9, 1),
-- (10) Trolls 3: Se Armó la Banda → Fantasía (ya está) + Animación, Musical, Comedia
(10, 10, 1), (10, 12, 1), (10, 6, 1),
-- (11) Dune: Parte 2 → +Fantasía
(11, 5, 1),
-- (12) Oppenheimer → +Histórica, Biográfica
(12, 16, 1), (12, 18, 1),
-- (13) Pobres Criaturas → +Romance
(13, 9, 1),
-- (14) Civil War → +Ciencia Ficción
(14, 3, 1),
-- (15) Rivales → +Romance
(15, 9, 1),
-- (17) Furiosa: De la Saga Mad Max → +Ciencia Ficción
(17, 3, 1),
-- (18) Barbie → +Comedia
(18, 6, 1),
-- (19) Anatomía de una Caída → +Suspense
(19, 8, 1),
-- (22) Los Asesinos de la Luna → +Crimen, Histórica
(22, 13, 1), (22, 16, 1),
-- (24) Wonka → +Musical
(24, 12, 1),
-- (25) Aquaman y el Reino Perdido → +Ciencia Ficción
(25, 3, 1),
-- (26) The Batman → +Crimen, Misterio
(26, 13, 1), (26, 14, 1),
-- (27) Parásitos → +Suspense, Crimen
(27, 8, 1), (27, 13, 1),
-- (28) Spider-Man: A Través del Spider-Verso → +Animación
(28, 10, 1),
-- (29) Todo a la Vez en Todas Partes → +Comedia
(29, 6, 1),
-- (31) Joker → +Crimen, Psicológico (usamos Drama para esto), Biográfica (ficticia)
(31, 13, 1), (31, 18, 1),
-- (33) El Caballero Oscuro → +Crimen, Misterio
(33, 13, 1), (33, 14, 1),
-- (34) Interstellar → +Drama
(34, 4, 1),
-- (35) El Club de la Pelea → +Psicológico (Drama), Misterio
(35, 14, 1),
-- (36) Tiempos Violentos → +Crimen
(36, 13, 1),
-- (38) El Padrino → +Crimen
(38, 13, 1),
-- (39) Forrest Gump → +Romance, Biográfica
(39, 9, 1), (39, 18, 1),
-- (41) Matrix → +Filosófica/Noir (usamos Noir)
(41, 20, 1),
-- (42) Gladiador → +Histórica
(42, 16, 1),
-- (44) Rescatando al Soldado Ryan → +Bélica, Histórica
(44, 15, 1), (44, 16, 1),
-- (45) El Rey León → +Animación, Musical
(45, 10, 1), (45, 12, 1),
-- (46) Volver al Futuro → +Ciencia Ficción
(46, 3, 1),
-- (47) El Silencio de los Corderos → +Misterio, Suspense, Crimen
(47, 14, 1), (47, 8, 1), (47, 13, 1),
-- (48) Parque Jurásico → +Suspense
(48, 8, 1),
-- (49) La Lista de Schindler → +Histórica, Biográfica
(49, 16, 1), (49, 18, 1),
-- (50) El Indomable Will Hunting → +Romance
(50, 9, 1),
-- (51) Infiltrados → +Crimen, Suspense
(51, 13, 1), (51, 8, 1),
-- (52) Avatar → +Fantasía
(52, 5, 1),
-- (54) Sin Lugar para los Débiles → +Crimen, Suspense
(54, 13, 1), (54, 8, 1),
-- (55) La La Land → +Musical, Romance
(55, 12, 1), (55, 9, 1),
-- (56) Coco → +Animación, Musical
(56, 10, 1), (56, 12, 1),
-- (57) Gravity → +Suspense
(57, 8, 1),
-- (58) El Gran Hotel Budapest → +Comedia, Crimen
(58, 6, 1), (58, 13, 1),
-- (59) Black Panther → +Fantasía
(59, 5, 1),
-- (60) El Gran Pez → +Aventura, Comedia
(60, 2, 1), (60, 6, 1);
