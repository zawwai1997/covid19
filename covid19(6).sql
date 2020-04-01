-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2020 at 11:37 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admins`
--

INSERT INTO `Admins` (`id`, `email`, `password`) VALUES
(1, 'zawwaisoe@gmail.com', '41ac92cb1932c22ca3f34a5a145e3ff2ec52295c0e815baa3defbb40f44c68eaed6c25528580943d7ad1823bac50e9914ec0a2b0b6252bbccc6da6819bd0138f');

-- --------------------------------------------------------

--
-- Table structure for table `District`
--

CREATE TABLE `District` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `District`
--

INSERT INTO `District` (`id`, `name`, `state_id`) VALUES
(1, 'ky-gangaw', 7),
(2, 'ky-magway', 7),
(3, 'ky-minbu', 7),
(4, 'ky-pakokku', 7),
(5, 'ky-thayet', 7),
(6, 'ky-kyaukse', 8),
(7, 'ky-mandalay', 8),
(8, 'ky-meiktila', 8),
(9, 'ky-myingyan', 8),
(10, 'ky-nyaung-u', 8),
(11, 'ky-pyinoolwin', 8),
(12, 'ky-yamethin', 8),
(13, 'ky-hinthada', 1),
(14, 'ky-labutta', 1),
(15, 'ky-maubin', 1),
(16, 'ky-myaungmya', 1),
(17, 'ky-pathein', 1),
(18, 'ky-pyapon', 1),
(21, 'ky-bago', 2),
(22, 'ky-taungoo', 2),
(23, 'ky-pyay', 18),
(24, 'ky-thayarwady', 18),
(26, 'ky-hakha', 3),
(28, 'ky-mindat', 3),
(29, 'ky-bhamo', 4),
(30, 'ky-mohnyin', 4),
(31, 'ky-myitkyina', 4),
(32, 'ky-puta-o', 4),
(33, 'ky-bawlakhe', 5),
(34, 'ky-loikaw', 5),
(35, 'ky-hpa-an', 6),
(36, 'ky-hpapun', 6),
(37, 'ky-kawkareik', 6),
(38, 'ky-myawaddy', 6),
(39, 'ky-mawlamyine', 9),
(40, 'ky-thaton', 9),
(41, 'ky-kyaukpyu', 10),
(43, 'ky-sittwe', 10),
(44, 'ky-thandwe', 10),
(45, 'ky-mrauk-u', 10),
(46, 'ky-kengtung', 11),
(49, 'ky-tachileik', 11),
(50, 'ky-kunlong', 17),
(51, 'ky-kyaukme', 17),
(52, 'ky-lashio', 17),
(61, 'ky-langkho', 16),
(62, 'ky-loilen', 16),
(63, 'ky-taunggyi', 16),
(67, 'ky-kanbalu', 12),
(68, 'ky-kale', 12),
(69, 'ky-katha', 12),
(70, 'ky-mawlaik', 12),
(71, 'ky-monywa', 12),
(72, 'ky-sagaing', 12),
(73, 'ky-shwebo', 12),
(79, 'ky-myeik', 13),
(88, 'ky-kawthoung', 13),
(89, 'ky-dawei', 13),
(90, 'ky-syangon', 14),
(91, 'ky-wyangon', 14),
(92, 'ky-eyangon', 14),
(93, 'ky-nyangon', 14),
(96, 'ky-naypyitaw', 8),
(97, 'ky-maungdaw', 10),
(98, 'ky-falam', 3),
(99, 'ky-monghpyak', 11),
(100, 'ky-monghsat', 11),
(101, 'ky-matman', 17),
(102, 'ky-hopang', 17),
(103, 'ky-muse', 17),
(104, 'ky-yinmabin', 12),
(105, 'ky-hkamti', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Hospitals`
--

CREATE TABLE `Hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `township_id` int(11) NOT NULL,
  `lon` float NOT NULL,
  `lat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Hospitals`
--

INSERT INTO `Hospitals` (`id`, `name`, `township_id`, `lon`, `lat`) VALUES
(1, 'Hospital 1', 1, 11, 22);

-- --------------------------------------------------------

--
-- Table structure for table `Patients`
--

CREATE TABLE `Patients` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `suffer_type_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Patient_Visited`
--

CREATE TABLE `Patient_Visited` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `visited_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `States`
--

