-- 6. Relacionar series con géneros
INSERT INTO contenidos_generos (id_contenido_id, id_genero_id, creador_id) VALUES
-- (61) Game of Thrones → Fantasía, Acción, Drama
(61, 5, 1), (61, 1, 1), (61, 4, 1),
-- (62) Breaking Bad → Crimen, Drama, Suspense
(62, 13, 1), (62, 4, 1), (62, 8, 1),
-- (63) Stranger Things → Ciencia Ficción, Suspense, Aventura
(63, 3, 1), (63, 8, 1), (63, 2, 1),
-- (64) The Sopranos → Crimen, Drama
(64, 13, 1), (64, 4, 1),
-- (65) The Wire → Crimen, Drama
(65, 13, 1), (65, 4, 1),
-- (66) Better Call Saul → Crimen, Drama, Comedia
(66, 13, 1), (66, 4, 1), (66, 6, 1),
-- (67) Westworld → Ciencia Ficción, Suspense, Drama
(67, 3, 1), (67, 8, 1), (67, 4, 1),
-- (68) The Crown → Histórica, Drama, Biográfica
(68, 16, 1), (68, 4, 1), (68, 18, 1),
-- (69) True Detective → Crimen, Misterio, Suspense
(69, 13, 1), (69, 14, 1), (69, 8, 1),
-- (70) Fargo → Crimen, Comedia, Suspense
(70, 13, 1), (70, 6, 1), (70, 8, 1),
-- (71) Succession → Drama, Comedia
(71, 4, 1), (71, 6, 1),
-- (72) The Mandalorian → Ciencia Ficción, Aventura, Acción
(72, 3, 1), (72, 2, 1), (72, 1, 1),
-- (73) The Office → Comedia
(73, 6, 1),
-- (74) Friends → Comedia, Romance
(74, 6, 1), (74, 9, 1),
-- (75) The Simpsons → Animación, Comedia
(75, 10, 1), (75, 6, 1),
-- (76) House of the Dragon → Fantasía, Drama, Acción
(76, 5, 1), (76, 4, 1), (76, 1, 1),
-- (77) Lost → Misterio, Ciencia Ficción, Drama
(77, 14, 1), (77, 3, 1), (77, 4, 1),
-- (78) Mad Men → Drama, Histórica
(78, 4, 1), (78, 16, 1),
-- (79) The Walking Dead → Terror, Drama, Suspense
(79, 7, 1), (79, 4, 1), (79, 8, 1),
-- (80) Black Mirror → Ciencia Ficción, Suspense, Drama
(80, 3, 1), (80, 8, 1), (80, 4, 1),
-- (81) Sherlock → Misterio, Drama, Crimen
(81, 14, 1), (81, 4, 1), (81, 13, 1),
-- (82) The Witcher → Fantasía, Aventura, Acción
(82, 5, 1), (82, 2, 1), (82, 1, 1),
-- (83) Narcos → Crimen, Drama, Suspense
(83, 13, 1), (83, 4, 1), (83, 8, 1),
-- (84) The Boys → Acción, Ciencia Ficción, Comedia
(84, 1, 1), (84, 3, 1), (84, 6, 1),
-- (85) Ozark → Crimen, Suspense, Drama
(85, 13, 1), (85, 8, 1), (85, 4, 1),
-- (86) Chernobyl → Histórica, Drama, Suspense
(86, 16, 1), (86, 4, 1), (86, 8, 1),
-- (87) The Queen's Gambit → Drama, Biográfica
(87, 4, 1), (87, 18, 1),
-- (88) Mindhunter → Crimen, Suspense, Drama
(88, 13, 1), (88, 8, 1), (88, 4, 1),
-- (89) The Handmaid's Tale → Ciencia Ficción, Drama, Suspense
(89, 3, 1), (89, 4, 1), (89, 8, 1),
-- (90) Vikings → Histórica, Acción, Drama
(90, 16, 1), (90, 1, 1), (90, 4, 1),
-- (91) Peaky Blinders → Crimen, Drama, Histórica
(91, 13, 1), (91, 4, 1), (91, 16, 1),
-- (92) The Last of Us → Drama, Ciencia Ficción, Suspense
(92, 4, 1), (92, 3, 1), (92, 8, 1),
-- (93) Euphoria → Drama, Romance
(93, 4, 1), (93, 9, 1),
-- (94) Yellowstone → Drama, Western
(94, 4, 1), (94, 17, 1),
-- (95) Ted Lasso → Comedia, Deporte
(95, 6, 1), (95, 19, 1),
-- (96) House M.D. → Drama, Misterio
(96, 4, 1), (96, 14, 1),
-- (97) Dexter → Crimen, Suspense, Drama
(97, 13, 1), (97, 8, 1), (97, 4, 1),
-- (98) The Big Bang Theory → Comedia
(98, 6, 1),
-- (99) Modern Family → Comedia
(99, 6, 1),
-- (100) The West Wing → Drama
(100, 4, 1),
-- (101) Boardwalk Empire → Crimen, Drama, Histórica
(101, 13, 1), (101, 4, 1), (101, 16, 1),
-- (102) Sons of Anarchy → Crimen, Drama
(102, 13, 1), (102, 4, 1),
-- (103) The Expanse → Ciencia Ficción, Drama, Suspense
(103, 3, 1), (103, 4, 1), (103, 8, 1),
-- (104) Downton Abbey → Histórica, Drama
(104, 16, 1), (104, 4, 1),
-- (105) Atlanta → Comedia, Drama
(105, 6, 1), (105, 4, 1),
-- (106) Hannibal → Suspense, Crimen, Drama
(106, 8, 1), (106, 13, 1), (106, 4, 1),
-- (107) Fleabag → Comedia, Drama
(107, 6, 1), (107, 4, 1),
-- (108) The Good Place → Comedia, Fantasía
(108, 6, 1), (108, 5, 1),
-- (109) This Is Us → Drama, Romance
(109, 4, 1), (109, 9, 1),
-- (110) Your Honor → Suspense, Crimen, Drama
(110, 8, 1), (110, 13, 1), (110, 4, 1),
-- (111) Loki → Ciencia Ficción, Aventura, Fantasía
(111, 3, 1), (111, 2, 1), (111, 5, 1),
-- (112) Arcane → Animación, Acción, Ciencia Ficción
(112, 10, 1), (112, 1, 1), (112, 3, 1),
-- (113) The Haunting of Hill House → Terror, Drama, Suspense
(113, 7, 1), (113, 4, 1), (113, 8, 1),
-- (114) Bridgerton → Romance, Drama, Histórica
(114, 9, 1), (114, 4, 1), (114, 16, 1),
-- (115) The Umbrella Academy → Ciencia Ficción, Acción, Comedia
(115, 3, 1), (115, 1, 1), (115, 6, 1),
-- (116) Cobra Kai → Acción, Comedia, Deporte
(116, 1, 1), (116, 6, 1), (116, 19, 1),
-- (117) The Morning Show → Drama
(117, 4, 1),
-- (118) Yellowjackets → Suspense, Drama, Misterio
(118, 8, 1), (118, 4, 1), (118, 14, 1),
-- (119) Severance → Suspense, Ciencia Ficción, Drama
(119, 8, 1), (119, 3, 1), (119, 4, 1),
-- (120) Andor → Ciencia Ficción, Acción, Drama
(120, 3, 1), (120, 1, 1), (120, 4, 1);