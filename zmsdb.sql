-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2021 a las 18:17:04
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zmsdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-12-30 21:38:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblanimal`
--

CREATE TABLE `tblanimal` (
  `ID` int(10) NOT NULL,
  `AnimalName` varchar(200) DEFAULT NULL,
  `ScientificName` varchar(200) NOT NULL,
  `CageNumber` int(10) DEFAULT NULL,
  `FeedNumber` varchar(200) DEFAULT NULL,
  `Breed` varchar(200) DEFAULT NULL,
  `AnimalImage` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Feeding` varchar(200) NOT NULL,
  `Reproduction` varchar(200) NOT NULL,
  `SocialLife` varchar(200) NOT NULL,
  `StateOfConservation` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblanimal`
--

INSERT INTO `tblanimal` (`ID`, `AnimalName`, `ScientificName`, `CageNumber`, `FeedNumber`, `Breed`, `AnimalImage`, `Description`, `Feeding`, `Reproduction`, `SocialLife`, `StateOfConservation`, `CreationDate`) VALUES
(1, 'Giraffe', '', 12300, 'FN-123', 'Masai giraffe', '694cb29edd30cd1d86dda55dd904ee4b1596609931.jpg', 'The Masai giraffe (Giraffa camelopardalis tippelskirchii), also spelled Maasai giraffe, also called Kilimanjaro giraffe, is the largest subspecies of giraffe. It is native to East Africa. The Masai giraffe can be found in central and southern Kenya and in Tanzania.', '', '', '', '', '2020-08-05 06:51:45'),
(2, 'Giraffe', '', 12301, 'F-5688', 'Reticulated giraffe', '7fdc1a630c238af0815181f9faa190f51596609868.jpg', 'The reticulated giraffe (Giraffa camelopardalis reticulata), also known as the Somali giraffe, is a subspecies of giraffe native to the Horn of Africa. It lives in Somalia, southern Ethiopia, and northern Kenya. There are approximately 8,500 individuals living in the wild.', '', '', '', '', '2020-08-05 06:51:15'),
(3, 'Tiger', '', 12302, 'FN-809', 'Bengal Tiger', 'e692bd84570d9f467b75af761bf15c7c1596609789.jpg', 'The Bengal tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Indian subcontinent. It is threatened by poaching, loss, and fragmentation of habitat, and was estimated at comprising fewer than 2,500 individuals by 2011.', '', '', '', '', '2020-08-05 06:50:44'),
(4, 'Tiger', '', 12303, 'FN-798', ' Indochinese Tiger', '031a51aa205bd3138f7afeb0d86999e51596611280.png', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', '', '', '', '', '2020-08-05 07:08:00'),
(5, 'Tiger', '', 12304, 'FN-787', 'Siberian Tiger', '1e6ae4ada992769567b71815f124fac51596609708.jpg', 'The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Russian Far East, Northeast China, and possibly North Korea. It once ranged throughout the Korean Peninsula, north China, Russian Far East, and eastern Mongolia.', '', '', '', '', '2020-08-05 06:49:35'),
(6, 'Tiger', '', 12305, 'FN-345', 'Indochinese Tiger', '37b3f2f8b979f990fbe8bbf02fb87ddb1596609488.jpg', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', '', '', '', '', '2020-08-05 06:49:05'),
(7, 'Bear', '', 12307, 'FN-0123', 'Sloth Bear', 'efc1a80c391be252d7d777a437f868701596611141.jpg', 'The sloth bear (Melursus ursinus) is a myrmecophagous bear species native to the Indian subcontinent. It feeds on fruits, ants and termites. It is listed as Vulnerable on the IUCN Red List, mainly because of habitat loss and degradation.', '', '', '', '', '2020-08-05 07:05:41'),
(8, 'Bear', '', 12308, 'FN-090', 'Sun Bear', '6c09a06117fd4daa8fd74f6d1560d6a01596609406.jpg', 'The sun bear (Helarctos malayanus) is a species in the family Ursidae occurring in the tropical forests of Southeast Asia. It is the smallest bear, standing nearly 70 centimetres (28 inches) at the shoulder and weighing 25–65 kilograms (55–143 pounds). It is stockily built, with large paws, strongly curved claws, small rounded ears and a short snout. The fur is generally jet-black, but can vary from grey to red. Sun bears get their name from the characteristic orange to cream coloured chest patch. Its unique morphology—inward-turned front feet, flattened chest, powerful forelimbs with large claws—suggests adaptations for climbing.', '', '', '', '', '2020-08-05 06:36:46'),
(9, 'GUACAMAYO jacinta', 'Anodorhynchus hyacinthinus', 123, 'FN-212', 'Aves', '4e265e6ccfc6878baa7b72a7f4ad664a1625538110.jpg', '    El más grande de los guacamayos. El color general es azul cobalto más violeta en las alas. La parte inferior de esta y la cola grisáceas. Zona alrededor del ojo y base de la mandíbula inferior del pico de color amarillo.', '    Semillas, frutas, frutos secos. Pero es sobre todo los cocos y dátiles de un reducido número de especies de palmeras su alimento favorito, utilizando diferentes especies en distintas áreas. Tambié', '    Fuera de la época de crianza, viven en grupos que pueden desplazarse estacionalmente a grandes distancias en busca de árboles que puedan suministrarles suficiente alimento.', '    El período de reproducción está comprendido entre los meses de Julio-Diciembre. El nido está construido generalmente en el hueco de un tronco de palmera. La puesta normalmente es de 2 huevos, a ve', '    En grave peligro de extinción a causa de su comercio. Su población actual se estima en unas 3.000 aves.  Fue en el periodo comprendido entre 1.970-1.990, cuando sus poblaciones sufrieron un mayor ', '2021-07-06 02:21:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', 'We understand that running your business is hard work. This is a game-changer when it comes to family activity center software. Clubspeed develops and adapts our solution specifically for the needs of your business; simply sit back, relax, and let us do all the heavy lifting. Then the fun will truly begin!<div><br></div>', NULL, NULL, '2020-08-12 02:59:31'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India.', 'info@gmail.com', 1111111111, '2020-08-12 02:59:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticforeigner`
--