CREATE TABLE `States` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `States`
--

INSERT INTO `States` (`id`, `name`) VALUES
(1, 'div-ayeyarwaddy'),
(3, 'div-chin'),
(2, 'div-ebago'),
(11, 'div-eshan'),
(4, 'div-kachin'),
(5, 'div-kayar'),
(6, 'div-kayin'),
(7, 'div-magway'),
(8, 'div-mandalay'),
(9, 'div-mon'),
(17, 'div-nshan'),
(10, 'div-rakhine'),
(12, 'div-sagaing'),
(16, 'div-sshan'),
(13, 'div-tanintharyi'),
(18, 'div-wbago'),
(14, 'div-yangon');

-- --------------------------------------------------------

--
-- Table structure for table `Suffer_Type`
--

CREATE TABLE `Suffer_Type` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Suffer_Type`
--

INSERT INTO `Suffer_Type` (`id`, `name`) VALUES
(1, 'PUI'),
(2, 'Suspected'),
(5, 'Lab Negative'),
(6, 'Lab Pending'),
(7, 'Die'),
(8, 'Recovered');

-- --------------------------------------------------------

--
-- Table structure for table `Townships`
--

CREATE TABLE `Townships` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Townships`
--

INSERT INTO `Townships` (`id`, `name`, `district_id`) VALUES
(1, 'gangaw', 1),
(2, 'saw', 1),
(3, 'tilin', 1),
(5, 'chauk', 2),
(6, 'magway', 2),
(7, 'myothit', 2),
(8, 'natmauk', 2),
(9, 'taungdwingyi', 2),
(10, 'yenangyaung', 2),
(11, 'minbu', 3),
(12, 'ngape', 3),
(13, 'pwintbyu', 3),
(14, 'salingyi', 104),
(15, 'sidoktaya', 3),
(16, 'myaing', 4),
(17, 'pakokku', 4),
(18, 'pauk', 4),
(19, 'seikphyu', 4),
(20, 'yesagyo', 4),
(21, 'aunglan', 5),
(22, 'kamma', 5),
(23, 'mindon', 5),
(24, 'minhla', 5),
(25, 'sinbaungwe', 5),
(26, 'thayet', 5),
(27, 'kyaukse', 6),
(28, 'myittha', 6),
(29, 'sintgaing', 6),
(30, 'tada-u', 6),
(31, 'amarapura', 7),
(32, 'm-aungmyaythazan', 7),
(33, 'm-chanayethazan', 7),
(34, 'm-chanmyathazi', 7),
(35, 'm-mahaaungmyay', 7),
(36, 'patheingyi', 7),
(37, 'm-pyigyitagon', 7),
(38, 'mahlaing', 8),
(39, 'meiktila', 8),
(40, 'thazi', 8),
(41, 'wundwin', 8),
(42, 'myingyan', 9),
(43, 'natogyi', 9),
(46, 'nyaung-u', 10),
(47, 'kyaukpadaung', 10),
(49, 'madaya', 11),
(50, 'mogoke', 11),
(51, 'pyinoolwin', 11),
(52, 'singu', 11),
(53, 'thabeikkyin', 11),
(55, 'pyawbwe', 12),
(56, 'yamethin', 12),
(57, 'hinthada', 13),
(58, 'lemyethna', 13),
(59, 'zalun', 13),
(60, 'ingapu', 13),
(61, 'kyangin', 13),
(62, 'myanaung', 13),
(63, 'labutta', 14),
(64, 'mawlamyinegyun', 14),
(68, 'nyaungdon', 15),
(69, 'pantanaw', 15),
(70, 'einme', 16),
(72, 'wakema', 16),
(74, 'ngapudaw', 17),
(75, 'pathein', 17),
(76, 'thabaung', 17),
(77, 'kyaunggon', 17),
(78, 'kyonpyaw', 17),
(85, 'bogale', 18),
(86, 'dedaye', 18),
(87, 'kyaiklat', 18),
(88, 'pyapon', 18),
(90, 'bago', 21),
(91, 'daik-u', 21),
(92, 'kawa', 21),
(93, 'nyaunglebin', 21),
(94, 'shwegyin', 21),
(95, 'thanatpin', 21),
(96, 'waw', 21),
(105, 'kyaukkyi', 22),
(106, 'oktwin', 22),
(108, 'tantabin', 22),
(109, 'taungoo', 22),
(110, 'yedashe', 22),
(121, 'padaung', 23),
(122, 'paukkaung', 23),
(123, 'paungde', 23),
(124, 'pyay', 23),
(125, 'shwedaung', 23),
(126, 'thegon', 23),
(132, 'gyobingauk', 24),
(133, 'letpadan', 24),
(134, 'minhla-2', 24),
(135, 'monyo', 24),
(136, 'okpho', 24),
(137, 'thayarwady', 24),
(138, 'nattalin', 24),
(139, 'zigon', 24),
(144, 'falam', 98),
(145, 'tiddim', 98),
(149, 'hakha', 26),
(150, 'htantlang', 26),
(151, 'kanpetlet', 28),
(153, 'mindat', 28),
(154, 'paletwa', 28),
(157, 'bhamo', 29),
(158, 'mansi', 29),
(159, 'momauk', 29),
(160, 'shwegu', 29),
(164, 'hpakan', 30),
(165, 'mogaung', 30),
(166, 'mohnyin', 30),
(169, 'chipwi', 31),
(171, 'injangyang', 31),
(172, 'myitkyina', 31),
(173, 'tanai', 31),
(174, 'waingmaw', 31),
(180, 'kawnglanghpu', 32),
(181, 'machanbaw', 32),
(182, 'nogmung', 32),
(183, 'puta-o', 32),
(184, 'sumprabum', 32),
(186, 'bawlakhe', 33),
(188, 'mese', 33),
(190, 'demoso', 34),
(191, 'hpruso', 34),
(192, 'loikaw', 34),
(193, 'shadaw', 34),
(195, 'hpa-an', 35),
(196, 'thandaung', 35),
(203, 'kawkareik', 37),
(207, 'myawaddy', 38),
(210, 'chaungzon', 39),
(211, 'kyaikmaraw', 39),
(212, 'mawlamyine', 39),
(213, 'mudon', 39),
(214, 'thanbyuzayat', 39),
(215, 'ye', 39),
(219, 'bilin', 40),
(220, 'kyaikto', 40),
(221, 'paung', 40),
(222, 'thaton', 40),
(226, 'ann', 41),
(227, 'kyaukpyu', 41),
(229, 'ramree', 41),
(230, 'buthidaung', 97),
(231, 'maungdaw', 97),
(233, 'pauktaw', 43),
(234, 'ponnagyun', 43),
(235, 'rathedaung', 43),
(236, 'sittwe', 43),
(238, 'thandwe', 44),
(239, 'toungup', 44),
(242, 'kyauktaw', 45),
(243, 'minbya', 45),
(244, 'mrauk-u', 45),
(245, 'myebon', 45),
(246, 'kengtung', 46),
(262, 'tachileik', 49),
(265, 'kunlong', 50),
(266, 'hsipaw', 51),
(267, 'kyaukme', 51),
(268, 'namtu', 51),
(269, 'nawnghkio', 51),
(272, 'hseni', 52),
(273, 'lashio', 52),
(274, 'mongyai', 52),
(275, 'tangyan', 52),
(276, 'kutkai', 103),
(277, 'muse', 103),
(283, 'mabein', 51),
(284, 'mongmit', 51),
(285, 'laukkaing', 50),
(286, 'konkyan', 50),
(289, 'manton', 103),
(291, 'hopang', 102),
(293, 'pangwaun', 102),
(296, 'matman', 101),
(297, 'namphan', 101),
(298, 'pangsang', 101),
(300, 'langkho', 61),
(301, 'mawkmai', 61),
(306, 'kunhing', 62),
(307, 'kyethi', 62),
(309, 'loilen', 62),
(310, 'monghsu', 62),
(312, 'nansang', 62),
(318, 'kalaw', 63),
(319, 'lawksawk', 63),
(320, 'nyaungshwe', 63),
(321, 'pekon', 63),
(322, 'taunggyi', 63),
(326, 'pindaya', 63),
(327, 'ywangan', 63),
(328, 'hopong', 63),
(330, 'pinlaung', 63),
(331, 'hkamti', 105),
(332, 'homalin', 105),
(333, 'kanbalu', 67),
(334, 'kyunhla', 67),
(337, 'kale', 68),
(338, 'kalewa', 68),
(339, 'mingin', 68),
(340, 'banmauk', 69),
(341, 'indaw', 69),
(342, 'katha', 69),
(343, 'kawlin', 69),
(344, 'pinlebu', 69),
(345, 'tigyaing', 69),
(346, 'wuntho', 69),
(347, 'mawlaik', 70),
(348, 'paungbyin', 70),
(349, 'ayadaw', 71),
(350, 'budalin', 71),
(351, 'chaung-u', 71),
(352, 'monywa', 71),
(353, 'myaung', 72),
(354, 'myinmu', 72),
(355, 'sagaing', 72),
(356, 'khin-u', 73),
(357, 'shwebo', 73),
(358, 'wetlet', 73),
(359, 'tabayin', 73),
(360, 'tamu', 70),
(361, 'kani', 104),
(362, 'pale', 104),
(364, 'yinmabin', 104),
(365, 'lahe', 105),
(367, 'nanyun', 105),
(368, 'dawei', 89),
(369, 'launglon', 89),
(370, 'thayetchaung', 89),
(371, 'yebyu', 89),
(374, 'bokpyin', 88),
(375, 'kawthoung', 88),
(379, 'kyunsu', 79),
(380, 'myeik', 79),
(381, 'palaw', 79),
(382, 'tanintharyi', 79),
(386, 'y-dagonmyothitea', 92),
(387, 'y-dagonmyothitno', 92),
(388, 'y-northokkalapa', 92),
(389, 'y-pazundaung', 92),
(390, 'y-dagonmyothitse', 92),
(391, 'y-southokkalapa', 92),
(392, 'y-thingangkuun', 92),
(393, 'y-dawbon', 92),
(394, 'y-mingalartaungnyunt', 92),
(395, 'y-tamwe', 92),
(396, 'y-thaketa', 92),
(397, 'y-yankin', 92),
(398, 'y-hlaingtharya', 93),
(399, 'y-insein', 93),
(400, 'y-mingaladon', 93),
(401, 'y-shwepyithar', 93),
(402, 'hlegu', 93),
(403, 'hmawbi', 93),
(404, 'htantabin', 93),
(405, 'taikkyi', 93),
(406, 'y-dala', 90),
(407, 'y-seikgyikanaungto', 90),
(408, 'y-cocokyun', 90),
(409, 'kawhmu', 90),
(410, 'kayan', 90),
(411, 'kungyangon', 90),
(412, 'kyauktan', 90),
(413, 'thanlyin', 90),
(414, 'thongwa', 90),
(419, 'y-dagon', 91),
(421, 'y-kyeemyindaing', 91),
(422, 'y-lanmadaw', 91),
(423, 'y-latha', 91),
(424, 'y-pabedan', 91),
(425, 'y-sanchaung', 91),
(426, 'y-seikkan', 91),
(427, 'y-hlaing', 91),
(428, 'y-kamaryut', 91),
(429, 'y-mayangone', 91),
(432, 'tatkon', 96),
(435, 'lewe', 96),
(436, 'pyinmana', 96),
(441, 'danubyu', 15),
(442, 'kangyidaunt', 17),
(443, 'maubin', 15),
(444, 'myaungmya', 16),
(445, 'yegyi', 17),
(446, 'kyauktaga', 21),
(447, 'phyu', 22),
(449, 'madupi', 28),
(450, 'tonzang', 98),
(451, 'tsawlaw', 31),
(452, 'hpasawng', 33),
(453, 'hlaingbwe', 35),
(454, 'kyainseikgyi', 37),
(455, 'ngazun', 9),
(456, 'taungtha', 9),
(457, 'gwa', 44),
(458, 'munaung', 41),
(459, 'layshi', 105),
(460, 'salin', 3),
(461, 'monghpyak', 99),
(462, 'monghsat', 100),
(463, 'mongkhet', 46),
(464, 'mongla', 46),
(465, 'mongping', 100),
(466, 'mongton', 100),
(467, 'mongyang', 46),
(468, 'mongyawng', 99),
(469, 'mongmao', 102),
(470, 'namhsan', 51),
(471, 'nanhkan', 103),
(472, 'hsihseng', 63),
(473, 'laihka', 62),
(474, 'mongkaung', 62),
(475, 'mongnai', 61),
(476, 'mongpan', 61),
(477, 'y-ahlone', 91),
(478, 'y-bahan', 91),
(479, 'y-botahtaung', 92),
(480, 'y-dagonmyothitso', 92),
(481, 'twantay', 90),
(482, 'taze', 73),
(483, 'ye-u', 73);

