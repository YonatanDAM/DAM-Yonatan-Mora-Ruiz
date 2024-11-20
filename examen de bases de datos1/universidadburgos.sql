-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 19:08:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidadburgos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliografia`
--

CREATE TABLE `bibliografia` (
  `identificador` int(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `bibliografia`
--

INSERT INTO `bibliografia` (`identificador`, `texto`, `imagen`) VALUES
(1, 'La documentación y obtención de conocimiento es fundamental para hablar de los aspectos científicos que aparecen en La Catedral de Burgos. Se realizó una amplia lectura y entre estas destacamos cuales fueron las principales fuentes de información. También añadimos un libro publicado por la Universidad de Burgos con todas las actuaciones entorno a la catedral.', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2021/09/10-212x300.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`identificador`, `titulo`, `subtitulo`, `texto`, `video`) VALUES
(1, 'Capítulos', 'Capítulo I:\r\nLa arquitectura', 'Nos acercaremos a los orígenes de la Catedral de Burgos, sus momentos clave, su milenario archivo y la revolución del gótico. Los historiadores René Payo y José Matesanz sitúan los hitos más importantes de su construcción. El archivero Matías Vicario abre las puertas del Archivo, la memoria del edificio y fuente de información para los investigadores. Jesús Garabito, actual arquitecto de la catedral, explica las peculiaridades de su emplazamiento y la revolución del gótico.', 'https://cienciaycatedral.ubuinvestiga.es/la-arquitectura/'),
(2, 'La piedra', 'La piel de la catedral', 'La piel de la catedral de Burgos es especial. El revestimiento pétreo de caliza, extraído de las proximidades de Burgos, en la cantera de Hontoria, le da un color muy característico, mientras ha permitido que su estructura y su belleza se mantengan hasta nuestros días.\r\n\r\nLa llegada del gótico a las catedrales supone comenzar a dar importancia a la luz. Los muros suben hacia el cielo, las paredes se abren con vidrieras de colores y la luminosidad de la piedra comienza a ser más importante que nunca. Gabriel García Agudo, uno de los responsables de Patrimonio de la Luz, responsables de la gestión de las canteras en la actualidad, nos acerca a lo que supuso extraer la piedra de la roca viva con herramientas artesanales. Para conocer las técnicas de extracción y labrado recurrimos a José Javier Barrio, restaurador y tallista, que nos enseña los secretos de la talla, tanto para los sillares como para los elementos decorativos.\r\n\r\nLa piedra blanca de Hontoria otorga un brillo muy especial a la basílica, tanto en el exterior como en su interior. René Payo y José Matesanz, profesores de la Universidad de Burgos, nos señalan sus características: una piedra maleable, que gana en resistencia con el paso del tiempo. Sin embargo, toda piedra necesita mantenimiento y restauración. Los trabajos en la catedral, como señala José Javier Barrio, son constantes y se realizan con métodos artesanales para respetar al máximo el espíritu y la estética de la catedral.\r\n\r\nQuizá la actuación más visible haya sido, precisamente, la realizada sobre la fachada de la seo burgalesa. La limpieza del exterior volvió a mostrar el color blanco de sus paredes, dejando atrás el gris que durante tanto tiempo habíamos conocido. No solo se realizó la limpieza, sino que se aplicaron técnicas de conservación que, sin alterar su aspecto, protegen la piel de la basílica.\r\n\r\nLos cambios no fueron solo estéticos. La piedra supone el principal elemento estructural de toda la catedral y su cuidado debe ser constante. Aplicar los conocimientos de física, química, ingeniería y arquitectura resulta fundamental para protegerla de la oxidación, de gelifracción (la ruptura por el hielo), la contaminación… La Catedral de Burgos goza de una excelente salud tras las restauraciones llevadas a cabo los últimos años, pero los cuidados deben ser constantes y delicados para mantener su magnífico aspecto y la firmeza que ha mantenido durante sus 800 años de historia.              ', 'https://www.youtube.com/watch?v=vIDIP3gjGcY&t=1s'),
(3, 'Las matemáticas', 'Geometrías sagradas\r\n\r\n', 'La catedral de Burgos está hecha de piedra… y matemáticas. Alberga multitud de proporciones, relaciones y figuras geométricas que no sólo hacen que se mantenga en pie, sino que nos parezca armónica y bella.\r\n\r\nEn palabras de René Payo, profesor de la Universidad de Burgos, los constructores de las catedrales, los canteros, estaban “obsesionados” con la geometría y las proporciones matemáticas. Estas proporciones armónicas nos transmiten, por un lado, una sensación de belleza, pero también con un sentimiento religioso relacionado con la idea de paz y perfección. Para acercarnos a estos conceptos entrevistamos a Constantino de la Fuente, matemático y catedrático de matemáticas del instituto cardenal López de Mendoza. De la Fuente nos relata los procesos utilizados para el diseño y creación de la Catedral de Burgos basada en la proporción, la relación entre dos magnitudes.\r\n\r\nAl medir en función de proporciones, no importa tanto el dato numérico de una de las cantidades, sino la relación entre las dos. Si miramos bajo este prisma, las matemáticas surgen por todas partes en la basílica. Esta geometría permite crear patrones y adaptarlos en los diferentes diseños ornamentales. Uno de los diseños más presentes en la Catedral de Burgos es la vesica piscis, el símbolo del pez usado por los primeros cristianos y que corresponde a la zona común entre dos círculos. Esta figura permite mantener armonía y ritmo en los diseños.\r\n\r\nTampoco podía faltar el número más famoso si hablamos de proporciones: phi, el número áureo. La proporción áurea, conocida en multitud de animales y plantas, está presente en la catedral de Burgos en el cimborrio y la Escalera Dorada, dos de los elementos más reconocibles del interior de la seo, especialmente en la escalera. Diseñada en el Renacimiento, Diego de Siloé conocía, a buen seguro, la proporción áurea y la aplicó en su diseño, además de incluir el llamado “triángulo dorado”, que sigue la misma proporción que las agujas de la catedral.\r\n\r\nAdemás de todas estas proporciones, existen muchas otras relaciones geométricas en la Catedral, como el número de plata o la proporción cordobesa, muy ligada al arte mudéjar, formando un conjunto de hibridación y unión de estilos y culturas.\r\n\r\nComo señala el profesor de la Universidad de Burgos, José Matesanz, estas proporciones eran bien conocidas por los constructores de la catedral y le otorgan buena parte de la belleza presente en el edificio, tanto en su exterior como en su luminoso interior.', 'https://www.youtube.com/watch?v=AMpqREfzuCk&t=817s'),
(4, 'La Pintura', 'Pigmentos desvelados\r\n\r\n', 'Dentro de la Catedral de Burgos encontramos innumerables tesoros. Algunos de ellos poseen vivos colores que hablan de belleza y espiritualidad desde los cuadros, retablos y esculturas que adornan el interior del templo. En este episodio hablaremos de la pintura que habita en la Catedral.\r\n\r\nSin embargo, como señala José Matesanz, profesor de la Universidad de Burgos, el arte mueble, estos conjuntos de pinturas y esculturas, no solo servían para decorar, sisno para enseñar. Estas figuras hablaban a los fieles del culto, las historias de la biblia, las virtudes a seguir y, por supuesto, los pecados a evitar. En la misma línea, Francisco Jesús del Hoyo, pintor y restaurador, señala la gran cantidad de arte que posee la catedral, con una gran tradición de pintores italianos y flamencos, sin contar la gran cantidad de figuras y esculturas repartidas por todos los rincones. No obstante, esta pintura, realizadas en muy diferentes técnicas, necesita mantenimiento y restauración.\r\n\r\nEn nuestra entrevista, del Hoyo nos describe los procesos físicos y químicos que sufren las pinturas al estar en contacto con el paso del tiempo y nuestra propia presencia. Por ejemplo, el uso de incensarios somete a las tallas al contacto con el humo, que va alterando su color y sus propiedades y son ya irrecuperables. También el uso de determinados barnices ha provocado oxidaciones sobre las pinturas, o las variaciones que, directamente, se han realizado sobre las obras.\r\n\r\nEl proceso técnico de la restauración nace de un conocimiento científico profundo de estos problemas. La restauración no sólo es una intervención física, sino que requiere, en muchas ocasiones, de un análisis químico previo para ver qué elementos contiene la capa de pintura y, después, decidir la mejor forma de actuar.\r\n\r\nPara conocer mejor estos procesos en materiales tan delicados como la madera, Itsaso Artexte y Mercedes Chico, restauradoras de Fénix Conservación, nos hablan de las técnicas utilizadas en la restauración de once retablos de la catedral de Burgos. Para las expertas, la humedad es uno de los principales problemas para la madera presente en la seo burgalesa. Tanto desde el uso de productos químicos como con instrumentos como bisturís, escalpelos o tornos, actúan sobre las obras de arte más delicadas. Además, nuevas tecnologías, como el láser, pueden ser útiles en algunos elementos.\r\n\r\nTodos los trabajos sobre el interior de la catedral han permitido que los colores, las texturas y los detalles de la decoración vuelvan a ver la luz. Ahora es importante mantener la conservación para evitar su deterioro y poder seguir disfrutando de la magia de los colores en el interior del templo burgalés.', 'https://www.youtube.com/watch?v=IixHnL_Ml8w'),
(5, 'Las vidrieras\r\n', 'Los colores de la luz\r\n\r\n', 'Gracias al estilo gótico, la Catedral de Burgos gana el altura, ligereza y esbeltez. Al aligerar los muros, se hizo posible la apertura de grandes ventanales que se decoraron con auténticas obras de arte: las vidrieras. Proyecciones de luz de todos los colores que inundan el interior del templo, decoran los ventanales y nos cuentan historias sobre la fe y el propio templo.\r\n\r\nEn las vidrieras se unen ciencia, técnica y arte en un proceso complejo. Los cristales, pintados primero, se ensamblan mediante varillas de plomo. Para conocer los detalles entrevistamos a Pilar Alonso, profesora de la Universidad de Burgos, que nos detalla las características del vidrio, su creación y su transformación en pequeños fragmentos coloreados de arte. Además, contamos con Enrique Barrio, vidriero y pintor, que se ha encargado tanto de restauración como creación de nuevas vidrieras para la catedral de Burgos. El artista nos enseña el proceso final de pintura, la composición de los colores y la forma de fijarlos al vidrio.\r\n\r\nLa Catedral de Burgos es uno de los mejores exponentes del arte de la vidriera española. Tanto en la Edad Media, como en los siglos XVI y XVIII, la seo alberga impresionantes ejemplos artísticos. Incluso podemos encontrar un color único en el mundo: el “rojo Burgos”, un vidrio laminado con diferentes capas de rojo sobre una base verde y que, hasta ahora, sólo se ha encontrado en la catedral y en el Monasterio de las Huelgas.\r\n\r\nA finales del siglo XV y principios del XVI llegan a Burgos numerosos maestros flamencos de la vidriera que dotan de aún más luz y color espacios tan únicos como la Capillas de los Condestables. Como toda obra artística, las vidrieras necesitan mucho mantenimiento, conservación y atención. Alteraciones físicas y químicas, agentes externos como el clima o la contaminación e, incluso, actos vandálicos. Actualmente, las tareas de restauración se realizan de forma tradicional y artesanal, trasladado la pieza al taller del artista para realizar las actuaciones químicas o físicas necesarias sobre la pieza.\r\n\r\nEn definitiva, las vidrieras de la Catedral de Burgos son mucho más que un elemento decorativo en las ventanas. Suponen toda una tradición artística y técnica compleja condensada en fragmentos de vidrio sin los que sería imposible entender las esbeltas catedrales góticas.', 'https://www.youtube.com/watch?v=LlxPVOYg6Ug'),
(6, 'La música\r\n', 'Sonidos en armonía\r\n\r\n', 'La Catedral de Burgos es un espacio de recogimiento y espiritualidad. Cuando se van los turistas y en las horas de culto, las paredes del templo reflejan los rezos… y la música. Como bien señala José Matesanz, profesor de la Universidad de Burgos, la música, y los cantorales han sido siempre una parte fundamental del culto en la Catedral.\r\n\r\nPara dotar de sonoridad a un edificio tan grande como la basílica burgalesa es necesario un instrumento de gran tamaño: el órgano. Instrumento monumental por sí mismo, gracias a su enorme tamaño, es capaz de reproducir toda la escala de sonidos que puede percibir el ser humano. La Catedral de Burgos tiene varios de estos instrumentos, algunos de ellos muy antiguos y singulares, en palabras de René Payo, profesor de la Universidad de Burgos.\r\n\r\nÓscar Laguna, organero de la catedral nos introduce, literalmente, en el interior de estos instrumentos. Como organero, se encarga del mantenimiento y restauración de estos grandes creadores de música. Además de su parte técnica para poder generar música, nos adentramos en el interior de estos gigantes para contemplar de cerca sus mecanismos, todos sus tubos y funcionamiento. Los órganos son instrumentos fascinantes que, con un buen mantenimiento, pueden funcionar sin problemas durante cientos de años.\r\n\r\nAdemás de los órganos, las campanas de la catedral tienen una doble función: musical y de comunicación con la ciudad. Antonio Cano, relojero y campanero de la seo burgalesa, nos lleva a las alturas de las agujas para contemplar de cerca el toque de campanas. Las más antiguas, la mayor y la campana Mauricio, se unen a las modernas, la última del año 2010, todas ellas de bronce. Tamaño y materiales son las claves para su sonido, afinado con precisión. Junto a ellas descansa la gran carraca, recuperada recientemente tras casi un siglo de silencio y que, en Semana Santa, reemplazaba el repicar de campanas.\r\n\r\nLa presencia de los instrumentos seguirá siendo parte de la esencia de la catedral. En su interior, los órganos acompañarán a los cantos y las liturgias, mientras las campanas seguirán siendo el lenguaje del templo para comunicarse con la ciudad.', 'https://www.youtube.com/watch?v=WoZRpJTP0XI'),
(7, 'Las tecnologías modernas\r\n', 'Mecanismos y sistemas eléctricos\r\n\r\n', 'La Catedral de Burgos acumuló, tanto en su planteamiento como en su realización, todo el saber técnico, científico y tecnológico de la época. Sin embargo, el templo ha sido un edificio vivo que ha buscado incorporar nuevas innovaciones a su conjunto.\r\n\r\nEl ejemplo más claro fue la adquisición de reloj mecánico en 1384. El reloj se colocó en la fachada y funcionaba mediante un sistema de contrapesos y bloqueos, llamado escape de varillas. Su funcionamiento y conservación dependen de Antonio Cano, relojero y campanero, que nos guía por el pasado y futuro de los mecanismos. Este reloj utiliza la misma tecnología que el que tiene actualmente el Papamoscas, un encantador autómata que marca las horas abriendo su boca, ayudado por el pequeño Martinillo, otro autómata que marca los cuartos.\r\n\r\nA pesar de su precisión, el sistema de pesas ha quedado ampliamente superado. En la actualidad, tanto el Papamoscas como el Martinillo mantienen toda su estructura original, pero se manejan por ordenador para garantizar que no haya desajustes con la hora. Mantener las estructuras originales exige mucho mantenimiento, pero conserva todo el encanto que ha fascinado a niños y mayores durante siglos.\r\n\r\nLo mismo ocurre con el toque de campanas. El mecanismo antiguo utilizaba dos tambores de cadenas para tocar las campanas “a volteo” con un sistema de pedales. Al igual que el Papamoscas, las campanas se manejan mediante un ordenador y motores electrónicos que, incluso, están conectados a la red para poder manejarlo sin estar allí. Sin embargo, el reto sigue siendo el mantenimiento.  Pese a toda la automatización, las reparaciones siguen realizándose in situ y no es fácil subir hasta las agujas.\r\n\r\nTambién la calefacción y la iluminación se han modernizado. Dotar de una temperatura constante en una ciudad tan fría y con cambios tan extremos como Burgos es fundamental, no solo para los visitantes, sino para la correcta conservación del patrimonio de la catedral. El sistema de climatización ha aprovechado una antigua canalización del templo, por lo que no se ha alterado lo más mínimo la estructura del edificio. La iluminación, actualizada a luces LED para minimizar su consumo, además de un sistema de alimentación que mantiene activo un sistema de seguridad contra robos e incendios incluso con cortes de suministro eléctrico.\r\n\r\nTodos estos sistemas, junto con una protección contra rayos, permiten asegurar que, pese a sus 800 años, la Catedral de Burgos tiene mejor salud que nunca y su seguridad y continuidad está más que garantizada.', 'https://www.youtube.com/watch?v=KngumYLL3H0'),
(8, 'La conservación\r\n', 'Presente y futuro de la catedral\r\n\r\n', 'La Catedral de Burgos es un edificio vivo. Como recuerda René Payo, profesor de la Universidad de Burgos, las catedrales deben empezar a mantenerse y conservarse desde que se coloca la primera piedra. Es inevitable que en un edificio tan grande y complejo haya que realizar mejoras y reparaciones. Payo data las primeras restauraciones, tal y como las entendemos hoy comienzan en el siglo XIX.\r\n\r\nPara comprender el alcance de estas restauraciones, Javier Garabito, arquitecto de la catedral y profesor de la UBU, realiza un recorrido por las principales intervenciones, desde la demolición del Palacio Arzobispal hasta la retirada de las escaleras de las agujas, que ponían en peligro su estabilidad.\r\n\r\nUna vez asegurada su estructura se produjo la que, probablemente, sea la intervención más visible de todas: la limpieza de la fachada. Después, se comenzó a trabajar en elementos internos, como pinturas y bóvedas, para terminar con bienes muebles como retablos, cuadros o esculturas. Más recientemente se ha actuado sobre el trasaltar del altar mayor, una actuación pendiente desde hacía mucho.\r\n\r\nLa Catedral de Burgos es, hoy en día, un monumento en un excelente estado. Nuestros expertos la colocan como uno de los monumentos mejor preservados de Europa y se ha convertido en un símbolo de la ciudad, no sólo para los creyentes, sino para todos los burgaleses. Tras décadas de intervenciones decididas, la seo burgalesa luce espléndida y afronta los siguientes 800 años con salud renovada.\r\n\r\nEl futuro es prometedor para el monumento. Es un edificio vivo y debe seguir incorporando aportaciones, bajo un criterio de calidad muy estricto y que no altere el espíritu del templo. Todas las ciencias, técnicas y tecnologías que hemos visto a lo largo de nuestro documental forman parte del ADN del edificio. Todas ellas colaboraron en su creación y siguen haciéndolo para mantener su majestuosidad.\r\n\r\nJosé Matesanz, profesor de la Universidad de Burgos, corrobora que la catedral debe ser un elemento identitario para las próximas generaciones de la ciudad, que además han de aportar al monumento su propia experiencia y conocimiento para que sea un edificio Patrimonio de la Humanidad.', 'https://www.youtube.com/watch?v=LdC_cyh_hD8&t=1s');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`identificador`, `titulo`, `cargo`, `nombre`) VALUES
(1, 'Créditos y reconocimiento', 'PRODUCCIÓN EJECUTIVA', ' JORDI ROVIRA CARBALLIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongrafica`
--

