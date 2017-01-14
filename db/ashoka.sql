-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-01-2017 a las 22:35:27
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ashoka`
--
CREATE DATABASE IF NOT EXISTS `ashoka` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ashoka`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(9) NOT NULL,
  `id_eventbrite` varchar(15) NOT NULL,
  `title` varchar(200) NOT NULL,
  `created` int(14) NOT NULL,
  `organizer_name` varchar(100) NOT NULL,
  `uri` varchar(200) NOT NULL,
  `start_date` int(14) NOT NULL,
  `end_date` int(14) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places`
--

CREATE TABLE `places` (
  `id` int(9) NOT NULL,
  `approved` int(1) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schoolType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `postalCode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `places`
--

INSERT INTO `places` (`id`, `approved`, `name`, `type`, `lat`, `lng`, `address`, `uri`, `description`, `schoolType`, `phone`, `fax`, `postalCode`) VALUES
(1, 0, 'Escolas dels encants', 'Preschool', 41.404, 2.18315, 'Consell de Cent, 558-560,Barcelona', '', '', 'Public', '', '', 8020),
(2, 0, 'Escola Pia Olot', 'Multi-level', 42.1807, 2.48454, 'Plaza Clara, 9,Olot, Girona', 'http://olot.escolapia.cat/', '', 'Private', '972 26 02 12', '', 17800),
(3, 0, 'Escola Mata de Jonc', 'Multi-level', 39.5751, 2.62906, 'Son Espanyolet, 49,Palma de Mallorca', 'http://www.matadejonc.cat/', '', 'Charter', '971 73 66 77', '971283952', 7014),
(4, 0, 'Escola Mata de Jonc', 'Multi-level', 39.5751, 2.62906, 'Son Espanyolet, 49,Palma de Mallorca', 'http://www.matadejonc.cat/', '', 'Charter', '971 73 66 77', '971283952', 7014),
(5, 0, 'Escola Martinet', 'Multi-level', 41.3543, 2.09181, 'Martinet, 1,Cornella de Llobregat, Barcelona', 'http://agora.xtec.cat/escolamartinet/', '', 'Private', '933 77 67 54', '', 8940),
(6, 0, 'ESCOLA LHORITZo', 'Multi-level', 41.406, 2.13274, 'Passeig de la Bonanova 7,Barcelona', '', '', 'Private - Religious Affiliation', '', '', 8022),
(7, 0, 'Escola Guerau de Peguera', 'Primary', 41.3851, 1.57749, 'Escoles, ,Barcelona, Torrelles de Foix', '', '', 'Public', '93 897 13 77', '', 8737),
(8, 0, 'Escola Garbi Pere vergues', 'Unknown', 41.4754, 2.25207, 'Avinguda de les Palmeres, 5,Badalona, Barcelona', '', '', 'Charter', '', '', 8916),
(9, 0, 'Colegio Maristes Girona', 'Unknown', 41.9806, 2.81083, 'Avinguda de Josep Tarradellas, 5-7,Girona', 'www.maristes.cat/girona', '', 'Charter', '972 23 22 11', '972 244 750', 17007),
(10, 0, 'CEIP Carlos Cano', 'Unknown', 40.2962, -3.83066, 'Avenida de Nuevo Versalles ,Loranca (Fuenlabrada)', 'http://www.educa2.madrid.org/web/centro.cp.carloscano.fuenlabrada/home', '', 'Public', '91 604 54 80 - 692 13 06 91', '', 28942),
(11, 0, 'CEIP Escuela Sostenible San Jose', 'Unknown', 40.1984, -3.80499, 'Calle de Malaga, 61,,Torrejon de la Calzada', 'http://www.educa.madrid.org/cp.sanjose.torrejondelacalzada', '', 'Public', '918169296', '', 28991),
(12, 0, 'Escola Carme Auguet', 'Multi-level', 42.2811, 3.27808, 'Port Lligat, 11,Girona', 'http://www.escolacarmeauguet.cat/', '', 'Public', '972 212 745', '972 212 745', 17007),
(13, 0, 'Papoula Escuela Libre', 'Multi-level', 40.591, -3.58865, 'Fuentedelfresno', 'http://elblogdepapoula.blogspot.com.es/p/como-localizarnos.html', '', 'Public', '626 216 998 y 636 438 216', '', 0),
(14, 0, 'CEIP Tremanes', 'Multi-level', 43.5322, -5.69723, 'Bazan 47,Gijon', 'http://web.educastur.princast.es/cp/tremanes/joomla/index.php?option=com_content&task=blogcategory&id=53&Itemid=90', '', 'Public', '985322468', '985322468', 33211),
(15, 0, 'Escuela Infantil Aire Libre', 'Preschool', 38.3948, -0.459816, ' Azahar, 22,Alicante', 'www.escuelaairelibre.com', '', 'Private', '965 26 43 15', '', 3559),
(16, 0, 'IES Itaka', 'Secondary', 37.3679, -6.04859, 'Calle Cristina Hoyos, ,Tomares', 'www.iesitaca.org', '', 'Public', '600 141 272', '', 41940),
(17, 0, 'Escola Mata de Joch', 'Multi-level', 39.5751, 2.62906, 'Carrer son Espanyolet 49,Palma', 'www.matadejonc.cat/Contacte', '', 'Charter', '971 736 677', '', 7014),
(18, 0, 'Ceip Talaiot', 'Multi-level', 39.5658, 3.36911, 'Carrer Anfos ,S''Illot', 'www.ceiptalaiot.org', '', 'Public', '971 811 082', '', 7687),
(19, 0, 'CEIP La Chanca', 'Multi-level', 36.8376, -2.47607, 'Av. del Mar 0,Almeria', 'https://lachancacaminasolahacialaescuela.wordpress.com/proyectos/proyecto/', '', 'Public', '950 156 120', '950 156 122', 4002),
(20, 0, 'CEIP Clara Campoamor', 'Multi-level', 36.8858, -2.44841, ' Sierra de Cazorla, ,Huercal de la Almeria', '', '', 'Public', '950 153 003', '', 4230),
(21, 0, 'Escuela 2 (cooperativa)', 'Multi-level', 39.5268, -0.4688, 'Carrer 2,La Canyada (Paterna)', 'www.escuela2.es', '', 'Charter', '961 329 017', '', 46182),
(22, 0, 'CEIP San Juan de avila', 'Unknown', 38.5396, -3.27457, 'Calle Ermita, 77,Castellar de Santiago', 'http://ceip-casanjuandeavila.centros.castillalamancha.es/', '', 'Public', '926 340 127', '', 13750),
(23, 0, 'IES Hermogenes Rodriguez de Herencia', 'Secondary', 0, 0, 'Av. Alcazar 51 (Apdo. Correos 56),Ciudad Real', 'hermogenesrodriguezl.blogspot.com.es/', '', 'Public', '926 573 380', '', 13640),
(24, 0, 'Mayrit Escuela Activa', 'Multi-level', 40.3782, -3.74591, 'Calle epoca 14,Carabanchel', 'mayrtescuelaactiiva.org/contacta/', '', 'Private', '681608205', '', 28025),
(25, 0, 'IES Carlos Casares', 'Secondary', 0, 0, 'Entrada de Rua 104,Viana do Bolo', 'http://www.edu.xunta.es/centros/iescarloscasaresviana/', '', 'Public', '988 340 846', '988 340 844', 32550),
(26, 0, 'Sagrado Corazon (Soria)', 'Unknown', 41.7637, -2.46221, 'LOS MIRANDAS 2,,Soria', 'http://www.sacosoria.com/', '', 'Charter', '975 211 159', '', 42002),
(27, 0, 'Institut Miquel Biada', 'Secondary', 41.5402, 2.42951, 'Avinguda Puig i Cadafalch, 89 ? 99,Mataro', 'http://biada.org/html/biadapress/?page_id=2015', '', 'Public', '937 981 489', '937 984 532', 8303),
(28, 0, 'IES Castillo del Aguila', 'Secondary', 40.0335, -3.90835, 'Camino de Yuncler, ,Villaluenga de la Sagra', 'http://ies-castilloaguila.centros.castillalamancha.euestr o-centro/el-centro#sthash.j2gv8rFr.dpuf', '', 'Public', '925530347', '925530012', 45520),
(29, 0, 'CEIP Es Puig', 'Multi-level', 0, 0, 'Calle Afores ,Llosets (Mallorca)', 'http://www.cpespuiglloseta.com/', '', 'Public', '971519436', '', 7360),
(30, 0, 'Colexio Pluriling?e Vilas Alborada', 'Multi-level', 42.8805, -8.53493, 'Corredoira das Fraguas, 26,Santiago de Compostela', 'http://colexiovilasalborada.es/', '', 'Private', '981 58 57 91', '', 15703),
(31, 0, 'IES Vicent Andres Estelles', 'Secondary', 0, 0, 'Pla?a Palleter, ,Burjassot', 'http://www.vicentandresestelles.org/', '', 'Public', '96 120 62 20', '96 120 62 21.', 46100),
(32, 0, 'IES San Antonio de Benageber', 'Secondary', 39.5632, -0.502436, 'Calle San Vicente Ferrer, 2.,San Antonio de Benageber', 'www.iesbenageber.edu.gva.es', '', 'Public', '96 135 34 96', '', 46184),
(33, 0, 'Colegio Santa Ana', 'Multi-level', 39.0856, -0.475762, 'Calle Major, 6,La Pobla Llarga', 'https://csantaana.wordpress.com/', '', 'Charter', '96 2970791', '', 46670),
(35, 0, 'INS Montgros', 'Secondary', 41.2606, 1.78122, 'Carrer Joan Cuadras i Marcer, 1,Sant Pere de Ribes', 'http://www.insmontgros.cat/', '', 'Public', '938 961 220', '', 8810),
(36, 0, 'CEIP Atalaya de Artafe', 'Primary', 37.2205, -3.68977, 'Avda. Libertad ,Artafe', 'http://www.juntadeandalucia.es/averroes/centros-ti18601989/helvia/sitio/', '', 'Public', '958 89 39 18', '958 89 39 19', 18230),
(37, 0, 'IES SINS Cardener', 'Secondary', 41.7433, 1.80371, 'Calle del Sol 13,Sant Joan de Vilatorrada', 'http://agora.xtec.cat/sinscardener/', '', 'Public', '938 765 674', '', 8250),
(38, 0, 'CEIP NORAI', 'Unknown', 39.8409, 3.1383, 'Calle Balears 12,Alcudia', 'http://noraiinfantil.blogspot.com.es/', '', 'Public', '971 547 651', '971 547 651', 7400),
(39, 0, 'TRABENCO', 'Primary', 40.334, -3.73952, 'Av. de Alemania, 18,Leganes (Madrid)', 'http://www.trabenco.com/', '', 'Public', 'http://www.trabenco.com/', '', 28916),
(40, 0, 'O Pelouro', 'Multi-level', 0, 0, 'Banos, 81 ,Caldelas de Tui (Pontevedra)', 'http://www.opelouro.com/', '', 'Public', '', '', 0),
(41, 0, 'ESCOLA SADAKO', 'Multi-level', 41.4426, 2.10166, 'Collserola,BARCELONA', 'http://escolasadako.cat/', '', 'Other', '93 211 37 16', '', 4208035),
(42, 0, 'Padre Piquer', 'Secondary', 40.4709, -3.69162, ' Martires de la Ventilla, 34 -Madrid', 'http://www.padrepiquer.es/', '', 'Charter', '913153947', '', 28029),
(43, 0, 'CEIP AMARA BERRI', 'Primary', 43.3024, -1.9764, 'Plza. Ferrerias, 6,Donostia', 'http://amaraberri.org/ab/index', '', 'Public', '943 458550', '943 464013', 20011),
(44, 0, 'LInstitut Joan Oro de Lleida', 'Unknown', 0, 0, 'Carretera Saragossa km 464,2,LLeida', 'http://www.iesjoanoro.cat/', '', '', '', '', 25194),
(45, 0, 'C.E.I.P. Juan Mena de la Cruz', 'Multi-Level', 42.0239, -4.53406, 'Camino Sta. Eufemia, 23,Palencia', 'http://ceipjuanmenadelacruz.centros.educa.jcyl.es/sitio/index.cgi', '', 'Public', '', '', 34003),
(46, 0, 'Colegio Santiago Apostol Cabanyal', 'Multi-level', 0, 0, 'Calle Escalante 329 Bajo,Val?ncia', 'www.santiagoapostolcabanyal.es', '', 'Charter - Religious affiliation', '', '', 46011),
(47, 0, 'Fundacio Sa Llavor', 'Multi-level', 39.6932, 2.84444, 'Metge Borras, 3,Binissalem', 'www.sallavor.es', '', 'Private', '', '', 7350),
(48, 0, 'CEIP Ramiro Solans', 'Multi-level', 41.6524, -0.923634, 'Calle de Teodora Lamadrid, 61, 50011 Zaragoza,Zaragoza', 'http://ceipramirosolans.catedu.es/', '', '', '976 34 48 65', '', 0),
(49, 0, 'CP Alcalde de Mostoles', 'Unknown', 40.3798, -3.77644, 'Calle Aldeanueva de la Vera, 9, 28044 MadridMadrid', 'http://alcaldedemostoles.es', '', '', '917 05 54 65', '', 0),
(50, 0, 'CEIP Pluriling?e San Benito de Lerez', 'Multi-level', 0, 0, 'Unknown', 'http://www.edu.xunta.gal/centros/ceipsanbenitodelerez/', '', 'Public', '', '', 0),
(51, 0, 'CEIP Maria Sanz de Sautuola', 'Multi-level', 0, 0, 'Unknown', '', '', 'Public', '', '', 0),
(52, 0, 'IES FERNANDO DE LOS RiOS', 'Secondary', 0, 0, 'Unknown', '', '', 'Public', '', '', 0),
(53, 0, 'CEIP ANTONIO MACHADO', 'Multi-level', 0, 0, 'Unknown', 'http://cpamachadomer.juntaextremadura.net/', '', 'Public', '924 00 98 72', '', 0),
(54, 0, 'Colegio Brains International School', 'Multi-level', 0, 0, 'Unknown', 'www.colegiobrains.com/', '', 'Private', '916 50 43 00', '', 0),
(55, 0, 'IES Gines de los Rios', 'Secondary', 0, 0, 'Unknown', 'http://ceipginer.blogspot.com.es/', '', 'Public', '', '', 0),
(56, 0, 'CEIP Abencerrajes', 'Multi-level', 0, 0, 'Unknown', 'http://www.juntadeandalucia.es/averroes/centros-ti18601059/helvia/sitio/index.cgi', '', 'Public', '958 89 33 76', '', 0),
(57, 0, 'CEIP Atalaya Cartagena', 'Multi-level', 0, 0, 'Unknown', 'www.murciaeduca.es/cpn12cartagena/sitio/index.cgi', '', 'Public', '660 63 22 57', '', 0),
(58, 0, 'CEIP Miguel de Cervantes', 'Multi-level', 41.6392, -4.72292, 'Calle del Arca Real, 8,,Valladolid', 'http://ceipcervantesvalladolid.centros.educa.jcyl.es/sitio/', '', 'Public', '983 23 03 76', '983 23 03 76', 47013),
(59, 0, 'IES Juan de la Cierva', 'Secondary', 40.4023, -3.70638, ' Caoba n 1Madrid', 'http://www.educa2.madrid.org/web/centro.ies.juandelacierva.madrid/caracteristicas', '', 'Public', '91 506 46 10', '91 467 01 67', 28005),
(61, 0, 'IES Juan de la Cierva', 'Secondary', 40.4023, -3.70638, ' Caoba n 1Madrid', 'http://www.educa2.madrid.org/web/centro.ies.juandelacierva.madrid/caracteristicas', '', 'Public', '91 506 46 10', '91 467 01 67', 28005),
(62, 0, 'Nuestra senora de la Asuncion Caceres', 'Multi-level', 39.4675, -6.38439, 'Calle del Padre Eladio Mozas, 1,,Caceres', 'http://www.colegiojosefinas.es/laasuncion/index.php', '', 'Charter', '927 22 51 66 - 927 21 44 42', '927 21 44 42', 10001),
(63, 0, 'Escoleta infantil y guarderia Poc a Poc', 'Preschool', 39.5538, 2.69453, 'Calle jose vargas ponce, 20 bj,,Palma de Mallorca', 'http://www.pocapoc.org/', '', 'Private', '605 558 780 - 971 260 127', '', 7007),
(64, 0, 'CRA Moncalvillo', 'Multi-level', 42.3345, -2.48685, 'Plaza de la Tela ,Nalda', 'http://www.cramoncalvillo.org/', '', 'Public', '941 447 514', '941 447 514', 26190),
(65, 0, 'I.E.S. Campo de San Alberto', 'Secondary', 42.7877, -8.88744, 'Rua Egas Moniz ,Noia', 'http://www.edu.xunta.es/centros/iescamposanalberto/ http://www.edu.xunta.es/centros/iescamposanalberto/', '', 'Public', '981822800', '981822887', 15200),
(66, 0, 'C.R.A. Nosa Senora do Faro', 'Multi-level', 43.2432, -8.9007, 'Rua Concello, 14,Santo Eleuterio, Tella', 'http://www.edu.xunta.es/centros/crasenhorafaro/', '', 'Public', '981 714 692', '981 714 692', 1510),
(67, 0, 'C.P.I. Virxe da Cela', 'Multi-Level', 43.3046, -8.04345, 'O Xestal, Monfero', 'http://www.edu.xunta.es/centros/cpivirxedacelamonfero/', '', 'Public', '981 777 606', '981 793 044', 15619),
(68, 0, 'Colegio Santa Cruz', 'Multi-level', 39.4721, -0.412431, 'Carrer Palleter n12, 46920 Mislata Valencia,', 'http://colsantacruz.es/es/', '', 'Charter', '963.83.53.42', '', 0),
(69, 0, 'Loiu Colegi Laudo', 'Unknown', 0, 0, 'Vizcaya', '', '', 'Charter', '', '', 0),
(70, 0, 'Leioa Askartza Claret', 'Unknown', 43.3267, -2.99006, 'Vizcaya, Leioa', '', '', 'Other', '', '', 0),
(71, 0, 'Virgen de Europa', 'Multi-level', 40.4309, -3.89055, 'Valle de Santa Ana, 1,Boadilla del, Monte Madrid', '', '', 'Private - Religious Affiliation', '', '', 28669),
(72, 0, 'Tximeleta asociacion', 'Unknown', 42.6954, -1.67607, 'Navarra', '', '', 'Other', '', '', 0),
(73, 0, 'Sunion', 'Unknown', 41.4106, 2.14545, 'Av. de la Republica Argentina, 85-89,Barcelona', '', '', 'Private', '', '', 8023),
(74, 0, 'St. Pauls School', 'Multi-level', 41.3917, 2.10529, 'Avenida Pearson, 39 - 45,Barcelona', '', '', 'Private', '932 030 500', '', 8034),
(75, 0, 'Siglo XXI Cooperativa Madrid', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Private', '', '', 0),
(76, 0, 'San Miguel Arcangel', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(77, 0, 'San Ignacio de Loyola', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(78, 0, 'San Francisco de Paula', 'Multi-level', 37.3934, -5.99061, 'Santa angela de la Cruz, 11,Sevilla', 'http://www.sfpaula.com/', '', 'Private - Religious Affiliation', '', '', 41003),
(79, 0, 'San Cristobal', 'Primary', 40.4168, -3.70379, 'Madrid', '', '', 'Public', '', '', 0),
(80, 0, 'Saltamontes Asociacion Madrid', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Other', '', '', 0),
(81, 0, 'SALESIANOS LOYOLA', 'Multi-level', 40.028, -3.60937, 'Valeras 24,Aranjuez, Madrid', '', '', 'Charter', '', '', 28300),
(82, 0, 'Sa llavor', 'Multi-level', 0, 0, 'Biniarroi n 28,Mancor de la Vall, Mallorca, Baleares', '', '', 'Private', '971 88 12 77', '', 7312),
(83, 0, 'Rufino Blanco', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Public', '', '', 0),
(84, 0, 'ROSA RELAnO EDUCACIoN ESPECIAL', 'Multi-level', 36.867, -2.32216, 'Almeria', '', '', 'Public', '', '', 0),
(85, 0, 'Ramon y Cajal', 'Unknown', 40.4606, -3.66109, 'Arturo Soria, 206Madrid', '', '', 'Private', '', '', 28043),
(86, 0, 'Puig de na Fatima', 'Primary', 39.6197, 2.52709, 'Carrer de la Vila,Puigpunyent, Illes Balears', '', '', 'Public', '971 61 42 15', '', 7194),
(87, 0, 'Paideia escuela libre', 'Primary', 38.9145, -6.36614, 'Juan de dios Roman Seco,Merida, Badajoz', '', '', 'Private', '924 123 352', '', 6800),
(88, 0, 'Ojo de Agua', 'Unknown', 38.346, -0.490685, 'Alicante', '', '', 'Private', '', '', 0),
(89, 0, 'Nazaret Oporto, Montserrat', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(90, 0, 'Tximeleta Asociacion', 'Unknown', 42.6954, -1.67607, 'Navarra', '', '', 'Other', '', '', 0),
(91, 0, 'Montserrat Barcelona', 'Multi-level', 41.409, 2.11098, 'Av. Vallvidrera, 68,Barcelona', 'http://www.cmontserrat.org/', '', 'Charter', '932 038 80', '932 806 254', 8017),
(92, 0, 'Malaga Proyecto Cartama IES Cartima', 'Secondary', 36.738, -4.60591, 'Calle Van Gogh  Estacion de Cartama,Malaga, Cartama', '', '', 'Public', '951 26 72 00', '', 29580),
(93, 0, 'La Violeta Asociacion', 'Primary', 40.4168, -3.70379, 'Madrid', '', '', 'Other', '', '', 0),
(94, 0, 'IES Miguel Catalan Comunidad de Aprendizaje', 'Unknown', 40.426, -3.56516, 'Coslada, Madrid', '', '', 'Public', '', '', 0),
(95, 0, 'San Miguel Arcangel', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(96, 0, 'Saltamontes Asociacion Madrid', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Other', '', '', 0),
(97, 0, 'Montserrat - S. Ignacio de Loyola', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(98, 0, 'Active School', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(99, 0, 'Liceo politecnico', 'Multi-level', 41.3837, 2.09336, 'Carrer dApelles Mestres, 5,Barcelona', 'http://www.liceupolitecnic.es/phone/index.html', '', 'Private', '93 699 08 99', '93 697 54 33', 8191),
(100, 0, 'Liceo Europeo', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Private', '', '', 0),
(101, 0, 'Lauaxeta Ikastola', 'Unknown', 0, 0, 'B San Migel Auzoa,Euba-Amorebieta, Vizcaya', '', '', 'Private', '', '', 48290),
(102, 0, 'Lauaxeta Ikastola', 'Unknown', 0, 0, 'B San Migel Auzoa,Euba-Amorebieta, Vizcaya', '', '', 'Private', '', '', 48290),
(103, 0, 'La violeta Asociacion', 'Unknown', 40.5768, -4.0058, 'Galapagar, Madrid', '', '', 'Other', '', '', 0),
(104, 0, 'LA NAVATA', 'Multi-level', 40.596, -3.9925, 'Estanque, 8,Galapagar, Madrid', '', '', 'Public', '', '', 28420),
(105, 0, 'Jacint Verdaguer', 'Multi-level', 41.4284, 1.78941, 'Calle Gelida,Sant Sadurni dAnoiam, Barcelona', '', '', 'Public', '', '', 8770),
(106, 0, 'IPI Sansomendi', 'Multi-level', 42.8591, -2.68186, 'Vitoria', 'http://iesbenageber.edu.gva.es/index.php/en/', '', 'Public', '', '', 0),
(107, 0, 'International College Spain', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Private - Religious Affiliation', '', '', 0),
(108, 0, 'Institut Qatre Cantons', 'Secondary', 41.4044, 2.20042, 'Cami Antic de Valencia 37-39,Barcelona', 'http://www.4cantons.cat/', '', 'Public', '93 303 76 70', '', 8005),
(109, 0, 'Institut Mon Perdut', 'Secondary', 41.5664, 2.03746, 'Mont Perdut, 1,Terrassa, Barcelona', 'http://www.montperdut.cat/', '', 'Public', '937 84 43 80', '937 84 67 66', 822),
(110, 0, 'Institut Miquel Biada', 'Secondary', 41.5402, 2.42951, 'Avinguda Puig i Cadafalch, 89 - 99,Mataro, Barcelonaa', 'http://www.biada.org', '', 'Public', '937 98 14 89', '937984532', 8303),
(111, 0, 'Institut Escola Les Vinyes', 'Multi-level', 41.4574, 2.20538, 'Carrer dAmerica, 53,Santa Coloma de Gramenet, Barcelona', 'http://ielesvinyes.net/', '', 'Public', '933 91 1451', '934 68 22 71', 8924),
(112, 0, 'Institut Escola La Tordera', 'Unknown', 41.3851, 2.1734, 'Barcelona', '', '', 'Public', '', '', 0),
(113, 0, 'Institut Eduard Fontsere', 'Multi-level', 41.368, 2.1107, ' Mimoses 3,lHospitalet de Llobregat, Barcelona', 'http://www.ieseduardfontsere.net/', '', 'Public', '934 49 55 94', '934 49 56 06', 8905),
(114, 0, 'Institut de Sils Girona Sils', 'Secondary', 41.818, 2.73724, ' Josep Carreras ,Sils', 'http://institutdesils.cat/', '', 'Public', '607 08 45 40', '', 17410),
(115, 0, 'Institut Costa I llobera', 'Multi-level', 41.4025, 2.10829, 'Capella de Can Caralleu ,Barcelona', ': http://www.costaillobera.cat/', '', 'Private', '932 04 75 51', '', 8017),
(116, 0, 'INS Mongros', 'Secondary', 41.2606, 1.78122, 'Carrer Joan Cuadras i Marcer, 1,Sant Pere de Ribes, Barcelona', 'http://www.insmontgros.cat/', '', 'Public', '938 961 220', '', 8810),
(117, 0, 'Ikastola Begonazpi Bilbao', 'Multi-level', 43.2609, -2.90567, 'Jesus de Galindez, 15,Bilbao', 'http://www.begonazpi.org/', '', 'Private', '94 400 53 00', '94 400 53 01', 48004),
(118, 0, 'IES Vicent Andres Estelles', 'Secondary', 39.5127, -0.421486, 'Plaza Palleter,,Burjassot, Valencia', 'http://www.vicentandresestelles.org/', '', 'Public', '96 120 62 20', '96 120 62 21', 46100),
(119, 0, 'IES Turaniana', 'Secondary', 36.7637, -2.61543, 'Roquetas de Mar, Almeria', '', '', 'Public', '', '', 0),
(120, 0, 'IES SINS Cardener', 'Secondary', 41.7433, 1.80371, 'calle del Sol, 13,Sant Joan de Vilatorrada, Barcelona', '', '', 'Public', '', '', 8250),
(121, 0, 'IES Selgas', 'Secondary', 43.56, -6.14842, 'Cudillero, Asturias', '', '', 'Public', '', '', 0),
(122, 0, 'IES San Isidro Publico Madrid', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Public', '', '', 0),
(123, 0, 'IES San Antonio de Benageber', 'Secondary', 39.5632, -0.502436, 'San Vicente Ferrer, 2,San Antonio de Benageber, Valencia', '', '', 'Public', '96 120 63 25', '', 46184),
(124, 0, 'IES Rosa Chacel', 'Secondary', 40.6535, -3.76647, 'Huertas 68,Colmenar Viejo, Madrid', '', '', 'Public', '', '', 28770),
(125, 0, 'IES Reus Tarragona Reus', 'Multi-level', 41.1498, 1.10553, 'Reus, Tarragona', '', '', 'Public', '', '', 0),
(126, 0, 'IES Princep Girona', 'Multi-level', 41.4025, 2.15976, 'Travesia de Gracia,Barcelona', '', '', 'Public', '', '', 357),
(127, 0, 'IES Miguel Catalan Comunidad de Aprendizaje', 'Unknown', 40.426, -3.56516, 'Coslada, Madrid', '', '', 'Public', '', '', 0),
(128, 0, 'IES Madrid Sur', 'Unknown', 40.3796, -3.65893, 'Avda. Parque de Palomeras BajasMadrid', '', '', 'Public', '', '', 0),
(129, 0, 'IES La Guancha Publico Tenerife', 'Multi-level', 28.2916, -16.6291, 'Tenerife', '', '', 'Public', '', '', 0),
(130, 0, 'IES Julio Verne', 'Secondary', 40.332, -3.76865, 'Leganes, Madrid', '', '', 'Public', '', '', 0),
(131, 0, 'IES Jose Maria Infantes Sevilla Utera', 'Multi-level', 37.1848, -5.77951, 'Utera, Sevilla', '', '', 'Public', '', '', 0),
(132, 0, 'IES Hiponova', 'Multi-level', 0, 0, 'Avenida Miguel Hernandez, 2,Montefrio, Granada', '', '', 'Public', '', '', 18270),
(133, 0, 'IES Gurb', 'Secondary', 41.9393, 2.2362, ' Olivera ,Gurb, Barcelona', 'http://institutdegurb.cat/', '', 'Public', '938 897 572', '93 889 75 75', 8503),
(134, 0, 'IES Duque de Rivas', 'Secondary', 40.3677, -3.53397, 'Pso. de la Chopera 64,Rivas, Vaciamadrid', 'http://ies.duquederivas.rivas.ed uca.madrid.org/duque/index.ph p', '', 'Public', '91 666 52 59 / 91 666 60 45', '91 666 83 88', 28523),
(135, 0, 'IES Celso Diaz Arnedo La Rioja', 'Multi-level', 42.2257, -2.10208, 'Arnedo, La Rioja', '', '', 'Public', '', '', 0),
(136, 0, 'IES Castillo del Aguila', 'Secondary', 40.0335, -3.90835, 'Camino de Yuncler,Villaluenga de la Sagra, Toledo', 'http://www.educa.madrid.org/web/cp.elquijot e.madrid/', '', 'Public', '925 53 03 47', '925530012', 45520),
(137, 0, 'IES Cartama Proyecto Cartima', 'Secondary', 36.738, -4.60591, 'Calle Van Gogh, estacion de Cartama,Malaga', 'http://proyectocartama.es/blog/', '', 'Public', '951 26 72 00', '', 29580),
(138, 0, 'IES Carlos Casares', 'Secondary', 42.1881, -7.10363, 'Estrada da Rua, 104,Viana do Bolo (Ourense)?', '', '', 'Public', '988 34 00 86', '988340844', 32550),
(139, 0, 'IES Carlos Casares', 'Secondary', 42.1881, -7.10363, 'Estrada da Rua, 104,Viana do Bolo (Ourense)?', '', '', 'Public', '988 34 00 86', '988340844', 32550),
(140, 0, 'IES Can Jofresa', 'Secondary', 41.5499, 2.02173, 'Av. Can Jofresa, 12,Terrassa, Barcelona', '', '', 'Public', '', '', 8223),
(141, 0, 'IES Beatriz Galindo Publico Madrid', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Public', '', '', 0),
(142, 0, 'IES Arzobispo Valdes Salas Asturias Pub', 'Multi-level', 43.3614, -5.85933, 'Asturias', '', '', 'Public', '', '', 0),
(143, 0, 'IES Alpajes', 'Multi-level', 40.035, -3.59365, 'Moreras, 28,Aranjuez, Madrid', '', '', 'Public', '', '', 0),
(144, 0, 'IES Alcala Tenerife Alcala Guia de Isora', 'Secondary', 28.2016, -16.8258, 'Ikbla Masih,Guia de Isora, Tenerife', 'http://www.iesalcala.org/', '', 'Public', '687 74 44 24', '922 86 64 89', 38686),
(145, 0, 'IES " Arzobispo Valdes-Salas "', 'Multi-level', 0, 0, 'El Zaguan,Salas, Asturias', '', '', 'Public', '', '', 33860),
(146, 0, 'Gaudem Concertada', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(147, 0, 'Etxaurren Ikastola', 'Primary', 43.1, -3.04917, 'alava, Zuhatza', '', '', 'Public', '', '', 0),
(148, 0, 'Etxaurren Ikastola', 'Primary', 43.1, -3.04917, 'alava, Zuhatza', '', '', 'Public', '', '', 0),
(149, 0, 'Esplai Obert La Serra', 'Unknown', 41.2571, 1.7831, 'Sant Pere de Ribes, Barcelona', '', '', 'Public', '', '', 0),
(150, 0, 'Escuela Pau Vila', 'Primary', 41.3685, 2.10972, 'Calle Menorca, 1- 3,Barcelona, LHospitalet de Llobregat', 'http://www.xtec.cat/centres/a8018145/', '', 'Public', '934 49 04 88', '934 490 488', 8905),
(151, 0, 'Escuela Munagorri', 'Unknown', 43.1238, -1.97875, 'Kale Nagusia Kalea, 2,Guipuzcoa, Berastegui', '', '', 'Public', '', '', 20492),
(152, 0, 'Escuela Infantil Los Nidos', 'Preschool', 40.488, -3.6714, 'Av. de Manoteras, 8Madrid', '', '', 'Charter', '', '', 28050),
(153, 0, 'Escuela Infantil Els Molins', 'Preschool', 39.6451, 2.8966, ' Donats de sang, ,Baleares, Sencelles', ': http://www.escoletaelsmolins.es/', '', 'Public', '971 874 061', '', 7140),
(154, 0, 'Escuela Ideo', 'Multi-level', 40.5001, -3.66757, ' QUintanapalla 10Madrid', 'http://escuelaideo.edu.es/#top', '', 'Private', '', '', 28050),
(155, 0, 'Escuela de educacion Infantil La Jara', 'Preschool', 40.3842, -3.70154, 'Calle de las Hijas de Jesus, 30Madrid', '', '', 'Public', '', '', 28026),
(156, 0, 'Escuela Creanova de Sant Cugat', 'Unknown', 41.4805, 2.05615, 'Ctra Rubi, 90 100,Sant Cugat del Vall?s, Barcelona', '', '', 'Private', '', '', 8174),
(157, 0, 'Escuela 2 cooperativa', 'Multi-level', 0, 0, 'Carrer, 2,La Canyada, Valencia', 'http://www.escuela2.es/', '', 'Private', '961 32 90 17', '', 46182),
(158, 0, 'Escuela 2 cooperativa', 'Multi-level', 0, 0, 'Carrer, 2,La Canyada, Valencia', 'http://www.escuela2.es/', '', 'Private', '961 32 90 17', '', 46182),
(159, 0, 'Escoles Tandem', 'Unknown', 0, 0, 'Cataluna, Multiples localizaciones', 'http://www.escolestandem.com/', '', 'Private', '', '', 0),
(161, 0, 'Escola Epiqueia', 'Multi-level', 0, 0, 'Sant Joan de Mediona, Alt Pened?s, Giron', '', '', 'Public', '659 36 10 45', '', 0),
(162, 0, 'Escola Elisabeth', 'Multi-level', 41.0863, 1.12641, 'Carrer Miquel Marti i Pol, 1,Tarragona, Salou', '', '', 'Private', '977 38 38 51', '977 38 33 30', 43840),
(163, 0, 'Escola Congres Indians', 'Primary', 0, 0, 'Acores, 1-3,Barcelona', 'http://escolacongresindians.com/', '', 'Public', '933 400 975', '', 8027),
(164, 0, 'El Dragon', 'Unknown', 40.5766, -3.92936, 'Torrelodones, Madrid', '', '', 'Public', '', '', 0),
(165, 0, 'EEI Zofio', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Public', '', '', 0),
(166, 0, 'CRA Entre dos rios Segovia', 'Multi-level', 40.9429, -4.10881, 'Segovia', '', '', 'Public', '', '', 0),
(167, 0, 'CRA Alta Ribagorza', 'Primary', 42.1318, -0.407806, 'Huesca', '', '', 'Public', '', '', 0),
(168, 0, 'CPI Castroverde Publico Lugo', 'Multi-level', 43.0097, -7.55676, 'Lugo', '', '', 'Public', '', '', 0),
(169, 0, 'CPI Castroverde', 'Multi-level', 43.0311, -7.32319, 'Dos nenos,Castroverde, Lugo', '', '', 'Public', '', '', 27120),
(170, 0, 'CPI Castroverde', 'Multi-level', 43.0311, -7.32319, 'Dos nenos,Castroverde, Lugo', '', '', 'Public', '', '', 27120),
(171, 0, 'CP Principe Felipe', 'Primary', 40.4802, -3.701, 'Avda. Monforte de Lemos 24Madrid', '', '', 'Public', '913 14 68 19', '913232548', 28029),
(172, 0, 'C.P Buztintxuri I.P.', 'Multi-level', 42.8297, -1.66672, ' Victor Eusa 1,Pamplona', 'http://cpbuztintxuri.educacion.navarra.es/', '', 'Public', '', '', 31012),
(173, 0, 'CP Alvara Alvarez', 'Primary', 42.3884, -1.79649, 'Navarra, Falces', '', '', 'Public', '', '', 0),
(174, 0, 'Colegios SEK', 'Unknown', 0, 0, 'Unknown', '', '', 'Private', '', '', 0),
(175, 0, 'Escuela Infantil Zaleo', 'Preschool', 0, 0, 'Fuente de Piedra, 4Madrid, Barrio de Palomeras Sureste', 'http://www.educa.madrid.org/web/eei.zaleo.madrid/index-nueva.htm', '', 'Public', '91 772 19 76 / 608 023 408', '', 28018),
(176, 0, 'Colegio Vizcaya Sociedad Cooperativa de ensenanza', 'Unknown', 43.2817, -2.8981, 'Barrio Galbarriatu, 6,Zamudio, Vizcaya', '', '', 'Private', '', '', 0),
(177, 0, 'Colegio Verdemar', 'Multi-level', 43.4641, -3.86638, 'La Llanilla 102,Santander', 'http://www.colegioverdemar.com/', '', 'Charter', '942 338 169', '', 39012),
(178, 0, 'Colegio Santa Rafaela Maria', 'Middle-School', 40.3789, -3.6735, 'Calle de Santa Rafaela Maria del Sagrado Corazon, 112Madrid', '', '', 'Private', '917 85 88 01', '', 28053),
(179, 0, 'Colegio Santa Maria La Blanca Montecarmelo', 'Unknown', 40.5105, -3.69642, 'Monasterio de Oseira, 17Madrid', '', '', 'Charter', '917 508 692', '917 508 636', 28049),
(180, 0, 'Colegio Santa Ana', 'Primary', 39.0849, -0.475994, ' Major, 12,La Pobla Llarga, Valencia', 'https://csantaana.wordpress.com/', '', 'Charter', '96 2970791', '', 46670),
(181, 0, 'Colegio San Ignacio Jesuitas', 'Unknown', 43.3411, -5.8709, 'Avda Richard Grandio,Oviedo, Asturias', '', '', 'Public', '', '', 33193),
(182, 0, 'Colegio San Gabriel Concertado Burgos', 'Multi-level', 42.344, -3.69691, 'Burgos', '', '', 'Charter', '', '', 0),
(183, 0, 'Colegio San Diego y San Vicente', 'Primary', 40.4322, -3.69446, 'Paseo Eduardo Dato, 4Madrid', 'http://sandiegoysanvicente.com/', '', 'Charter', '91.308.20.30', '', 28010),
(184, 0, 'Colegio Sagrado Corazon de Alsasua', 'Unknown', 42.6954, -1.67607, 'Navarra', '', '', 'Charter', '', '', 0),
(185, 0, 'Colegio Sagrado Corazon', 'Multi-level', 39.9835, -6.53067, ' Navalmoral, 2,Coria, Caceres', 'http://www.sagradocorazoncoria.com/', '', 'Charter', '927 50 02 87', '927 50 00 31', 10800),
(186, 0, 'Colegio Sagrado Corazon de Alsasua', 'Unknown', 42.6954, -1.67607, 'Navarra', '', '', 'Charter', '', '', 0),
(187, 0, 'Colegio Sagrada Familia', 'Multi-level', 40.4066, -3.63525, 'Oberon, 6Madrid', '', '', 'Charter', '', '', 28030),
(188, 0, 'Colegio SAFA Madrid', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(189, 0, 'Colegio Publico Hurchillo', 'Primary', 38.082, -0.937438, 'Carretera Bigastro, 4,Hurchillo, Orihuela, Alicante', '', '', 'Public', '966 90 42 80', '', 3313),
(190, 0, 'Colegio Parroquial Santiago Apostol Valencia', 'Multi-level', 0, 0, 'Valencia', '', '', 'Charter', '', '', 0),
(191, 0, 'Colegio Obradoiro', 'Multi-level', 43.3623, -8.41154, 'A Coruna', '', '', 'Charter', '', '', 0),
(192, 0, 'Colegio Nuestra Senora de Fatima', 'Multi-level', 40.3849, -3.70111, 'manuel munoz, 30 Madrid', 'http://www.colegiofatima.es/', '', 'Charter', '91 475 78 80', '', 0),
(193, 0, 'Colegio Montpellier', 'Multi-level', 40.438, -3.65419, 'Calle de la Virgen del Val, 7Madrid', '', '', 'Charter', '', '', 28027),
(194, 0, 'Colegio Lourdes FUHEM', 'Multi-level', 40.4029, -3.75966, ' San Roberto 8 Madrid', ': http://colegiolourdes.fuhem.es/', '', 'Charter', '91 518 03 58', '91 518 48 20', 28011),
(195, 0, 'Colegio Lope de Vega', 'Unknown', 38.5426, -0.103319, 'Avda. Doctor Severo Ochoa 9,Benidorm, Alicante', '', '', 'Private', '', '', 3503),
(196, 0, 'Colegio Liceo Marista', 'Multi-level', 0, 0, 'Plaza San Marcelino Champagnat,1,Burgos', 'http://www.maristasburg os.org/', '', 'Private', '947 238 161', '947 211 787', 9006),
(197, 0, 'Colegio Laudo', 'Unknown', 0, 0, 'Vizcaya', '', '', 'Charter', '', '', 0),
(198, 0, 'Colegio interno Mayol', 'Multi-level', 0, 0, 'Airen n 7 (Urbanizacion San Bernardo),Toledo', '', '', 'Other', '925 22 07 33', '925222084', 45004),
(199, 0, 'Colegio Imperial San Vicente Ferrer', 'Multi-level', 39.5631, -0.503815, 'Calle san vicente ferrer, 4,San Antonio de Benageber, Valencia', '', '', 'Charter', '674 164 057 / 96 135 20 60', '96 135 05 28 / 96 13', 46184),
(200, 0, 'Colegio Huerta Santa Ana Sevilla', 'Multi-level', 37.3891, -5.98446, 'Sevilla', '', '', 'Charter', '', '', 0),
(201, 0, 'Colegio Ferroviario', 'Unknown', 37.8882, -4.77938, 'Cordoba', '', '', 'Private - Religious Affiliation', '', '', 0),
(202, 0, 'Colegio Decroly', 'Multi-level', 28.5073, -16.3019, 'Camino Las Mercedes,San Cristobal de La Laguna, Santa Cruz de tenerife', 'http://www.colegiodecroly.es/', '', 'Charter', '', '', 38293),
(203, 0, 'Colegio Cardenal Spinola - Linares', 'Primary', 0, 0, ' Madre San Pablo (antigua  Seguirilla), 26,Linares, Jaen', 'http://www.sagradocorazonlinares.com/', '', 'Charter', '953 69 41 01', '953 60 10 71', 23700),
(204, 0, 'Colegio Cardenal Spinola', 'Unknown', 37.2589, -6.95108, 'Paseo Santa Fe, 5,Huelva', '', '', 'Private - Religious Affiliation', '', '', 21003),
(205, 0, 'Colegio Brot', 'Multi-level', 40.3782, -3.76483, 'General Romero Basart, 88Madrid', '', '', 'Charter', '', '', 28044),
(206, 0, 'Colegio Aula Balear', 'Multi-level', 39.5985, 2.63256, 'Can Valero, 19,Palma de Mallorca, Baleares', '', '', 'Charter', '971 20 23 01', '971 20 69 15', 7011),
(207, 0, 'Colegio Arturo Soria', 'Multi-level', 40.4509, -3.65297, 'Duque de Tamames, 4Madrid', 'http://www.colegioarturosoria.org/', '', 'Private', '914 15 72 95', '', 28043),
(208, 0, 'Colegio Artica', 'Multi-level', 40.3606, -3.75613, 'Calle Morales, 25Madrid', 'http://www.jrotero.org/index.php/artica#', '', 'Charter', '915 112 615', '914 006 071', 28054),
(209, 0, 'Colegio Antonio Gala', 'Multi-level', 0, 0, 'Barriada Vistazul,Sevilla, Dos Hermanas', 'http://www.galacolegio.com/es/', '', 'Charter', '955 675 716', '955 675 930', 41702),
(210, 0, 'Colegio Antonio de Nebrija', 'Multi-level', 0, 0, 'Paraje Casablanca,Cabezo de Torres, Murcia', 'http://www.antoniodenebrija.com/', '', 'Charter', '968 308 183', '968 308 389', 30110),
(211, 0, 'Colegio Andolina Sociedad Cooperativa Asturiana', 'Primary', 0, 0, 'Camino del Barreo 203 Cefontes,Cabuenes, Gijon, Asturias', 'http://www.colegioandolina.org/', '', 'Private', '683 178 194', '', 33394),
(212, 0, 'Colegio Altair Internacional', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Private - Religious Affiliation', '', '', 0),
(213, 0, 'CIUDAD DE LOS MUCHACHOS', 'Multi-level', 40.4024, -3.66205, 'Santa Marta, 15Madrid', '', '', 'Charter', '', '', 28038),
(214, 0, 'CEIP Vital Alsar', 'Multi-level', 43.4836, -3.79778, 'Cueto, Santander', '', '', 'Public', '', '', 0),
(215, 0, 'CEIP Virgen del Oro', 'Primary', 38.2065, -1.40082, 'AV. CONSTITUCION , 46,Abaran, Murcia', '', '', 'Public', '', '', 30550),
(216, 0, 'CEIP Virgen del Oro', 'Primary', 38.2065, -1.40082, 'AV. CONSTITUCION , 46,Abaran, Murcia', '', '', 'Public', '', '', 30550),
(217, 0, 'CEIP Tremanes', 'Primary', 43.5322, -5.69723, 'Bazan 47,Gijon, Asturias', '', '', 'Public', '985 32 24 68', '', 33211),
(218, 0, 'CEIP Ses Marjades', 'Primary', 39.7734, 2.71889, 'Carrer de Ses Marjades,Soller, Baleares', '', '', 'Public', '971 63 38 85', '', 7100),
(219, 0, 'CEIP SES AA La Paz Albacete', 'Primary', 38.9891, -1.84269, 'Francisco Belmonte,Albacete', '', '', 'Public', '', '', 2008),
(220, 0, 'CEIP Santa Ana', 'Primary', 40.7447, -3.60279, 'Pedrezuela', 'http://www.ceipsantaana.es/', '', 'Public', '', '', 0),
(221, 0, 'CEIP Sant Miquel', 'Primary', 39.5877, 3.32083, 'Calle Estacio,8,Son Carrio, Baleares', 'http://ceipsantmiquelsoncarrio.blogspot.com.es/', '', 'Public', '971 56 91 55', '', 7),
(222, 0, 'CEIP San Walabonso Huelva Niebla', 'Primary', 0, 0, 'Ctra. Sevilla-Huelva,Niebla, Huelva', '', '', 'Public', '', '', 21840),
(223, 0, 'CEIP San Jose Obrero Sevilla', 'Primary', 37.3891, -5.98446, 'Sevilla', '', '', 'Public', '', '', 0),
(224, 0, 'CEIP Rufino Blanco', 'Multi-level', 40.4383, -3.70223, 'General alvarez de Castro n 46Madrid', '', '', 'Private - Religious Affiliation', '', '', 28010),
(225, 0, 'CEIP Rosa dels Vents', 'Primary', 39.7371, 3.27752, 'Calle Es Vivers, 16,Baleares, Colonia de Sant Pere', '', '', 'Public', '971 58 92 42', '', 7579),
(226, 0, 'CEIP Ramon y Cajal Zaragoza Alpartir', 'Primary', 41.4216, -1.37935, 'Camino Almonacid, ,Alpartir', 'http://cpalpartir.educa.aragon.es/', '', 'Public', '+34976 81 33 00', '', 50109),
(227, 0, 'CEIP Princesa de Asturias', 'Primary', 38.2855, -0.560056, 'Alicante, Elche', '', '', 'Public', '', '', 0),
(228, 0, 'CEIP Palomeras Bajas', 'Primary', 40.3792, -3.66085, 'Calle de Felipe de Diego, 6Madrid', '', '', 'Public', '', '', 28018),
(229, 0, 'CEIP Nuestra Senora de Gracia "El Gracia"', 'Primary', 36.7269, -4.41333, 'Ferrandiz, 2,Malaga', 'http://www.ceipelgracia.com/', '', 'Public', '951298895/94', '', 29012),
(230, 0, 'CEIP Mario Bendetti', 'Primary', 40.3708, -3.54941, 'Camino de la Partija,Rivas - Vaciamadrid, Madrid', '', '', 'Public', '', '', 28523),
(231, 0, 'CEIP Manuel Nunez de Arenas', 'Primary', 40.3814, -3.62379, 'Vallecas, Madrid', '', '', 'Public', '', '', 0),
(232, 0, 'CEIP Manuel Bartolome Cossio', 'Primary', 40.3815, -3.77137, 'Jose de Cadalso, 19Madrid', 'http://bartolome.wordpress.com', '', 'Public', '91 706 409', '', 28044),
(233, 0, 'CEIP Luis Vives - L''Escolaica Cullera Valencia', 'Primary', 39.1625, -0.249012, 'Pla?a Andres Piles,Cullera, Valencia', 'http://www.escolaica.org/', '', 'Public', '961 71 90 80', '', 46400),
(234, 0, 'CEIP LEKEITIO LHI', 'Multi-level', 43.3672, -2.50742, 'Lekeitio, Vizcaya', '', '', 'Public', '', '', 0),
(235, 0, 'CEIP La Pradera Segovia Valsain', 'Primary', 40.8789, -4.02769, 'Travesia Robledo,Valsain, Segovia', '', '', 'Public', '', '', 40109),
(236, 0, 'CEIP La Biznaga Malaga', 'Primary', 36.7324, -4.37358, 'Suceso Luengo, 15,Malaga', 'http://colegiolabiznaga.es/', '', 'Public', '649 80 59 96', '', 29018),
(237, 0, 'CEIP Gomez Moreno', 'Primary', 37.1816, -3.59364, 'Callejon de las Campanas, 7,Granada', 'http://colegiogomezmorenogranada.blogspot.c om.es', '', 'Public', '958 89 31 22', '', 18010),
(238, 0, 'CEIP ES Talaiot', 'Primary', 39.5651, 3.36872, 'Anfos,Illot, Baleares', 'http://ceiptalaiot.org/', '', 'Public', '971 81 10 82', '', 7687),
(239, 0, 'CEIP El Quijote', 'Primary', 40.3742, -3.62421, 'Fuentiduena, 4Madrid', 'http://www.educa.madrid.org/web/cp.elquijot e.madrid/', '', 'Public', '', '', 28031),
(240, 0, 'CEIP Atalaya de Atarfe', 'Primary', 37.2205, -3.68977, 'Avenida Libertad,Atarfe, Granada', 'http://www.juntadeandalucia.es/averroes/centros-ti18601989/helvia/sitio/', '', 'Public', '958 89 39 18', '958 89 39 19', 18230),
(241, 0, 'CEIP Andalucia', 'Primary', 37.3891, -5.98446, 'Sevilla', '', '', 'Public', '', '', 0),
(242, 0, 'CEIP Aldebaran', 'Secondary', 0, 0, ' Salvia 1,Tres Cantos, Madrid', 'http://novedades-aldebaran.blogspot.com.es/', '', 'Public', '91 804 33 98', '', 28760),
(243, 0, 'CEIP Adriano del Valle', 'Primary', 0, 0, 'Azorin,Sevilla', '', '', 'Public', '955 62 35 68', '', 41006),
(244, 0, 'CEIP 3,0 Ciudad del Mar Torrevieja Valencia', 'Primary', 0, 0, 'Avda. Tirso de Molina,Torrevieja, Valencia', ':http://www.colegiociudaddelmar.es/i ndex.php', '', 'Public', '965290170 - 965290172', '965290171', 3183),
(245, 0, 'Cardenal Spinola', 'Multi-level', 0, 0, 'Madrid', 'http://www.colegiospinola.org/', '', 'Charter', '', '', 0),
(246, 0, 'C.R.A. Entre dos rios', 'Multi-level', 0, 0, 'Segovia', '', '', 'Public', '', '', 0),
(247, 0, 'IES Can Jofresa', 'Secondary', 0, 0, 'Av. Can Jofresa, 12,Terrassa, Barcelona', '', '', 'Public', '', '', 8223),
(248, 0, 'San Pere INS Mongros', 'Unknown', 0, 0, 'Barcelona', '', '', 'Public', '', '', 0),
(249, 0, 'San Pere Esplai Obert La Serra', 'Unknown', 0, 0, 'Barcelona, San Pere', '', '', 'Charter', '', '', 0),
(250, 0, 'Institut Escola La Tordera', 'Unknown', 0, 0, 'Barcelona', '', '', 'Public', '', '', 0),
(251, 0, 'Askarza Claret', 'Unknown', 0, 0, 'Vizcaya', '', '', 'Other', '', '', 0),
(252, 0, 'Colegio Altair Internacional', 'Multi-level', 0, 0, 'Madrid', '', '', 'Private - Religious Affiliation', '', '', 0),
(253, 0, 'San Cristobal', 'Primary', 0, 0, 'Madrid', '', '', 'Public', '', '', 0),
(254, 0, 'International College Spain', 'Unknown', 40.4168, -3.70379, 'Madrid', '', '', 'Private - Religious Affiliation', '', '', 0),
(255, 0, 'Gaudem Conc', 'Multi-level', 40.4168, -3.70379, 'Madrid', '', '', 'Charter', '', '', 0),
(256, 0, 'CPR Santa Apolonia', 'Unknown', 42.8598, -8.56766, 'Poza Real da abaixo, 5,Santiago de Compostela', '', '', 'Public', '', '', 15706),
(257, 0, 'Colegio Akua', 'Multi-level', 0, 0, 'Masia Can Ribot, Av Comte Ramon Berenguer 138,Santa Coloma Cervello', 'www.fundacionakua.org', '', 'Private', '', '', 8690),
(258, 0, 'FUHEM Montserrat', 'Multi-level', 40.417, -3.6631, 'Calle Juan Esplandiu 2Madrid', 'http://colegiomontserrat.fuhem.es', '', 'Charter', '915 73 75 07', '', 28007),
(259, 0, 'FUHEM Hipatia Rivas', 'Multi-level', 40.3769, -3.53614, 'Av. Ocho de Marzo 1,Rivas-Vaciamadrid', 'http://www.colegiohipatia.fuhem.es', '', 'Charter', '917139700', '917139701', 28523);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `places`
--
ALTER TABLE `places`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