-- --------------------------------------------------------

--
-- Table structure for table `Visited_Places`
--

CREATE TABLE `Visited_Places` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `township_id` int(11) NOT NULL,
  `lon` float NOT NULL,
  `lat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Visited_Places`
--

INSERT INTO `Visited_Places` (`id`, `name`, `township_id`, `lon`, `lat`) VALUES
(1, 'Mandalay City Hotel', 33, 21.9831, 96.0806),
(2, 'A Little Bit of Mandalay(Dinner)', 33, 21.9797, 96.1281),
(3, 'Shwe Kyaung', 32, 22.0037, 96.1071),
(4, 'Kyaut Sane Market', 35, 21.9638, 96.0713),
(5, 'Mahar Myat Muni Pagoda', 34, 21.9517, 96.0788),
(6, 'Aung Nan Shop', 34, 21.9418, 96.0779),
(7, 'Innwa', 30, 21.8571, 95.9816),
(8, 'Sagaing', 355, 21.9303, 95.9913),
(9, 'U Bein Bridge', 31, 21.8918, 96.0578),
(10, 'Pho Win Taung', 364, 22.048, 94.984),
(11, 'Shwe Ba Taung', 364, 22.0423, 94.9896),
(12, 'Win Unity Hotel', 352, 22.1246, 95.1233),
(13, 'Chindwin River Restaurant', 352, 22.1334, 95.119),
(14, 'Thanboddhay Pagoda(Moe Nyin)', 352, 22.0688, 95.2152),
(15, 'Bawdi 1000', 352, 22.08, 95.2762),
(16, 'Hill Top Villa Resort', 318, 20.6276, 96.5728);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `District`
--
ALTER TABLE `District`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `Hospitals`
--
ALTER TABLE `Hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `township_id` (`township_id`);

--
-- Indexes for table `Patients`
--
ALTER TABLE `Patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suffer_type_id` (`suffer_type_id`),
  ADD KEY `Patients_ibfk_1` (`hospital_id`);

--
-- Indexes for table `Patient_Visited`
--
ALTER TABLE `Patient_Visited`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `Patient_Visited_ibfk_1` (`visited_id`);

--
-- Indexes for table `States`
--
ALTER TABLE `States`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Suffer_Type`
--
ALTER TABLE `Suffer_Type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Townships`
--
ALTER TABLE `Townships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `Visited_Places`
--
ALTER TABLE `Visited_Places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `township_id` (`township_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `District`
--
ALTER TABLE `District`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `Hospitals`
--
ALTER TABLE `Hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Patients`
--
ALTER TABLE `Patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Patient_Visited`
--
ALTER TABLE `Patient_Visited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `States`
--
ALTER TABLE `States`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Suffer_Type`
--
ALTER TABLE `Suffer_Type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Townships`
--
ALTER TABLE `Townships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `Visited_Places`
--
ALTER TABLE `Visited_Places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `District`
--
ALTER TABLE `District`
  ADD CONSTRAINT `District_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `States` (`id`);

--
-- Constraints for table `Hospitals`
--
ALTER TABLE `Hospitals`
  ADD CONSTRAINT `Hospitals_ibfk_1` FOREIGN KEY (`township_id`) REFERENCES `Townships` (`id`);

--
-- Constraints for table `Patients`
--
ALTER TABLE `Patients`
  ADD CONSTRAINT `Patients_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `Hospitals` (`id`);

--
-- Constraints for table `Patient_Visited`
--
ALTER TABLE `Patient_Visited`
  ADD CONSTRAINT `Patient_Visited_ibfk_1` FOREIGN KEY (`visited_id`) REFERENCES `Visited_Places` (`id`);

--
-- Constraints for table `Townships`
--
ALTER TABLE `Townships`
  ADD CONSTRAINT `Townships_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `District` (`id`);

--
-- Constraints for table `Visited_Places`
--
ALTER TABLE `Visited_Places`
  ADD CONSTRAINT `Visited_Places_ibfk_1` FOREIGN KEY (`township_id`) REFERENCES `Townships` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
