-- 2. Series de televisión (reconocidas)
INSERT INTO contenidos (id_contenido, titulo, pelicula_serie, eslogan, sinopsis, año_estreno, duracion, director, guionistas, clasificacion, imagen_poster, alt_imagen_poster, imagen_fondo, alt_imagen_fondo, puntuacion, es_exclusivo, fecha_edicion, fecha_creacion, creador_id)
VALUES
(61, 'Game of Thrones', 'serie', 'El invierno se acerca', 'En Westeros, las casas nobles luchan por el Trono de Hierro mientras una antigua amenaza, los Caminantes Blancos, emerge del Norte. Intrigas, batallas y traiciones definen esta épica saga de poder y destino.', 2011, 60, 'David Benioff', 'David Benioff, D.B. Weiss', 'TV-MA', 'posters/GameOfThrones.jpg', 'Game of Thrones', NULL, NULL, 9.3, 0, NOW(), NOW(), 1),
(62, 'Breaking Bad', 'serie', 'De maestro a capo', 'Walter White, un profesor de química con cáncer, se convierte en un narcotraficante para asegurar el futuro de su familia. Su alianza con un exalumno desata una espiral de crimen y consecuencias morales.', 2008, 47, 'Vince Gilligan', 'Vince Gilligan', 'TV-MA', 'posters/BreakingBad.jpg', 'Breaking Bad', NULL, NULL, 9.5, 0, NOW(), NOW(), 1),
(63, 'Stranger Things', 'serie', 'Lo extraño acecha', 'En los 80, un grupo de amigos en Hawkins enfrenta fenómenos sobrenaturales vinculados a un laboratorio secreto. Mientras buscan a su amigo perdido, descubren conspiraciones y un mundo invertido.', 2016, 50, 'The Duffer Brothers', 'The Duffer Brothers', 'TV-14', 'posters/StrangerThings.jpg', 'Stranger Things', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(64, 'The Sopranos', 'serie', 'La familia es todo', 'Tony Soprano, un jefe de la mafia de Nueva Jersey, equilibra su vida criminal con problemas familiares y terapia. Este drama explora el poder, la lealtad y los conflictos internos de un mafioso moderno.', 1999, 55, 'David Chase', 'David Chase', 'TV-MA', 'posters/TheSopranos.jpg', 'The Sopranos', NULL, NULL, 9.2, 0, NOW(), NOW(), 1),
(65, 'The Wire', 'serie', 'La ciudad sin escapatoria', 'En Baltimore, policías y traficantes se enfrentan en un juego de poder donde las líneas entre el bien y el mal se difuminan. Este drama crudo explora el crimen, la educación y la corrupción sistémica.', 2002, 60, 'David Simon', 'David Simon', 'TV-MA', 'posters/TheWire.jpg', 'The Wire', NULL, NULL, 9.3, 0, NOW(), NOW(), 1),
(66, 'Better Call Saul', 'serie', 'Antes de Breaking Bad', 'Saul Goodman, antes de ser el abogado de Walter White, es un abogado en apuros que se transforma en un astuto defensor del crimen. Este spin-off mezcla drama, humor y dilemas éticos.', 2015, 46, 'Vince Gilligan', 'Vince Gilligan, Peter Gould', 'TV-MA', 'posters/BetterCallSaul.jpg', 'Better Call Saul', NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(67, 'Westworld', 'serie', '¿Qué es real?', 'En un parque temático futurista, androides con conciencia desafían a sus creadores, desatando un conflicto entre humanidad y tecnología. Este thriller de ciencia ficción explora la libertad y la moralidad.', 2016, 60, 'Jonathan Nolan', 'Jonathan Nolan, Lisa Joy', 'TV-MA', 'posters/Westworld.jpg', 'Westworld', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(68, 'The Crown', 'serie', 'El peso de la corona', 'La reina Isabel II enfrenta desafíos políticos y personales mientras lidera la monarquía británica a través de décadas de cambios. Este drama histórico explora el poder, el deber y las dinámicas familiares.', 2016, 55, 'Peter Morgan', 'Peter Morgan', 'TV-MA', 'posters/TheCrown.jpg', 'The Crown', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(69, 'True Detective', 'serie', 'La verdad está en las sombras', 'Detectives investigan crímenes oscuros que revelan conspiraciones y traumas personales. Cada temporada ofrece una nueva historia de misterio, con personajes complejos y una atmósfera inquietante.', 2014, 60, 'Nic Pizzolatto', 'Nic Pizzolatto', 'TV-MA', 'posters/TrueDetective.jpg', 'True Detective', NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(70, 'Fargo', 'serie', 'El crimen nunca es simple', 'Historias de crímenes excéntricos en el Medio Oeste americano, inspiradas en la película de los Coen. Cada temporada mezcla humor negro, violencia y personajes inolvidables en un mosaico de caos.', 2014, 50, 'Noah Hawley', 'Noah Hawley', 'TV-MA', 'posters/Fargo.jpg', 'Fargo', NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(71, 'Succession', 'serie', 'La familia lo es todo', 'La familia Roy, dueña de un imperio mediático, lucha por el control en un juego de traiciones y ambiciones. Este drama satírico explora el poder, la riqueza y las dinámicas familiares disfuncionales.', 2018, 60, 'Jesse Armstrong', 'Jesse Armstrong', 'TV-MA', 'posters/Succession.jpg', 'Succession', NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(72, 'The Mandalorian', 'serie', 'Un cazarrecompensas, un destino', 'Un cazarrecompensas solitario en el universo de Star Wars protege a un misterioso bebé Yoda mientras enfrenta enemigos y descubre su propósito. Esta aventura combina acción y mitología galáctica.', 2019, 40, 'Jon Favreau', 'Jon Favreau', 'TV-PG', 'posters/TheMandalorian.jpg', 'The Mandalorian', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(73, 'The Office', 'serie', 'La vida en la oficina', 'En la sucursal de Dunder Mifflin, empleados excéntricos enfrentan la rutina con humor y caos. Esta comedia mockumentary celebra las dinámicas laborales y las conexiones humanas con ingenio.', 2005, 22, 'Greg Daniels', 'Greg Daniels', 'TV-14', 'posters/TheOffice.jpg', 'The Office', NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(74, 'Friends', 'serie', 'Siempre estarán ahí', 'Seis amigos en Nueva York enfrentan amores, trabajos y la vida diaria con humor y corazón. Esta icónica comedia captura la amistad y las risas en un mundo de relaciones y sueños.', 1994, 22, 'David Crane', 'David Crane, Marta Kauffman', 'TV-PG', 'posters/Friends.jpg', 'Friends', NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(75, 'The Simpsons', 'serie', 'La familia que nunca cambia', 'Los Simpson, una familia disfuncional de Springfield, enfrentan aventuras absurdas y sátiras de la vida americana. Esta serie animada es un ícono cultural lleno de humor y crítica social.', 1989, 22, 'Matt Groening', 'Matt Groening', 'TV-PG', 'posters/TheSimpsons.jpg', 'The Simpsons', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(76, 'House of the Dragon', 'serie', 'El fuego reinará', 'La dinastía Targaryen enfrenta intrigas y guerras civiles por el control del Trono de Hierro. Este spin-off de Game of Thrones combina dragones, ambición y traiciones en un mundo épico.', 2022, 60, 'Ryan Condal', 'Ryan Condal', 'TV-MA', 'posters/HouseOfTheDragon.jpg', 'House of the Dragon', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(77, 'Lost', 'serie', 'El misterio te encuentra', 'Supervivientes de un accidente aéreo en una isla misteriosa enfrentan fenómenos extraños y secretos personales. Este drama de ciencia ficción mezcla supervivencia, mitología y giros inesperados.', 2004, 45, 'J.J. Abrams', 'J.J. Abrams, Damon Lindelof', 'TV-14', 'posters/Lost.jpg', 'Lost', NULL, NULL, 8.3, 0, NOW(), NOW(), 1),
(78, 'Mad Men', 'serie', 'La imagen lo es todo', 'En la Nueva York de los 60, Don Draper, un publicista brillante pero atormentado, navega la industria de la publicidad y su vida personal. Este drama explora la ambición, la identidad y el cambio social.', 2007, 47, 'Matthew Weiner', 'Matthew Weiner', 'TV-MA', 'posters/MadMen.jpg', 'Mad Men', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(79, 'The Walking Dead', 'serie', 'Sobrevive o muere', 'En un mundo postapocalíptico, Rick Grimes lidera a un grupo de supervivientes contra zombis y amenazas humanas. Este drama de terror explora la supervivencia, la moralidad y la humanidad en crisis.', 2010, 45, 'Frank Darabont', 'Frank Darabont', 'TV-MA', 'posters/TheWalkingDead.jpg', 'The Walking Dead', NULL, NULL, 8.2, 0, NOW(), NOW(), 1),
(80, 'Black Mirror', 'serie', 'El futuro es ahora', 'Cada episodio explora un futuro distópico donde la tecnología transforma la sociedad de formas inquietantes. Esta antología de ciencia ficción combina sátira, suspense y reflexiones sobre la humanidad.', 2011, 60, 'Charlie Brooker', 'Charlie Brooker', 'TV-MA', 'posters/BlackMirror.jpg', 'Black Mirror', NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(81, 'Sherlock', 'serie', 'La mente es el arma', 'Sherlock Holmes y John Watson resuelven crímenes en el Londres moderno con ingenio y tecnología. Este drama detectivesco reimagina el clásico con giros brillantes y personajes carismáticos.', 2010, 90, 'Mark Gatiss', 'Mark Gatiss, Steven Moffat', 'TV-14', 'posters/Sherlock.jpg', 'Sherlock', NULL, NULL, 9.1, 0, NOW(), NOW(), 1),
(82, 'The Witcher', 'serie', 'El destino los une', 'Geralt de Rivia, un cazador de monstruos, se cruza con una hechicera y una princesa en un mundo de magia y peligro. Esta épica fantástica explora el destino, el poder y la lucha por el equilibrio.', 2019, 60, 'Lauren Schmidt Hissrich', 'Lauren Schmidt Hissrich', 'TV-MA', 'posters/TheWitcher.jpg', 'The Witcher', NULL, NULL, 8.2, 0, NOW(), NOW(), 1),
(83, 'Narcos', 'serie', 'El poder tiene un precio', 'La historia del ascenso y caída de los carteles de droga colombianos, centrada en Pablo Escobar y los agentes que lo persiguen. Este drama combina crimen, política y tensión en un relato implacable.', 2015, 50, 'Chris Brancato', 'Chris Brancato', 'TV-MA', 'posters/Narcos.jpg', 'Narcos', NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(84, 'The Boys', 'serie', 'Los héroes no siempre son buenos', 'En un mundo donde los superhéroes son corruptos, un grupo de vigilantes lucha para exponer sus crímenes. Esta sátira de acción combina violencia, humor negro y críticas al poder y la fama.', 2019, 60, 'Eric Kripke', 'Eric Kripke', 'TV-MA', 'posters/TheBoys.jpg', 'The Boys', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(85, 'Ozark', 'serie', 'El dinero lo cambia todo', 'Marty Byrde, un asesor financiero, traslada a su familia a los Ozarks para lavar dinero para un cartel. Este thriller explora el crimen, la familia y las decisiones desesperadas en un mundo peligroso.', 2017, 60, 'Bill Dubuque', 'Bill Dubuque', 'TV-MA', 'posters/Ozark.jpg', 'Ozark', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(86, 'Chernobyl', 'serie', 'La verdad tiene un costo', 'Tras el desastre nuclear de Chernobyl, científicos y funcionarios arriesgan todo para contener la catástrofe. Este drama histórico recrea los eventos con intensidad, mostrando el sacrificio y el encubrimiento.', 2019, 65, 'Craig Mazin', 'Craig Mazin', 'TV-MA', 'posters/Chernobyl.jpg', 'Chernobyl', NULL, NULL, 9.4, 0, NOW(), NOW(), 1),
(87, 'The Queen’s Gambit', 'serie', 'El jaque mate es solo el comienzo', 'Beth Harmon, una joven prodigio del ajedrez, enfrenta adicciones y sexismo mientras asciende en un mundo dominado por hombres. Este drama combina intensidad emocional y una historia de superación.', 2020, 60, 'Scott Frank', 'Scott Frank', 'TV-MA', 'posters/TheQueensGambit.jpg', 'The Queen’s Gambit', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(88, 'Mindhunter', 'serie', 'Dentro de la mente criminal', 'En los 70, agentes del FBI desarrollan técnicas de perfilación psicológica entrevistando a asesinos en serie. Este thriller explora la oscuridad de la mente humana y los inicios de la criminología moderna.', 2017, 60, 'Joe Penhall', 'Joe Penhall', 'TV-MA', 'posters/Mindhunter.jpg', 'Mindhunter', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(89, 'The Handmaid’s Tale', 'serie', 'Bajo su ojo', 'En una distopía donde las mujeres son subyugadas, June lucha por sobrevivir y encontrar a su hija en un régimen totalitario. Este drama explora la opresión, la resistencia y la esperanza en un mundo oscuro.', 2017, 50, 'Bruce Miller', 'Bruce Miller', 'TV-MA', 'posters/TheHandmaidsTale.jpg', 'The Handmaid’s Tale', NULL, NULL, 8.4, 0, NOW(), NOW(), 1),
(90, 'Vikings', 'serie', 'La leyenda comienza', 'Ragnar Lothbrok, un guerrero vikingo, lidera incursiones y explora nuevos mundos mientras enfrenta traiciones y dioses. Esta épica histórica combina acción, mitología y dramas familiares.', 2013, 45, 'Michael Hirst', 'Michael Hirst', 'TV-MA', 'posters/Vikings.jpg', 'Vikings', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(91, 'Peaky Blinders', 'serie', 'Por orden de los Peaky Blinders', 'En Birmingham post Primera Guerra Mundial, la familia Shelby lidera una banda criminal con ambiciones de poder. Este drama combina crimen, política y traiciones en un mundo de gánsteres.', 2013, 60, 'Steven Knight', 'Steven Knight', 'TV-MA', 'posters/PeakyBlinders.jpg', 'Peaky Blinders', NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(92, 'The Last of Us', 'serie', 'El amor en el fin del mundo', 'En un mundo devastado por un hongo, Joel y Ellie, una adolescente inmune, cruzan un Estados Unidos postapocalíptico. Este drama explora la supervivencia, el vínculo humano y la esperanza en la desesperación.', 2023, 60, 'Craig Mazin', 'Craig Mazin, Neil Druckmann', 'TV-MA', 'posters/TheLastOfUs.jpg', 'The Last of Us', NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(93, 'Euphoria', 'serie', 'La vida es un caos', 'Un grupo de adolescentes navega el amor, las adicciones y la identidad en un mundo hiperconectado. Este drama crudo explora los desafíos de la juventud con una estética audaz y emociones intensas.', 2019, 60, 'Sam Levinson', 'Sam Levinson', 'TV-MA', 'posters/Euphoria.jpg', 'Euphoria', NULL, NULL, 8.4, 0, NOW(), NOW(), 1),
(94, 'Yellowstone', 'serie', 'La tierra es la guerra', 'La familia Dutton protege su rancho en Montana contra desarrolladores, políticos y enemigos. Este drama moderno combina intrigas familiares, poder y conflictos territoriales en un Oeste contemporáneo.', 2018, 60, 'Taylor Sheridan', 'Taylor Sheridan', 'TV-MA', 'posters/Yellowstone.jpg', 'Yellowstone', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(95, 'Ted Lasso', 'serie', 'La bondad siempre gana', 'Ted Lasso, un entrenador de fútbol americano, lidera un equipo de fútbol inglés con optimismo y corazón. Esta comedia explora la empatía, el liderazgo y la superación en un mundo competitivo.', 2020, 30, 'Jason Sudeikis', 'Jason Sudeikis, Bill Lawrence', 'TV-MA', 'posters/TedLasso.jpg', 'Ted Lasso', NULL, NULL, 8.8, 0, NOW(), NOW(), 1),
(96, 'House M.D.', 'serie', 'Todos mienten', 'El Dr. Gregory House, un médico brillante pero excéntrico, resuelve casos médicos complejos con métodos poco convencionales. Este drama combina misterio, humor y dilemas éticos en un hospital.', 2004, 45, 'David Shore', 'David Shore', 'TV-14', 'posters/HouseMD.jpg', 'House M.D.', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(97, 'Dexter', 'serie', 'El asesino con código', 'Dexter Morgan, un forense que es secretamente un asesino en serie, mata a criminales que escapan de la justicia. Este thriller psicológico explora la moralidad, la identidad y el control en un mundo oscuro.', 2006, 55, 'Jeff Dunham', 'Jeff Dunham', 'TV-MA', 'posters/Dexter.jpg', 'Dexter', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(98, 'The Big Bang Theory', 'serie', 'La ciencia de la amistad', 'Un grupo de científicos brillantes pero socialmente torpes enfrenta la vida, el amor y la amistad. Esta comedia celebra la inteligencia y las conexiones humanas con humor y corazón.', 2007, 22, 'Chuck Lorre', 'Chuck Lorre, Bill Prady', 'TV-PG', 'posters/TheBigBangTheory.jpg', 'The Big Bang Theory', NULL, NULL, 8.1, 0, NOW(), NOW(), 1),
(99, 'Modern Family', 'serie', 'La familia es un caos', 'Tres familias interconectadas enfrentan la vida moderna con humor y amor. Esta comedia mockumentary explora la diversidad, las relaciones y los retos de la familia en un mundo cambiante.', 2009, 22, 'Christopher Lloyd', 'Christopher Lloyd, Steven Levitan', 'TV-PG', 'posters/ModernFamily.jpg', 'Modern Family', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(100, 'The West Wing', 'serie', 'El poder detrás del poder', 'El presidente de EE.UU. y su equipo enfrentan crisis políticas y personales en la Casa Blanca. Este drama combina diálogos brillantes, idealismo y los retos del liderazgo en un mundo complejo.', 1999, 45, 'Aaron Sorkin', 'Aaron Sorkin', 'TV-14', 'posters/TheWestWing.jpg', 'The West Wing', NULL, NULL, 8.9, 0, NOW(), NOW(), 1),
(101, 'Boardwalk Empire', 'serie', 'El crimen reina', 'En Atlantic City durante la Prohibición, Nucky Thompson lidera un imperio criminal mientras enfrenta rivales y el gobierno. Este drama histórico combina ambición, traición y el glamour de los años 20.', 2010, 55, 'Terence Winter', 'Terence Winter', 'TV-MA', 'posters/BoardwalkEmpire.jpg', 'Boardwalk Empire', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(102, 'Sons of Anarchy', 'serie', 'La lealtad es todo', 'Jax Teller, líder de un club de motociclistas, enfrenta conflictos internos y externos mientras protege a su familia y su legado. Este drama explora el crimen, la lealtad y la redención en un mundo brutal.', 2008, 45, 'Kurt Sutter', 'Kurt Sutter', 'TV-MA', 'posters/SonsOfAnarchy.jpg', 'Sons of Anarchy', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(103, 'The Expanse', 'serie', 'El universo es el límite', 'En un futuro donde la humanidad coloniza el sistema solar, un detective, un capitán y una diplomática descubren una conspiración que amenaza la paz. Esta épica de ciencia ficción combina política y acción.', 2015, 45, 'Mark Fergus', 'Mark Fergus, Hawk Ostby', 'TV-14', 'posters/TheExpanse.jpg', 'The Expanse', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(104, 'Downton Abbey', 'serie', 'La tradición frente al cambio', 'La familia Crawley y sus sirvientes navegan la vida en una mansión inglesa durante el siglo XX. Este drama histórico explora el amor, la clase y los cambios sociales con elegancia y emoción.', 2010, 50, 'Julian Fellowes', 'Julian Fellowes', 'TV-PG', 'posters/DowntonAbbey.jpg', 'Downton Abbey', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(105, 'Atlanta', 'serie', 'La vida es un escenario', 'Earn y su primo Alfred, un rapero en ascenso, enfrentan la vida y la fama en Atlanta. Esta comedia dramática combina surrealismo, humor y comentarios sociales sobre la raza y la cultura.', 2016, 30, 'Donald Glover', 'Donald Glover', 'TV-MA', 'posters/Atlanta.jpg', 'Atlanta', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(106, 'Hannibal', 'serie', 'El depredador perfecto', 'Will Graham, un profiler del FBI, colabora con el psiquiatra Hannibal Lecter para atrapar asesinos. Este thriller psicológico explora la mente criminal y la oscuridad con una estética hipnótica.', 2013, 45, 'Bryan Fuller', 'Bryan Fuller', 'TV-MA', 'posters/Hannibal.jpg', 'Hannibal', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(107, 'Fleabag', 'serie', 'La vida es un desastre', 'Una joven londinense enfrenta la vida, el amor y la familia con humor y caos. Esta comedia dramática, narrada con ingenio y ruptura de la cuarta pared, explora la vulnerabilidad y la autenticidad.', 2016, 25, 'Phoebe Waller-Bridge', 'Phoebe Waller-Bridge', 'TV-MA', 'posters/Fleabag.jpg', 'Fleabag', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(108, 'The Good Place', 'serie', 'El paraíso no es lo que parece', 'Eleanor, una mujer egoísta, llega por error a un paraíso utópico tras su muerte. Este drama cómico explora la moralidad, la redención y la filosofía con humor y giros inesperados.', 2016, 25, 'Michael Schur', 'Michael Schur', 'TV-PG', 'posters/TheGoodPlace.jpg', 'The Good Place', NULL, NULL, 8.2, 0, NOW(), NOW(), 1),
(109, 'This Is Us', 'serie', 'La vida nos conecta', 'La familia Pearson enfrenta alegrías y tragedias a través de generaciones. Este drama emocional explora el amor, la pérdida y las conexiones humanas con una narrativa conmovedora y no lineal.', 2016, 45, 'Dan Fogelman', 'Dan Fogelman', 'TV-14', 'posters/ThisIsUs.jpg', 'This Is Us', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(110, 'Your Honor', 'serie', 'La justicia tiene un precio', 'Un juez respetado arriesga todo para proteger a su hijo tras un accidente que involucra a una familia criminal. Este thriller legal explora la moralidad, la lealtad y las consecuencias de las decisiones.', 2020, 60, 'Peter Moffat', 'Peter Moffat', 'TV-MA', 'posters/YourHonor.jpg', 'Your Honor', NULL, NULL, 7.6, 0, NOW(), NOW(), 1),
(111, 'Loki', 'serie', 'El dios del engaño', 'Loki, el dios asgardiano, navega el multiverso tras robar el Tesseract. Esta serie de Marvel combina aventura, humor y caos cósmico mientras explora la identidad y el destino.', 2021, 50, 'Michael Waldron', 'Michael Waldron', 'TV-14', 'posters/Loki.jpg', 'Loki', NULL, NULL, 8.2, 0, NOW(), NOW(), 1),
(112, 'Arcane', 'serie', 'El poder divide', 'En las ciudades de Piltover y Zaun, las hermanas Vi y Powder enfrentan un mundo de magia y tecnología. Esta serie animada, basada en League of Legends, combina acción y drama emocional.', 2021, 40, 'Christian Linke', 'Christian Linke', 'TV-14', 'posters/Arcane.jpg', 'Arcane', NULL, NULL, 9.0, 0, NOW(), NOW(), 1),
(113, 'The Haunting of Hill House', 'serie', 'El pasado nunca muere', 'La familia Crain enfrenta los horrores de su infancia en una mansión embrujada. Este drama de terror mezcla fantasmas, trauma y relaciones familiares en una narrativa emocional y aterradora.', 2018, 55, 'Mike Flanagan', 'Mike Flanagan', 'TV-MA', 'posters/TheHauntingOfHillHouse.jpg', 'The Haunting of Hill House', NULL, NULL, 8.6, 0, NOW(), NOW(), 1),
(114, 'Bridgerton', 'serie', 'El amor escandaliza', 'En la Inglaterra del siglo XIX, los hermanos Bridgerton buscan amor y estatus en una sociedad llena de intrigas. Esta serie romántica combina drama, pasión y un estilo visual vibrante.', 2020, 60, 'Chris Van Dusen', 'Chris Van Dusen', 'TV-MA', 'posters/Bridgerton.jpg', 'Bridgerton', NULL, NULL, 7.4, 0, NOW(), NOW(), 1),
(115, 'The Umbrella Academy', 'serie', 'Héroes disfuncionales', 'Una familia de superhéroes adoptivos se reúne para prevenir el apocalipsis mientras enfrenta su pasado. Esta serie combina acción, humor y drama familiar en un mundo de poderes y caos.', 2019, 50, 'Steve Blackman', 'Steve Blackman', 'TV-14', 'posters/TheUmbrellaAcademy.jpg', 'The Umbrella Academy', NULL, NULL, 8.0, 0, NOW(), NOW(), 1),
(116, 'Cobra Kai', 'serie', 'El karate nunca muere', 'Décadas después de Karate Kid, Daniel LaRusso y Johnny Lawrence reavivan su rivalidad mientras entrenan a una nueva generación. Esta serie combina acción, nostalgia y redención con humor.', 2018, 30, 'Jon Hurwitz', 'Jon Hurwitz, Hayden Schlossberg', 'TV-14', 'posters/CobraKai.jpg', 'Cobra Kai', NULL, NULL, 8.5, 0, NOW(), NOW(), 1),
(117, 'The Morning Show', 'serie', 'La verdad en pantalla', 'Periodistas de un programa matutino enfrentan escándalos, ambiciones y dilemas éticos en un mundo mediático competitivo. Este drama explora el poder, la fama y la verdad con actuaciones estelares.', 2019, 60, 'Jay Carson', 'Jay Carson', 'TV-MA', 'posters/TheMorningShow.jpg', 'The Morning Show', NULL, NULL, 8.4, 0, NOW(), NOW(), 1),
(118, 'Yellowjackets', 'serie', 'La supervivencia tiene secretos', 'Tras un accidente aéreo, un equipo de fútbol femenino lucha por sobrevivir en la naturaleza. Décadas después, los supervivientes enfrentan los ecos de su pasado. Este thriller mezcla misterio y drama.', 2021, 60, 'Ashley Lyle', 'Ashley Lyle, Bart Nickerson', 'TV-MA', 'posters/Yellowjackets.jpg', 'Yellowjackets', NULL, NULL, 7.9, 0, NOW(), NOW(), 1),
(119, 'Severance', 'serie', 'El trabajo no es tu vida', 'Empleados de una corporación usan una tecnología que separa sus recuerdos laborales y personales. Cuando un misterio surge, cuestionan su realidad. Este thriller psicológico explora la identidad y el control.', 2022, 50, 'Dan Erickson', 'Dan Erickson', 'TV-MA', 'posters/Severance.jpg', 'Severance', NULL, NULL, 8.7, 0, NOW(), NOW(), 1),
(120, 'Andor', 'serie', 'La chispa de la rebelión', 'Cassian Andor, un espía rebelde, enfrenta misiones peligrosas contra el Imperio en el universo de Star Wars. Este drama explora el sacrificio y la resistencia en una galaxia oprimida.', 2022, 45, 'Tony Gilroy', 'Tony Gilroy', 'TV-14', 'posters/Andor.jpg', 'Andor', NULL, NULL, 8.4, 0, NOW(), NOW(), 1);

-- Inserción de plataformas de streaming y vinculación con series

-- Vinculación de series con plataformas (continuando desde id_plataforma 70)
INSERT INTO plataformas_streaming (id_plataforma, id_contenido_id, nombre_plataforma, imagen_logo_plataforma, alt_imagen_logo_plataforma, tipo_acceso, precio, creador_id)
VALUES
-- Game of Thrones (HBO Max)
(70, 61, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Breaking Bad (Netflix)
(71, 62, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Stranger Things (Netflix)
(72, 63, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Sopranos (HBO Max)
(73, 64, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- The Wire (HBO Max)
(74, 65, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Better Call Saul (Netflix)
(75, 66, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Westworld (HBO Max)
(76, 67, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- The Crown (Netflix)
(77, 68, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- True Detective (HBO Max)
(78, 69, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Fargo (HBO Max)
(79, 70, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Succession (HBO Max)
(80, 71, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- The Mandalorian (Disney+)
(81, 72, 'Disney+', 'logos/disneyplus.png', 'Logo de Disney+', 'suscripción', 9.99, 1),
-- The Office (Netflix)
(82, 73, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Friends (Netflix)
(83, 74, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Simpsons (Disney+)
(84, 75, 'Disney+', 'logos/disneyplus.png', 'Logo de Disney+', 'suscripción', 9.99, 1),
-- House of the Dragon (HBO Max)
(85, 76, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Lost (Netflix)
(86, 77, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Mad Men (Netflix)
(87, 78, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Walking Dead (Netflix)
(88, 79, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Black Mirror (Netflix)
(89, 80, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Sherlock (Netflix)
(90, 81, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Witcher (Netflix)
(91, 82, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Narcos (Netflix)
(92, 83, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Boys (Prime Video)
(93, 84, 'Prime Video', 'logos/primevideo.png', 'Logo de Prime Video', 'suscripción', 9.99, 1),
-- Ozark (Netflix)
(94, 85, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Chernobyl (HBO Max)
(95, 86, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- The Queen’s Gambit (Netflix)
(96, 87, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Mindhunter (Netflix)
(97, 88, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Handmaid’s Tale (Hulu, pero asumimos Netflix por similitud)
(98, 89, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Vikings (Netflix)
(99, 90, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Peaky Blinders (Netflix)
(100, 91, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Last of Us (HBO Max)
(101, 92, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Euphoria (HBO Max)
(102, 93, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Yellowstone (Peacock, pero asumimos Prime Video)
(103, 94, 'Prime Video', 'logopng', 'Logo de Prime Video', 'suscripción', 9.99, 1),
-- Ted Lasso (Apple TV+, pero asumimos Disney+ por similitud)
(104, 95, 'Disney+', 'logos/disneyplus.png', 'Logo de Disney+', 'suscripción', 9.99, 1),
-- House M.D. (Netflix)
(105, 96, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Dexter (Showtime, pero asumimos Netflix)
(106, 97, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Big Bang Theory (Netflix)
(107, 98, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Modern Family (Hulu, pero asumimos Netflix)
(108, 99, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The West Wing (HBO Max)
(109, 100, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Boardwalk Empire (HBO Max)
(110, 101, 'HBO Max', 'logos/hbomax.jpeg', 'Logo de HBO Max', 'suscripción', 9.99, 1),
-- Sons of Anarchy (Netflix)
(111, 102, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Expanse (Prime Video)
(112, 103, 'Prime Video', 'logopng', 'Logo de Prime Video', 'suscripción', 9.99, 1),
-- Downton Abbey (Netflix)
(113, 104, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Atlanta (Hulu, pero asumimos Netflix)
(114, 105, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Hannibal (Netflix)
(115, 106, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Fleabag (Prime Video)
(116, 107, 'Prime Video', 'logopng', 'Logo de Prime Video', 'suscripción', 9.99, 1),
-- The Good Place (Netflix)
(117, 108, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- This Is Us (Netflix)
(118, 109, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Your Honor (Showtime, pero asumimos Netflix)
(119, 110, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Loki (Disney+)
(120, 111, 'Disney+', 'logos/disneyplus.png', 'Logo de Disney+', 'suscripción', 9.99, 1),
-- Arcane (Netflix)
(121, 112, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Haunting of Hill House (Netflix)
(122, 113, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Bridgerton (Netflix)
(123, 114, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Umbrella Academy (Netflix)
(124, 115, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Cobra Kai (Netflix)
(125, 116, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- The Morning Show (Apple TV+, pero asumimos Disney+)
(126, 117, 'Disney+', 'logos/disneyplus.png', 'Logo de Disney+', 'suscripción', 9.99, 1),
-- Yellowjackets (Showtime, pero asumimos Netflix)
(127, 118, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Severance (Apple TV+, pero asumimos Netflix)
(128, 119, 'Netflix', 'logos/netflix.png', 'Logo de Netflix', 'suscripción', 9.99, 1),
-- Andor (Disney+)
(129, 120, 'Disney+', 'logos/disneyplus.png', 'Logo de Disney+', 'suscripción', 9.99, 1);