CREATE TABLE `documentaciongrafica` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `documentaciongrafica`
--

INSERT INTO `documentaciongrafica` (`identificador`, `titulo`, `subtitulo`, `texto`, `imagen`, `categoria`) VALUES
(1, 'DOCUMENTACIÓN GRÁFICA', 'Fotos, ilustraciones, documentos,  planos y vídeos', 'Se realizó una profunda búsqueda de documentos, ilustraciones, fotos, planos y vídeos que consiguieran explicar los hitos del documental. A continuación se pueden ver algunos de los encontrados en los fondos y archivos documentales públicos.\r\n\r\nTodos están referenciados, el título enlaza con la institución correspondiente y propietaria. De esta manera más personas podrán disfrutar de los documentos.', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_0000C529-400x284.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `expertos` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `expertos`
--

INSERT INTO `expertos` (`identificador`, `titulo`, `subtitulo`, `expertos`, `texto`) VALUES
(1, 'Expertos', 'Nuestros expertos', 'Antonio Cano\r\n', 'Antonio Cano es campanero y relojero en la catedral de Burgos. Por sus manos han pasado muchas de las campanas y relojes de las iglesias de la provincia burgalesa, pero también de Canarias, donde ha pasado buen parte de su vida.\r\n\r\nA pesar de los cambios que ha sufrido su profesión, tanto por la automatización como porque muchas iglesias han dejado de tocar, sigue haciéndose cargo de las campanas y los relojes que siguen requiriendo mantenimiento, afinación y precisión.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos muestra algunos de los secretos más escondidos de El Papamoscas, el genial autómata del templo que abre y cierra la boca a las horas, acompañado de El Martinillo, su ayudante a los carrillones. Cano nos enseña los mecanismos de estos ingenios mecánicos, que necesitan de conservación y mantenimiento, además de ayudarnos a comprender cómo se sincronizan con los relojes del templo.\r\n\r\n Además, en su labor como campanero nos acompaña a la cima de la catedral para ver cómo se tocan las campanas, hoy ya automatizadas, su estado y mantenimiento y su futuro.'),
(2, 'Expertos', 'Nuestros expertos', 'Enrique Barrio', 'Enrique Barrio es maestro vidriero y ha colaborado en la restauración y recreación de varias vidrieras en la catedral de Burgos. Con formación tanto en la técnica de las vidrieras como en estudios históricos sobre el vidrio, colabora habitualmente en publicaciones y proyectos científicos, así como en la difusión de su trabajo a través de conferencias para dar a conocer la importancia del mantenimiento y la conservación del patrimonio artístico.\r\n\r\nAdemás de en la catedral de Burgos, ha realizado actuaciones en las catedrales de Astorga, Mallorca, Orense y Cienfuegos (Cuba) y mantiene formas de trabajo tradicionales para la creación y conservación de los vitrales. Para realizar las labores de conservación, Enrique Barrio realiza un estudio de las características físicas y químicas de cada vidrio completo, sus materiales y los problemas de degradación y deterioro que presenta.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos, Barrio nos muestra su trabajo en el taller, en el que mantiene las formas de creación, pintura, corte y emplomado tradicionales y que resultan fundamentales para que se mantenga la esencia y el aspecto de las vidrieras tradicionales del templo, que, además, suponen una enorme muestra del recorrido histórico del arte de la vidriera a lo largo de los siglos. Además, nos enseña los criterios a la hora del mantenimiento y sustitución de los vitrales.'),
(3, 'Expertos', 'Nuestros expertos', 'Francisco del Hoyo', 'Francisco Jesús del Hoyo es licenciado en Bellas Artes y restaurador de pinturas y policromías. Con una amplia experiencia de trabajo dentro de la Catedral de Burgos. Especialista en policromías de piedra y madera, lleva varios años trabajando en el interior de la seo burgalesa, además de mantener una intensa actividad como artista plástico.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos enseña la técnica de la policromía, el pintado sobre madera o piedra, y cómo se ha utilizado para ennoblecer materiales, hacerlos destacar o embellecer la decoración. Este proceso, diferente a la pintura sobre lienzo o el fresco, requiere de mucha atención y cuidados para evitar su deterioro.\r\n\r\nLos diferentes procesos químicos, la presencia de los humos de incienso y el propio paso del tiempo deterioran estas capas de pintura, muchas veces de tal forma que es imposible recuperar los colores originales. Sin embargo, un trabajo detallado permite sacar de nuevo a la luz la riqueza cromática de la catedral de Burgos.\r\n\r\nEl proceso de restauración de las obras va desde los análisis químicos hasta procesos de recuperación físicos y químicos, llegando incluso a utilizar el láser para limpiar la piedra no pintada o mezclas de componentes químicos para las superficies policromadas, muchas veces con una mezcla hecha a medida para cada detalle de la obra.\r\n\r\nDel Hoyo nos lleva de la mano por un proceso que une arte y ciencia en el que el restaurador trata de ser invisible y cubrir sus huellas para mantener la esencia original de cada pintura y escultura. '),
(4, 'Expertos', 'Nuestros expertos', 'Gabriel García Agudo', 'Gabriel García Agudo es el responsable del proyecto Patrimonio de la Luz y experto en turismo. Su empresa gestiona las canteras de las que se extrajo la piedra de la catedral de Burgos, convertidas ahora en un monumento natural que cada vez atrae a más turistas. García Aguado ha realizado trabajo de investigación sobre las canteras de Hontoria, que sirvieron de materia prima para muchas construcciones en la provincia de Burgos y conoce al detalle la forma de extracción y de trabajo dentro de estas canteras.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos muestra los lugares de extracción de esa piedra blanca tan característica de la seo burgalesa, guiándonos a través de las marcas de las picas de la extracción. Además, nos describe el transporte desde la sierra burgalesa hasta el templo, donde los diferentes talleres de cantería tallaban los bloques y los ornamentos necesarios.'),
(5, 'Expertos', 'Nuestros expertos', 'Itsaso Artetxe', 'Itsaso Artetxe es restauradora de arte en la empresa Fénix Restauración, especializada en trabajo sobre madera. Lleva varios años trabajando en los bienes muebles de la catedral de Burgos, manteniendo y restaurando los elementos de madera.\r\n\r\nLa restauradora nos relata cómo la humedad de la catedral puede ser un gran enemigo de los bienes del templo. Junto a Mercedes Chico nos muestra los procesos de restauración y conservación que se llevan a cabo sobre los elementos artísticos de madera y los procesos químicos y físicos que se aplican sobre los mismos. Los procesos deben ser muy delicados y cuidados al detalle, con mucho respeto a las obras, a su valor y su delicado estado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertoscapitulos`
--

CREATE TABLE `expertoscapitulos` (
  `identificador` int(11) NOT NULL,
  `id_expertos` int(11) NOT NULL,
  `id_capitulos` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficacategoria`
--

CREATE TABLE `graficacategoria` (
  `identificador` int(255) NOT NULL,
  `id_documentaciongrafica` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`identificador`, `titulo`, `subtitulo`, `texto`, `imagen`) VALUES
(1, 'La ciencia\r\nque esconde la\r\nCatedral de Burgos', 'La unión del arte y la ciencia', 'Durante 800 años, la Catedral de Burgos ha acumulado misterios, saberes y artes en su interior que son muestra de algunos de los avances científicos, técnicos y tecnológicos de diferentes épocas, desde la revolución del gótico hasta las más modernas tecnologías aplicadas a la seguridad y la restauración para mantener el edificio en la mejor de las condiciones.\r\n\r\nEn La Ciencia que esconde la Catedral de Burgos nos adentramos en los secretos de la construcción, decoración, mantenimiento y restauración de uno de los templos más bellos y reconocibles del mundo de la mano de quince especialistas que nos mostrarán cómo las diferentes ciencias y artes se han dado cita en el interior y exterior de la seo burgalesa, quince expertos que nos guiarán en este viaje gracias a sus conocimientos en matemáticas, física, química, historia del arte y los procesos de restauración aplicados en el exterior y el interior del templo.\r\n\r\nEste documental, producido por la Unidad de Cultura Científica e Innovación de la Universidad de Burgos (UCC+i) con la colaboración de la Fundación Española para la Ciencia y la Tecnología (FECYT) y el apoyo del Cabildo de Burgos quiere, además de celebrar el 800 cumpleaños del templo, mostrar la complejidad técnica de la construcción de la Catedral y la precisión en su construcción y desarrollo.', 'https://www.youtube.com/watch?v=nZKNranpFGw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`identificador`, `titulo`, `subtitulo`, `imagen`) VALUES
(1, 'El proyecto', 'Repercusión', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/comcired_2021-980x568.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `expertos`
--
ALTER TABLE `expertos`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `expertoscapitulos`
--
ALTER TABLE `expertoscapitulos`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `id_capitulos` (`id_capitulos`),
  ADD KEY `id_expertos` (`id_expertos`);

--
-- Indices de la tabla `graficacategoria`
--
ALTER TABLE `graficacategoria`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `id_documentaciongrafica` (`id_documentaciongrafica`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `graficacategoria`
--
ALTER TABLE `graficacategoria`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `expertoscapitulos`
--
ALTER TABLE `expertoscapitulos`
  ADD CONSTRAINT `expertoscapitulos_ibfk_1` FOREIGN KEY (`id_capitulos`) REFERENCES `capitulos` (`identificador`),
  ADD CONSTRAINT `expertoscapitulos_ibfk_2` FOREIGN KEY (`id_expertos`) REFERENCES `expertos` (`identificador`);

--
-- Filtros para la tabla `graficacategoria`
--
ALTER TABLE `graficacategoria`
  ADD CONSTRAINT `graficacategoria_ibfk_1` FOREIGN KEY (`id_documentaciongrafica`) REFERENCES `documentaciongrafica` (`identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