CREATE TABLE `tblticforeigner` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(200) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblticforeigner`
--

INSERT INTO `tblticforeigner` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '103618900', 2, 1, '1000', '800', '2019-12-30 12:05:44'),
(2, '886489653', 8, 0, '1000', '800', '2019-12-30 12:06:05'),
(3, '671028076', 5, 2, '1000', '800', '2019-12-30 12:06:26'),
(4, '776418013', 5, 2, '1000', '800', '2019-12-30 12:09:33'),
(5, '542608571', 7, 7, '1000', '800', '2019-12-31 06:20:55'),
(6, '535130983', 4, 2, '1000', '800', '2019-12-31 06:21:06'),
(7, '554656170', 2, 1, '1100', '800', '2019-12-31 16:05:56'),
(8, '158113815', 5, 4, '1100', '800', '2019-12-31 16:11:38'),
(9, '298579816', 10, 4, '1100', '800', '2020-08-04 05:24:38'),
(10, '559449246', 10, 2, '1100', '800', '2020-08-05 11:32:40'),
(11, '330569887', 4, 2, '1100', '800', '2020-08-12 02:58:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticindian`
--

CREATE TABLE `tblticindian` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(100) NOT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblticindian`
--

INSERT INTO `tblticindian` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '340973208', 5, 3, '200', '100', '2019-12-30 08:04:11'),
(2, '340973207', 8, 6, '200', '100', '2019-12-31 11:08:33'),
(3, '340973206', 4, 4, '200', '100', '2019-12-31 11:15:05'),
(4, '222133961', 6, 2, '200', '100', '2019-12-31 11:21:21'),
(5, '325226844', 2, 1, '', '', '2019-12-31 16:02:58'),
(6, '646984509', 4, 2, '250', '100', '2019-12-31 16:05:29'),
(7, '940539604', 4, 2, '200', '80', '2019-12-31 16:11:13'),
(8, '528090550', 5, 3, '300', '80', '2020-08-04 05:15:17'),
(9, '486218236', 8, 2, '300', '80', '2020-08-05 11:32:27'),
(10, '220366795', 2, 1, '350', '80', '2020-08-12 02:57:57'),
(11, '766485352', 2, 3, '350', '80', '2021-07-03 20:22:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltickettype`
--

CREATE TABLE `tbltickettype` (
  `ID` int(10) NOT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltickettype`
--

INSERT INTO `tbltickettype` (`ID`, `TicketType`, `Price`, `CreationDate`) VALUES
(1, 'Normal Adult', '350', '2019-12-30 06:31:56'),
(2, 'Normal Child', '80', '2019-12-30 06:32:27'),
(3, 'Foreigner Adult', '1100', '2019-12-30 06:33:16'),
(4, 'Foreigner Child', '800', '2019-12-30 06:33:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblanimal`
--
ALTER TABLE `tblanimal`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`),
  ADD KEY `TicketID_2` (`TicketID`);

--
-- Indices de la tabla `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketID` (`TicketID`);

--
-- Indices de la tabla `tbltickettype`
--
ALTER TABLE `tbltickettype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketType` (`TicketType`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblanimal`
--
ALTER TABLE `tblanimal`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tblticindian`
--
ALTER TABLE `tblticindian`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbltickettype`
--
ALTER TABLE `tbltickettype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
