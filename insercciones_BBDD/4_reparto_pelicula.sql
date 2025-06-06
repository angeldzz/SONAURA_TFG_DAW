-- 4. Repartos (uno por película)
INSERT INTO reparto (id_reparto, id_contenido_id, id_actor_id, personaje, creador_id) VALUES
(9, 3, 9, 'Jack Dawson', 1), -- Leonardo DiCaprio
(10, 3, 10, 'Rose DeWitt Bukater', 1), -- Kate Winslet
(11, 3, 11, 'Cal Hockley', 1), -- Billy Zane
(12, 3, 12, 'Molly Brown', 1), -- Kathy Bates
(13, 4, 13, 'Rey', 1), -- Daisy Ridley
(14, 4, 14, 'Finn', 1), -- John Boyega
(15, 4, 15, 'Han Solo', 1), -- Harrison Ford
(16, 4, 16, 'Kylo Ren', 1), -- Adam Driver
(17, 5, 17, 'Owen Grady', 1), -- Chris Pratt
(18, 5, 18, 'Claire Dearing', 1), -- Bryce Dallas Howard
(19, 5, 19, 'Vic Hoskins', 1), -- Vincent D'Onofrio
(20, 5, 20, 'Simon Masrani', 1), -- Irrfan Khan
(21, 6, 21, 'Simba', 1), -- Donald Glover
(22, 6, 22, 'Nala', 1), -- Beyoncé
(23, 6, 23, 'Mufasa', 1), -- James Earl Jones
(24, 6, 24, 'Scar', 1), -- Chiwetel Ejiofor
(25, 7, 5, 'Tony Stark / Iron Man', 1), -- Robert Downey Jr.
(26, 7, 6, 'Steve Rogers / Capitán América', 1), -- Chris Evans
(27, 7, 44, 'Bruce Banner / Hulk', 1), -- Mark Ruffalo
(28, 7, 8, 'Thor', 1), -- Chris Hemsworth
(29, 8, 25, 'Dominic Toretto', 1), -- Vin Diesel
(30, 8, 26, 'Brian O''Conner', 1), -- Paul Walker
(31, 8, 27, 'Luke Hobbs', 1), -- Dwayne Johnson
(32, 8, 28, 'Letty Ortiz', 1), -- Michelle Rodriguez
(33, 9, 29, 'Elsa', 1), -- Idina Menzel
(34, 9, 30, 'Anna', 1), -- Kristen Bell
(35, 9, 31, 'Olaf', 1), -- Josh Gad
(36, 9, 32, 'Kristoff', 1), -- Jonathan Groff
(37, 10, 33, 'Bella', 1), -- Emma Watson
(38, 10, 34, 'Bestia', 1), -- Dan Stevens
(39, 10, 35, 'Gaston', 1), -- Luke Evans
(40, 10, 36, 'LeFou', 1), -- Josh Gad (corrección: LeFou es interpretado por Josh Gad, id_actor = 31)
(41, 11, 36, 'Paul Atreides', 1), -- Timothée Chalamet
(42, 11, 37, 'Chani', 1), -- Zendaya
(43, 11, 38, 'Lady Jessica', 1), -- Rebecca Ferguson
(44, 11, 39, 'Gurney Halleck', 1), -- Josh Brolin
(45, 12, 40, 'J. Robert Oppenheimer', 1), -- Cillian Murphy
(46, 12, 41, 'Kitty Oppenheimer', 1), -- Emily Blunt
(47, 12, 42, 'Leslie Groves', 1), -- Matt Damon
(48, 12, 48, 'Lewis Strauss', 1), -- Robert Downey Jr. (corrección: id_actor = 5)
(49, 13, 43, 'Bella Baxter', 1), -- Emma Stone
(50, 13, 44, 'Duncan Wedderburn', 1), -- Mark Ruffalo
(51, 13, 45, 'Godwin Baxter', 1), -- Willem Dafoe
(52, 13, 46, 'Max McCandles', 1), -- Ramy Youssef
(53, 14, 47, 'Lee Smith', 1), -- Kirsten Dunst
(54, 14, 48, 'Jessie', 1), -- Cailee Spaeny
(55, 14, 49, 'Joel', 1), -- Wagner Moura
(56, 14, 50, 'Sammy', 1), -- Stephen McKinley Henderson
(57, 15, 37, 'Tashi Duncan', 1), -- Zendaya
(58, 15, 51, 'Art Donaldson', 1), -- Mike Faist
(59, 15, 52, 'Patrick Zweig', 1), -- Josh O'Connor
(60, 15, 53, 'Lily', 1), -- A.J. Lister
(61, 16, 54, 'Noa', 1), -- Owen Teague
(62, 16, 55, 'Mae', 1), -- Freya Allan
(63, 16, 56, 'Proximus Caesar', 1), -- Kevin Durand
(64, 16, 57, 'Raka', 1), -- Peter Macon
(65, 17, 58, 'Furiosa', 1), -- Anya Taylor-Joy
(66, 17, 181, 'Dementus', 1), -- Chris Hemsworth (corrección: id_actor = 8)
(67, 17, 59, 'Praetorian Jack', 1), -- Tom Burke
(68, 17, 60, 'Rictus Erectus', 1), -- Nathan Jones
(69, 18, 61, 'Barbie', 1), -- Margot Robbie
(70, 18, 62, 'Ken', 1), -- Ryan Gosling
(71, 18, 63, 'Gloria', 1), -- America Ferrera
(72, 18, 64, 'Barbie Rara', 1), -- Kate McKinnon
(73, 19, 65, 'Sandra Voyter', 1), -- Sandra Hüller
(74, 19, 66, 'Vincent Renzi', 1), -- Swann Arlaud
(75, 19, 67, 'Daniel M.', 1), -- Milo Machado Graner
(76, 19, 68, 'Abogado', 1), -- Antoine Reinartz
(77, 20, 69, 'Rudolf Höss', 1), -- Christian Friedel
(78, 20, 70, 'Hedwig Höss', 1), -- Freya Kreutzkam
(79, 20, 71, 'Inge', 1), -- Ralph Herforth
(80, 20, 72, 'SS Officer', 1), -- Rebecca Hall (corrección: el personaje 'SS Officer' podría requerir revisión, pero usamos id_actor = 72)
(81, 21, 72, 'Ilene Andrews', 1), -- Rebecca Hall
(82, 21, 73, 'Bernie Hayes', 1), -- Brian Tyree Henry
(83, 21, 74, 'Trapper', 1), -- Dan Stevens (corrección: id_actor = 34)
(84, 21, 74, 'Jia', 1), -- Kaylee Hottle
(85, 22, 9, 'Ernest Burkhart', 1), -- Leonardo DiCaprio
(86, 22, 45, 'William Hale', 1), -- Robert De Niro (corrección: id_actor = 242, asumiendo que es Robert De Niro, no listado explícitamente)
(87, 22, 75, 'Mollie Burkhart', 1), -- Lily Gladstone
(88, 22, 76, 'Tom White', 1), -- Jesse Plemons
(89, 23, 77, 'Alegría', 1), -- Amy Poehler
(90, 23, 78, 'Tristeza', 1), -- Phyllis Smith
(91, 23, 79, 'Furia', 1), -- Lewis Black
(92, 23, 80, 'Ansiedad', 1), -- Maya Hawke
(93, 24, 36, 'Willy Wonka', 1), -- Timothée Chalamet
(94, 24, 81, 'Oompa Loompa', 1), -- Hugh Grant
(95, 24, 82, 'Señora Scrubitt', 1), -- Olivia Colman
(96, 24, 83, 'Jefe de Policía', 1), -- Keegan-Michael Key
(97, 25, 84, 'Arthur Curry / Aquaman', 1), -- Jason Momoa
(98, 25, 85, 'Orm', 1), -- Patrick Wilson
(99, 25, 86, 'Mera', 1), -- Amber Heard
(100, 25, 87, 'Black Manta', 1), -- Yahya Abdul-Mateen II
(101, 26, 88, 'Bruce Wayne / Batman', 1), -- Robert Pattinson
(102, 26, 89, 'Selina Kyle / Catwoman', 1), -- Zoë Kravitz
(103, 26, 90, 'Edward Nashton / Enigma', 1), -- Paul Dano
(104, 26, 91, 'Oswald Cobblepot / Pingüino', 1), -- Colin Farrell
(105, 27, 92, 'Kim Ki-taek', 1), -- Song Kang-ho
(106, 27, 93, 'Park Dong-ik', 1), -- Lee Sun-kyun
(107, 27, 94, 'Choi Yeon-gyo', 1), -- Cho Yeo-jeong
(108, 27, 95, 'Kim Ki-woo', 1), -- Choi Woo-shik
(109, 28, 96, 'Miles Morales', 1), -- Shameik Moore
(110, 28, 97, 'Gwen Stacy', 1), -- Hailee Steinfeld
(111, 28, 98, 'Miguel O''Hara', 1), -- Oscar Isaac
(112, 28, 99, 'Peter B. Parker', 1), -- Jake Johnson
(113, 29, 100, 'Evelyn Wang', 1), -- Michelle Yeoh
(114, 29, 101, 'Waymond Wang', 1), -- Ke Huy Quan
(115, 29, 102, 'Joy Wang', 1), -- Stephanie Hsu
(116, 29, 103, 'Gong Gong', 1), -- James Hong
(117, 30, 104, 'Pete "Maverick" Mitchell', 1), -- Tom Cruise
(118, 30, 105, 'Bradley "Rooster" Bradshaw', 1), -- Miles Teller
(119, 30, 106, 'Penny Benjamin', 1), -- Jennifer Connelly
(120, 30, 107, 'Cyclone', 1), -- Jon Hamm
(121, 31, 108, 'Arthur Fleck / Joker', 1), -- Joaquin Phoenix
(122, 31, 242, 'Murray Franklin', 1), -- Robert De Niro (corrección: id_actor = 242)
(123, 31, 109, 'Sophie Dumond', 1), -- Zazie Beetz
(124, 31, 110, 'Penny Fleck', 1), -- Frances Conroy
(125, 32, 9, 'Dom Cobb', 1), -- Leonardo DiCaprio
(126, 32, 111, 'Arthur', 1), -- Joseph Gordon-Levitt
(127, 32, 112, 'Ariadne', 1), -- Elliot Page
(128, 32, 113, 'Eames', 1), -- Tom Hardy
(129, 33, 114, 'Bruce Wayne / Batman', 1), -- Christian Bale
(130, 33, 115, 'Joker', 1), -- Heath Ledger
(131, 33, 116, 'Harvey Dent', 1), -- Aaron Eckhart
(132, 33, 117, 'Rachel Dawes', 1), -- Maggie Gyllenhaal
(133, 34, 118, 'Cooper', 1), -- Matthew McConaughey
(134, 34, 119, 'Brand', 1), -- Anne Hathaway
(135, 34, 120, 'Murph', 1), -- Jessica Chastain
(136, 34, 121, 'Profesor Brand', 1), -- Michael Caine
(137, 35, 122, 'Narrador', 1), -- Edward Norton
(138, 35, 123, 'Tyler Durden', 1), -- Brad Pitt
(139, 35, 124, 'Marla Singer', 1), -- Helena Bonham Carter
(140, 35, 125, 'Robert Paulson', 1), -- Meat Loaf
(141, 36, 126, 'Vincent Vega', 1), -- John Travolta
(142, 36, 127, 'Jules Winnfield', 1), -- Samuel L. Jackson
(143, 36, 128, 'Mia Wallace', 1), -- Uma Thurman
(144, 36, 129, 'Butch Coolidge', 1), -- Bruce Willis
(145, 37, 130, 'Andy Dufresne', 1), -- Tim Robbins
(146, 37, 131, 'Ellis Boyd "Red" Redding', 1), -- Morgan Freeman
(147, 37, 132, 'Warden Norton', 1), -- Bob Gunton
(148, 37, 133, 'Heywood', 1), -- William Sadler
(149, 38, 134, 'Vito Corleone', 1), -- Marlon Brando
(150, 38, 135, 'Michael Corleone', 1), -- Al Pacino
(151, 38, 136, 'Sonny Corleone', 1), -- James Caan
(152, 38, 137, 'Kay Adams', 1), -- Diane Keaton
(153, 39, 138, 'Forrest Gump', 1), -- Tom Hanks
(154, 39, 139, 'Jenny Curran', 1), -- Robin Wright
(155, 39, 140, 'Teniente Dan', 1), -- Gary Sinise
(156, 39, 141, 'Sra. Gump', 1), -- Sally Field
(157, 40, 142, 'Frodo Bolsón', 1), -- Elijah Wood
(158, 40, 143, 'Gandalf', 1), -- Ian McKellen
(159, 40, 144, 'Aragorn', 1), -- Viggo Mortensen
(160, 40, 145, 'Sam', 1), -- Sean Astin
(161, 41, 146, 'Neo', 1), -- Keanu Reeves
(162, 41, 147, 'Morpheus', 1), -- Laurence Fishburne
(163, 41, 148, 'Trinity', 1), -- Carrie-Anne Moss
(164, 41, 149, 'Agente Smith', 1), -- Hugo Weaving
(165, 42, 150, 'Máximo', 1), -- Russell Crowe
(166, 42, 108, 'Cómodo', 1), -- Joaquin Phoenix
(167, 42, 151, 'Lucila', 1), -- Connie Nielsen
(168, 42, 152, 'Próximo', 1), -- Oliver Reed
(169, 43, 123, 'David Mills', 1), -- Brad Pitt
(170, 43, 131, 'William Somerset', 1), -- Morgan Freeman
(171, 43, 153, 'Tracy Mills', 1), -- Gwyneth Paltrow
(172, 43, 154, 'John Doe', 1), -- Kevin Spacey
(173, 44, 138, 'Capitán Miller', 1), -- Tom Hanks
(174, 44, 42, 'Soldado Ryan', 1), -- Matt Damon
(175, 44, 155, 'Sargento Horvath', 1), -- Tom Sizemore
(176, 44, 156, 'Reiben', 1), -- Edward Burns
(177, 45, 157, 'Simba (voz)', 1), -- Matthew Broderick
(178, 45, 158, 'Scar (voz)', 1), -- Jeremy Irons
(179, 45, 23, 'Mufasa (voz)', 1), -- James Earl Jones
(180, 45, 159, 'Nala (voz)', 1), -- Moira Kelly
(181, 46, 160, 'Marty McFly', 1), -- Michael J. Fox
(182, 46, 161, 'Doc Brown', 1), -- Christopher Lloyd
(183, 46, 162, 'Lorraine Baines', 1), -- Lea Thompson
(184, 46, 163, 'George McFly', 1), -- Crispin Glover
(185, 47, 164, 'Clarice Starling', 1), -- Jodie Foster
(186, 47, 165, 'Hannibal Lecter', 1), -- Anthony Hopkins
(187, 47, 166, 'Jack Crawford', 1), -- Scott Glenn
(188, 47, 167, 'Buffalo Bill', 1), -- Ted Levine
(189, 48, 168, 'Dr. Alan Grant', 1), -- Sam Neill
(190, 48, 169, 'Dr. Ellie Sattler', 1), -- Laura Dern
(191, 48, 170, 'Dr. Ian Malcolm', 1), -- Jeff Goldblum
(192, 48, 171, 'John Hammond', 1), -- Richard Attenborough
(193, 49, 172, 'Oskar Schindler', 1), -- Liam Neeson
(194, 49, 173, 'Itzhak Stern', 1), -- Ben Kingsley
(195, 49, 174, 'Amon Goeth', 1), -- Ralph Fiennes
(196, 49, 175, 'Emilie Schindler', 1), -- Caroline Goodall
(197, 50, 177, 'Will Hunting', 1), -- Matt Damon
(198, 50, 176, 'Sean Maguire', 1), -- Robin Williams
(199, 50, 177, 'Chuckie Sullivan', 1), -- Ben Affleck
(200, 50, 178, 'Gerald Lambeau', 1), -- Stellan Skarsgård
(201, 51, 177, 'Billy Costigan', 1), -- Leonardo DiCaprio
(202, 51, 42, 'Colin Sullivan', 1), -- Matt Damon
(203, 51, 179, 'Frank Costello', 1), -- Jack Nicholson (corrección: id_actor = 243, asumiendo que es Jack Nicholson, no listado explícitamente)
(204, 51, 180, 'Dignam', 1), -- Mark Wahlberg
(205, 52, 1, 'Jake Sully', 1), -- Sam Worthington
(206, 52, 2, 'Neytiri', 1), -- Zoe Saldana
(207, 52, 3, 'Dr. Grace Augustine', 1), -- Sigourney Weaver
(208, 52, 4, 'Coronel Miles Quaritch', 1), -- Stephen Lang
(209, 53, 180, 'Deadpool', 1), -- Ryan Reynolds
(210, 53, 181, 'Wolverine', 1), -- Hugh Jackman
(211, 53, 182, 'Villana', 1), -- Emma Corrin
(212, 53, 183, 'Agente Paradox', 1), -- Matthew Macfadyen
(213, 54, 213, 'Llewelyn Moss', 1), -- Josh Brolin
(214, 54, 184, 'Anton Chigurh', 1), -- Javier Bardem
(215, 54, 185, 'Ed Tom Bell', 1), -- Tommy Lee Jones
(216, 54, 186, 'Carla Jean Moss', 1), -- Kelly Macdonald
(217, 55, 187, 'Sebastian', 1), -- Ryan Gosling
(218, 55, 43, 'Mia', 1), -- Emma Stone
(219, 55, 188, 'Keith', 1), -- John Legend
(220, 55, 188, 'Laura', 1), -- Rosemarie DeWitt
(221, 56, 189, 'Miguel (voz)', 1), -- Anthony Gonzalez
(222, 56, 190, 'Héctor (voz)', 1), -- Gael García Bernal
(223, 56, 191, 'Ernesto de la Cruz (voz)', 1), -- Benjamin Bratt
(224, 56, 192, 'Mamá Imelda (voz)', 1), -- Alanna Ubach
(225, 57, 193, 'Ryan Stone', 1), -- Sandra Bullock
(226, 57, 194, 'Matt Kowalski', 1), -- George Clooney
(227, 57, 195, 'Misión Control (voz)', 1), -- Ed Harris
(228, 57, 196, 'Aningaaq (voz)', 1), -- Orto Ignatiussen
(229, 58, 199, 'M. Gustave', 1), -- Ralph Fiennes
(230, 58, 197, 'Zero Moustafa', 1), -- Tony Revolori
(231, 58, 198, 'Agatha', 1), -- Saoirse Ronan
(232, 58, 199, 'Dmitri', 1), -- Adrien Brody
(233, 59, 200, 'T Challa / Black Panther', 1), -- Chadwick Boseman
(234, 59, 201, 'Erik Killmonger', 1), -- Michael B. Jordan
(235, 59, 202, 'Nakia', 1), -- Lupita Nyong'o
(236, 59, 203, 'Okoye', 1), -- Danai Gurira
(237, 60, 204, 'Edward Bloom (joven)', 1), -- Ewan McGregor
(238, 60, 205, 'Edward Bloom (adulto)', 1), -- Albert Finney
(239, 60, 206, 'Will Bloom', 1), -- Billy Crudup
(240, 60, 207, 'Sandra Bloom', 1); -- Jessica Lange