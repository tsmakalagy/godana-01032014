-- phpMyAdmin SQL Dump
-- version 3.3.7deb5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2014 at 09:02 AM
-- Server version: 5.1.49
-- PHP Version: 5.3.3-7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `godana`
--

-- --------------------------------------------------------

--
-- Table structure for table `gdn_attribute`
--

CREATE TABLE IF NOT EXISTS `gdn_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `gdn_attribute`
--

INSERT INTO `gdn_attribute` (`id`, `name`) VALUES
(1, 'marque'),
(2, 'type'),
(3, 'taille'),
(4, 'qualitÃ©'),
(5, 'moteur'),
(6, 'ram'),
(7, 'disque-dur'),
(8, 'processeur'),
(9, 'Ã©cran');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_bid`
--

CREATE TABLE IF NOT EXISTS `gdn_bid` (
  `id_bid` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `price_bid` float DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bid`),
  UNIQUE KEY `UNIQ_40C75C60D1AA708F` (`id_post`),
  KEY `IDX_40C75C60A67B1E36` (`id_city`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `gdn_bid`
--

INSERT INTO `gdn_bid` (`id_bid`, `id_post`, `type`, `price_bid`, `id_city`) VALUES
(1, 1, 0, 1.5e+08, 11321),
(2, 2, 1, 100000, 8016),
(3, 3, 1, 1e+07, 4252),
(4, 4, 0, 100000, 12410),
(5, 5, 0, 20000, 6268),
(6, 6, 0, 12000, 8732),
(7, 7, 0, 1e+06, 8016),
(8, 8, 1, 150000, 17134),
(9, 9, 0, 1e+06, 12177),
(10, 10, 0, 5000, 6769),
(11, 11, 0, 200000, 6013),
(12, 12, 0, 65000, 9122),
(13, 13, 1, 100000, 12140),
(14, 44, 0, 15000, 13251),
(15, 45, 0, 250000, 13476),
(16, 46, 1, 400000, 13476),
(17, 47, 0, 600000, 13476),
(18, 48, 0, 100000, 13476),
(19, 49, 0, 1e+06, 12177),
(20, 50, 1, 120000, 5001),
(21, 51, 1, 200000, 5794),
(22, 52, 1, 250000, 3854),
(23, 53, 0, 120000, 10675),
(24, 54, 0, 120000, 2227);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_car`
--

CREATE TABLE IF NOT EXISTS `gdn_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `license` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cooperative_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7D08090E8D0C5D40` (`cooperative_id`),
  KEY `IDX_7D08090E7975B7E7` (`model_id`),
  KEY `IDX_7D08090EC3423909` (`driver_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `gdn_car`
--

INSERT INTO `gdn_car` (`id`, `model_id`, `driver_id`, `license`, `cooperative_id`) VALUES
(1, 5, 1, '0325 TBA', 1),
(3, 3, 4, '7425 AD', 2),
(4, 11, 7, '1574 TBB', 3),
(5, 12, 3, '1207 FD', 1),
(6, 3, 4, '1826 UC', 5),
(7, 1, 6, '1202 TBB', 2),
(8, 8, 8, '7865 TAS', 3),
(9, 11, 1, '8695 TBA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_car_driver`
--

CREATE TABLE IF NOT EXISTS `gdn_car_driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `cooperative_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3640824F8D0C5D40` (`cooperative_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `gdn_car_driver`
--

INSERT INTO `gdn_car_driver` (`id`, `name`, `cooperative_id`) VALUES
(1, 'Thomas', 1),
(2, 'Randria', NULL),
(3, 'Raoul', 1),
(4, 'Kim', 2),
(6, 'Timmy', 2),
(7, 'Ralouis', 3),
(8, 'Rajean', 5),
(9, 'Dadanaivo', 3);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_car_file`
--

CREATE TABLE IF NOT EXISTS `gdn_car_file` (
  `car_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`car_id`,`file_id`),
  KEY `IDX_8700E1E3C3C6F69F` (`car_id`),
  KEY `IDX_8700E1E393CB796C` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_car_file`
--


-- --------------------------------------------------------

--
-- Table structure for table `gdn_car_make`
--

CREATE TABLE IF NOT EXISTS `gdn_car_make` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1153A19D5E237E06` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gdn_car_make`
--

INSERT INTO `gdn_car_make` (`id`, `name`) VALUES
(4, 'hyundai'),
(2, 'mazda'),
(1, 'mercedes-benz'),
(5, 'renault'),
(3, 'toyota');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_car_model`
--

CREATE TABLE IF NOT EXISTS `gdn_car_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make_id` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F32A4EA8CFBF73EB` (`make_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `gdn_car_model`
--

INSERT INTO `gdn_car_model` (`id`, `make_id`, `name`) VALUES
(1, 1, 'sprinter'),
(2, 1, '410'),
(3, 2, 'eclipse'),
(4, 3, 'd4d'),
(5, 3, 'hiace'),
(6, 2, 'b2200'),
(7, 4, 'accent'),
(8, 4, 'h1'),
(9, 4, 'starex'),
(10, 1, '307'),
(11, 1, 'cdi'),
(12, 5, 'traffic');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_category`
--

CREATE TABLE IF NOT EXISTS `gdn_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent_category` int(11) DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_ident` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_type` int(11) NOT NULL,
  PRIMARY KEY (`id_category`),
  KEY `IDX_C6B9DA9E70DF7698` (`id_parent_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `gdn_category`
--

INSERT INTO `gdn_category` (`id_category`, `id_parent_category`, `category_name`, `category_ident`, `category_type`) VALUES
(1, NULL, 'appliance', 'appliance', 0),
(2, NULL, 'agriculture', 'agriculture', 0),
(3, NULL, 'housing', 'housing', 0),
(4, NULL, 'technology', 'technology', 0),
(5, NULL, 'transportation', 'transportation', 1),
(6, NULL, 'mining', 'mining', 0),
(7, NULL, 'quincaillerie', 'quincaillerie', 1),
(8, NULL, 'immobilier', 'immobilier', 1),
(9, NULL, 'habillement', 'habillement', 1),
(10, NULL, 'charcuterie', 'charcuterie', 1),
(12, NULL, 'boucherie', 'boucherie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_comment`
--

CREATE TABLE IF NOT EXISTS `gdn_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBDBA013A76ED395` (`user_id`),
  KEY `IDX_DBDBA0134B89032C` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `gdn_comment`
--

INSERT INTO `gdn_comment` (`id`, `user_id`, `post_id`, `detail`, `created`, `is_deleted`) VALUES
(1, 16, 26, 'Taiza no nisy an\\''izany?', '2014-01-27 11:29:15', 0),
(2, 16, 27, 'marina ve?', '2014-01-27 12:27:47', 0),
(3, 1, 26, 'Teo Anosy teo akaikin\\''ny arrÃªt-bus', '2014-01-27 13:43:23', 0),
(6, 1, 26, 'Dia nisy firy no maty?', '2014-01-27 13:51:22', 0),
(7, 1, 25, 'Dia rovina ndray ny jeudi blanc?', '2014-01-27 13:53:07', 0),
(8, 1, 24, 'kozy v', '2014-01-27 13:55:43', 0),
(9, 1, 24, 'aiza', '2014-01-27 13:57:31', 0),
(10, 1, 27, 'aiza ko no hisy anzany', '2014-01-27 13:59:21', 0),
(11, 1, 19, 'marina izany e', '2014-01-27 14:03:49', 0),
(12, 1, 21, 'Tena marina mintsy izany', '2014-01-27 14:14:00', 0),
(13, 1, 21, 'Dia ahona no atao e', '2014-01-27 14:14:26', 0),
(14, 1, 22, 'aiza kosa e', '2014-01-28 14:09:00', 0),
(15, 1, 32, 'Aona e', '2014-01-28 14:11:52', 1),
(16, 1, 37, 'kaiz kaiz', '2014-01-28 14:13:10', 1),
(17, 1, 36, 'kozy an', '2014-01-28 14:14:20', 0),
(18, 1, 35, 'd aon e', '2014-01-28 14:17:30', 0),
(19, 1, 36, 'aon fandean', '2014-01-28 14:21:04', 1),
(20, 1, 35, 'aize', '2014-01-28 14:26:09', 1),
(21, 1, 35, 'karakory', '2014-01-28 14:32:45', 0),
(22, 1, 37, 'maozatra', '2014-01-28 18:04:21', 0),
(23, 17, 40, 'tsara kosa', '2014-01-29 07:14:32', 0),
(24, 1, 42, 'any @ caveau', '2014-01-29 15:43:59', 1),
(25, 1, 42, 'ary ra any @ Le Six', '2014-01-29 15:44:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `UNIQ_3CD14478CDE5729` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=176 ;

--
-- Dumping data for table `gdn_contact`
--

INSERT INTO `gdn_contact` (`id_contact`, `type`, `value`) VALUES
(1, 1, '0320565894'),
(2, 1, '0331883056'),
(3, 2, 'blabla@mail.com'),
(4, 1, '0331883056'),
(5, 1, '0331883056'),
(6, 1, '0331883056'),
(7, 1, '0331883056'),
(8, 1, '0320225665'),
(9, 1, '0320224585'),
(10, 1, '0331883056'),
(11, 1, '0341645789'),
(12, 1, '0320565478'),
(13, 2, 'rjm@moov.mg'),
(14, 1, '0341645789'),
(16, 1, '0341645789'),
(17, 1, '0341645789'),
(18, 1, '0331883056'),
(19, 1, '0320565894'),
(20, 1, '0331883056'),
(21, 1, '0341815698'),
(57, 1, '0320256897'),
(58, 1, '0337896532'),
(59, 1, '0341256897'),
(60, 3, 'Ambodivona'),
(61, 3, 'Ambodivona'),
(62, 1, '0341256897'),
(63, 3, 'Ambodivona'),
(64, 1, '0341256897'),
(65, 1, '0320215689'),
(66, 1, '0341516598'),
(67, 3, 'Lot 12VII Beravina Itaosy'),
(68, 1, '033457894'),
(69, 2, 'raoul@mail.com'),
(70, 2, 'kim@mail.com'),
(71, 1, '0341645172'),
(72, 3, 'Lot 2B Ampanotokana'),
(73, 1, '032 02 456 78'),
(74, 1, '0322245698'),
(75, 3, 'Anjoma'),
(76, 1, '0331545678'),
(77, 3, 'Ambodivona'),
(78, 1, '0341645172'),
(79, 3, 'Ambodivona'),
(80, 1, '0324845128'),
(81, 3, 'Ambodivona'),
(82, 1, '0341256897'),
(83, 1, '0334598674'),
(84, 3, 'Fasan\\''ny Karana'),
(88, 1, '0324845128'),
(89, 3, 'Fasan\\''ny Karana'),
(90, 1, '0341645172'),
(91, 1, '0320256897'),
(92, 3, 'Fasan\\''ny Karana'),
(94, 1, '0341645172'),
(95, 3, 'Manjakaray'),
(96, 1, '0341645172'),
(102, 1, '0331883056'),
(103, 1, '0341645265'),
(104, 1, '0341645265'),
(105, 1, '0322656897'),
(106, 1, '0341645265'),
(111, 1, '0341645265'),
(112, 1, '0341645172'),
(133, 1, '0341645265'),
(134, 1, '0320265891'),
(135, 1, '0341645265'),
(136, 1, '0341645265'),
(137, 1, '0341645265'),
(138, 1, '0341645265'),
(139, 1, '0341645265'),
(140, 1, '0341645265'),
(141, 1, '0341645265'),
(142, 1, '0341645265'),
(143, 1, '0341645172'),
(144, 1, '0320265891'),
(145, 1, '0341645265'),
(146, 1, '0341645172'),
(147, 1, '0341645265'),
(148, 1, '0341645172'),
(149, 1, '0341645265'),
(150, 1, '0341645265'),
(151, 1, '0341645265'),
(152, 1, '0341645265'),
(153, 1, '0320226536'),
(154, 2, 'misa@yahoo.fr'),
(155, 2, 'misa@yahoo.fr'),
(156, 1, '0341645265'),
(157, 1, '0341645265'),
(158, 1, '0341645265'),
(159, 1, '0341645265'),
(160, 1, '0326598465'),
(161, 1, '0326598754'),
(162, 1, '0326598754'),
(163, 1, '0324512568'),
(164, 1, '0326598754'),
(165, 1, '0326598754'),
(166, 1, '0326598754'),
(167, 1, '0326598754'),
(168, 1, '0326598754'),
(169, 1, '0320225665'),
(170, 1, '0326598754'),
(171, 1, '0331883056'),
(172, 1, '0341645172'),
(173, 2, 'tsotra@mail.com'),
(174, 1, '0341645898'),
(175, 1, '0320242568');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_contact_type`
--

CREATE TABLE IF NOT EXISTS `gdn_contact_type` (
  `id_contact_type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_contact_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gdn_contact_type`
--

INSERT INTO `gdn_contact_type` (`id_contact_type`, `name`) VALUES
(1, 'mobile'),
(2, 'email'),
(3, 'address');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gdn_cooperative`
--

INSERT INTO `gdn_cooperative` (`id`, `name`) VALUES
(1, 'Mami'),
(2, 'Vatsi'),
(3, 'Besady'),
(4, 'Cotisse'),
(5, 'Sonatra');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative_admin`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative_admin` (
  `cooperative_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`cooperative_id`,`admin_id`),
  KEY `IDX_995E71D78D0C5D40` (`cooperative_id`),
  KEY `IDX_995E71D7642B8210` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_cooperative_admin`
--

INSERT INTO `gdn_cooperative_admin` (`cooperative_id`, `admin_id`) VALUES
(1, 16),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative_contact` (
  `cooperative_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`cooperative_id`,`contact_id`),
  UNIQUE KEY `UNIQ_A2CD47D7E7A1254A` (`contact_id`),
  KEY `IDX_A2CD47D78D0C5D40` (`cooperative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_cooperative_contact`
--

INSERT INTO `gdn_cooperative_contact` (`cooperative_id`, `contact_id`) VALUES
(1, 21),
(2, 65),
(3, 76),
(3, 77),
(4, 80),
(4, 81),
(4, 82),
(5, 83),
(5, 84);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative_line`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative_line` (
  `cooperative_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  PRIMARY KEY (`cooperative_id`,`line_id`),
  KEY `IDX_8063492D8D0C5D40` (`cooperative_id`),
  KEY `IDX_8063492D4D7B7542` (`line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_cooperative_line`
--

INSERT INTO `gdn_cooperative_line` (`cooperative_id`, `line_id`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 9),
(2, 1),
(2, 4),
(3, 7),
(5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative_line_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative_line_contact` (
  `line_contact_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`line_contact_id`,`contact_id`),
  UNIQUE KEY `UNIQ_B44C8D0EE7A1254A` (`contact_id`),
  KEY `IDX_B44C8D0E591A36A1` (`line_contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_cooperative_line_contact`
--

INSERT INTO `gdn_cooperative_line_contact` (`line_contact_id`, `contact_id`) VALUES
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(2, 61),
(2, 62),
(3, 63),
(3, 64),
(4, 78),
(4, 79),
(5, 88),
(5, 89),
(6, 91),
(6, 92),
(7, 94),
(7, 95),
(8, 96);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative_teller`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative_teller` (
  `cooperative_id` int(11) NOT NULL,
  `teller_id` int(11) NOT NULL,
  PRIMARY KEY (`cooperative_id`,`teller_id`),
  KEY `IDX_47DF20468D0C5D40` (`cooperative_id`),
  KEY `IDX_47DF2046E9894D10` (`teller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_cooperative_teller`
--

INSERT INTO `gdn_cooperative_teller` (`cooperative_id`, `teller_id`) VALUES
(1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_cooperative_zone`
--

CREATE TABLE IF NOT EXISTS `gdn_cooperative_zone` (
  `cooperative_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`cooperative_id`,`zone_id`),
  KEY `IDX_F19C3DDC8D0C5D40` (`cooperative_id`),
  KEY `IDX_F19C3DDC9F2C3FAB` (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_cooperative_zone`
--

INSERT INTO `gdn_cooperative_zone` (`cooperative_id`, `zone_id`) VALUES
(1, 1),
(1, 2),
(1, 6),
(2, 1),
(2, 2),
(3, 3),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_driver_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_driver_contact` (
  `driver_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`driver_id`,`contact_id`),
  UNIQUE KEY `UNIQ_FAE7DAA4E7A1254A` (`contact_id`),
  KEY `IDX_FAE7DAA4C3423909` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_driver_contact`
--

INSERT INTO `gdn_driver_contact` (`driver_id`, `contact_id`) VALUES
(1, 66),
(1, 67),
(2, 68),
(3, 69),
(4, 70),
(4, 71),
(4, 72),
(6, 74),
(7, 75),
(8, 90),
(9, 105);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_feed`
--

CREATE TABLE IF NOT EXISTS `gdn_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4A4CB3BA4B89032C` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `gdn_feed`
--

INSERT INTO `gdn_feed` (`id`, `post_id`) VALUES
(1, 14),
(2, 15),
(3, 16),
(4, 17),
(5, 18),
(6, 19),
(7, 20),
(8, 21),
(9, 22),
(10, 23),
(11, 24),
(12, 25),
(13, 26),
(14, 27),
(15, 28),
(16, 29),
(17, 30),
(18, 31),
(19, 32),
(20, 33),
(21, 34),
(22, 35),
(23, 36),
(24, 37),
(25, 38),
(26, 39),
(27, 40),
(28, 41),
(29, 42),
(30, 43);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_file`
--

CREATE TABLE IF NOT EXISTS `gdn_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=106 ;

--
-- Dumping data for table `gdn_file`
--

INSERT INTO `gdn_file` (`id_file`, `type`, `url`, `name`, `size`, `title`, `description`) VALUES
(1, 'image/jpeg', 'http://localhost.godana/files/3/aa9e5b4124.jpg', 'aa9e5b4124.jpg', 133667, NULL, NULL),
(2, 'image/jpeg', 'http://localhost.godana/files/3/a5266566f9.jpg', 'a5266566f9.jpg', 27826, NULL, NULL),
(3, 'image/jpeg', 'http://localhost.godana/files/3/0f35504a9e.jpg', '0f35504a9e.jpg', 19920, NULL, NULL),
(4, 'image/jpeg', 'http://localhost.godana/files/3/9f21c42898.jpg', '9f21c42898.jpg', 21816, NULL, NULL),
(34, 'image/jpeg', 'http://localhost.godana/files/2/61a1a159ee.jpg', '61a1a159ee.jpg', 27826, NULL, NULL),
(35, 'image/jpeg', 'http://localhost.godana/files/2/a8452b4cc9.jpg', 'a8452b4cc9.jpg', 21816, NULL, NULL),
(36, 'image/jpeg', 'http://localhost.godana/files/2/d2ca7b876c.jpg', 'd2ca7b876c.jpg', 58144, NULL, NULL),
(37, 'image/jpeg', 'http://localhost.godana/files/2/e40b9c9856.jpg', 'e40b9c9856.jpg', 58537, NULL, NULL),
(38, 'image/jpeg', 'http://localhost.godana/files/2/a284764301.jpg', 'a284764301.jpg', 250603, NULL, NULL),
(39, 'image/jpeg', 'http://localhost.godana/files/2/f2ad5cc438.jpg', 'f2ad5cc438.jpg', 111008, NULL, NULL),
(40, 'image/jpeg', 'http://localhost.godana/files/2/3d1f9eaa4a.jpg', '3d1f9eaa4a.jpg', 64046, NULL, NULL),
(41, 'image/jpeg', 'http://localhost.godana/files/2/1e3b646270.jpg', '1e3b646270.jpg', 27840, NULL, NULL),
(42, 'image/jpeg', 'http://localhost.godana/files/2/619cd7ea17.jpg', '619cd7ea17.jpg', 216667, NULL, NULL),
(44, 'image/jpeg', 'http://localhost.godana/files/2/da50869bb9.jpg', 'da50869bb9.jpg', 19920, NULL, NULL),
(45, 'image/jpeg', 'http://localhost.godana/files/2/de31e70c72.jpg', 'de31e70c72.jpg', 133667, NULL, NULL),
(46, 'image/jpeg', 'http://localhost.godana/files/2/e2d72bca21.jpg', 'e2d72bca21.jpg', 77326, NULL, NULL),
(47, 'image/jpeg', 'http://localhost.godana/files/2/556678c6a8.jpg', '556678c6a8.jpg', 228274, NULL, NULL),
(48, 'image/jpeg', 'http://localhost.godana/files/2/70d34deccd.jpg', '70d34deccd.jpg', 142584, NULL, NULL),
(49, 'image/jpeg', 'http://localhost.godana/files/1/1c804a2194.jpg', '1c804a2194.jpg', 2039496, NULL, NULL),
(50, 'image/jpeg', 'http://localhost.godana/files/1/a33f126b9f.jpg', 'a33f126b9f.jpg', 27674, NULL, NULL),
(54, 'image/jpeg', 'http://localhost.godana/files/2/54948be683.jpg', '54948be683.jpg', 2039496, NULL, NULL),
(55, 'image/jpeg', 'http://localhost.godana/files/1/e939adc593.jpg', 'e939adc593.jpg', 156784, NULL, NULL),
(56, 'image/jpeg', 'http://localhost.godana/files/1/08092c8ed2.jpg', '08092c8ed2.jpg', 374299, NULL, NULL),
(58, 'image/jpeg', 'http://localhost.godana/files/16/c318308cd2.jpg', 'c318308cd2.jpg', 7484, NULL, NULL),
(59, 'image/jpeg', 'http://localhost.godana/files/16/003f3d4007.jpg', '003f3d4007.jpg', 111008, NULL, NULL),
(61, 'image/jpeg', 'http://localhost.godana/files/bids/16/ab82af6293.jpg', 'ab82af6293.jpg', 1906166, NULL, NULL),
(64, 'image/jpeg', 'http://localhost.godana/files/bids/1/68fd323418.jpg', '68fd323418.jpg', 1421747, NULL, NULL),
(91, 'image/jpeg', 'http://localhost.godana/files/bids/1/a23dfc67c7.jpg', 'a23dfc67c7.jpg', 1758844, NULL, NULL),
(92, 'image/jpeg', 'http://localhost.godana/files/bids/1/f96c3cefc3.jpg', 'f96c3cefc3.jpg', 1888259, NULL, NULL),
(94, 'image/png', 'http://localhost.godana/files/users/default/8eabcd800b.png', '8eabcd800b.png', 1150, NULL, NULL),
(95, 'image/jpeg', 'http://localhost.godana/files/users/1/47bdb17870.jpg', '47bdb17870.jpg', 11347, NULL, NULL),
(96, 'image/jpeg', 'http://localhost.godana/files/users/16/70a3f0246c.jpg', '70a3f0246c.jpg', 19494, NULL, NULL),
(97, 'image/jpeg', 'http://localhost.godana/files/feeds/9/f4ee7a346e.jpg', 'f4ee7a346e.jpg', 26011, NULL, NULL),
(98, 'image/jpeg', 'http://localhost.godana/files/feeds/9/3e1caa94ae.jpg', '3e1caa94ae.jpg', 92071, NULL, NULL),
(99, 'image/jpeg', 'http://localhost.godana/files/feeds/1/6e2a810c28.jpg', '6e2a810c28.jpg', 91797, NULL, NULL),
(100, 'image/jpeg', 'http://localhost.godana/files/feeds/16/c97ca48680.jpg', 'c97ca48680.jpg', 50655, NULL, NULL),
(101, 'image/jpeg', 'http://localhost.godana/files/feeds/1/8b239b6b73.JPG', '8b239b6b73.JPG', 802538, NULL, NULL),
(102, 'image/jpeg', 'http://localhost.godana/files/feeds/1/dd6355dbed.jpg', 'dd6355dbed.jpg', 37056, NULL, NULL),
(103, 'image/jpeg', 'http://localhost.godana/files/bids/9/be419fccde.jpg', 'be419fccde.jpg', 49019, NULL, NULL),
(104, 'image/jpeg', 'http://localhost.godana/files/users/1/8b2ef04062.jpg', '8b2ef04062.jpg', 6390, NULL, NULL),
(105, 'image/jpeg', 'http://localhost.godana/files/bids/1/031be70613.jpg', '031be70613.jpg', 140856, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_image`
--

CREATE TABLE IF NOT EXISTS `gdn_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `dimension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AFE4285A93CB796C` (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `gdn_image`
--

INSERT INTO `gdn_image` (`id`, `file_id`, `dimension`, `name`) VALUES
(1, 94, 'xs', '8eabcd800b.png_w24_cx0_cy0_cw59_ch59.png'),
(2, 94, 'sm', '8eabcd800b.png_w40_cx0_cy0_cw59_ch59.png'),
(3, 94, 'md', '8eabcd800b.png_w60_cx0_cy0_cw59_ch59.png'),
(4, 95, 'xs', '47bdb17870.jpg_w24_cx0_cy27_cw176_ch176.jpg'),
(5, 95, 'sm', '47bdb17870.jpg_w40_cx0_cy27_cw176_ch176.jpg'),
(6, 95, 'md', '47bdb17870.jpg_w60_cx0_cy27_cw176_ch176.jpg'),
(7, 96, 'xs', '70a3f0246c.jpg_w24_cx80_cy19_cw256_ch256.jpg'),
(8, 96, 'sm', '70a3f0246c.jpg_w40_cx80_cy19_cw256_ch256.jpg'),
(9, 96, 'md', '70a3f0246c.jpg_w60_cx80_cy19_cw256_ch256.jpg'),
(10, 104, 'xs', '8b2ef04062.jpg_w24_cx0_cy22_cw176_ch176.jpg'),
(11, 104, 'sm', '8b2ef04062.jpg_w40_cx0_cy22_cw176_ch176.jpg'),
(12, 104, 'md', '8b2ef04062.jpg_w60_cx0_cy22_cw176_ch176.jpg'),
(16, 95, 'xs', '47bdb17870.jpg_w24_cx58_cy80_cw60_ch60.jpg'),
(17, 95, 'sm', '47bdb17870.jpg_w40_cx58_cy80_cw60_ch60.jpg'),
(18, 95, 'md', '47bdb17870.jpg_w60_cx58_cy80_cw60_ch60.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_line`
--

CREATE TABLE IF NOT EXISTS `gdn_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departure` int(11) DEFAULT NULL,
  `arrival` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B81843E745E9C671` (`departure`),
  KEY `IDX_B81843E75BE55CB4` (`arrival`),
  KEY `IDX_B81843E79F2C3FAB` (`zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `gdn_line`
--

INSERT INTO `gdn_line` (`id`, `departure`, `arrival`, `zone_id`) VALUES
(1, 8016, 17206, 1),
(2, 8016, 11290, 1),
(3, 8016, 1188, 1),
(4, 8016, 13137, 2),
(5, 8016, 2999, 2),
(6, 8016, 15437, 1),
(7, 8016, 11321, 3),
(8, 8016, 17231, 5),
(9, 8016, 15485, 6),
(10, 8016, 15203, 6);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_line_car`
--

CREATE TABLE IF NOT EXISTS `gdn_line_car` (
  `line_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `seats` int(11) NOT NULL,
  `nb_column` int(11) NOT NULL,
  `fare` double NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`line_id`,`car_id`),
  KEY `IDX_448316984D7B7542` (`line_id`),
  KEY `IDX_44831698C3C6F69F` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_line_car`
--

INSERT INTO `gdn_line_car` (`line_id`, `car_id`, `seats`, `nb_column`, `fare`, `status`) VALUES
(1, 1, 14, 3, 20000, NULL),
(1, 3, 14, 3, 20000, NULL),
(1, 5, 14, 3, 20000, NULL),
(4, 9, 26, 4, 50000, NULL),
(8, 6, 14, 3, 50000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_line_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_line_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cooperative_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BEE87FA8D0C5D40` (`cooperative_id`),
  KEY `IDX_BEE87FA4D7B7542` (`line_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gdn_line_contact`
--

INSERT INTO `gdn_line_contact` (`id`, `cooperative_id`, `line_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 5),
(4, 3, 7),
(5, 1, 9),
(6, 5, 8),
(7, 2, 1),
(8, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_media`
--

CREATE TABLE IF NOT EXISTS `gdn_media` (
  `id_media` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_media`),
  KEY `IDX_F58D09D1AA708F` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `gdn_media`
--


-- --------------------------------------------------------

--
-- Table structure for table `gdn_passenger`
--

CREATE TABLE IF NOT EXISTS `gdn_passenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `gdn_passenger`
--

INSERT INTO `gdn_passenger` (`id`, `title`, `name`) VALUES
(3, 0, 'Rakoto'),
(4, 0, 'Liva'),
(5, 0, 'Liva'),
(7, 1, 'Rasoa'),
(8, 0, 'Randria'),
(14, 0, 'Fano'),
(15, 0, 'Rija'),
(16, 1, 'Rasoa'),
(17, 1, 'Rasoa'),
(18, 0, 'Fano'),
(19, 0, 'Fano'),
(20, 0, 'Fano'),
(21, 0, 'Fano'),
(22, 0, 'Fano'),
(23, 0, 'Jaona'),
(24, 2, 'Mialy'),
(25, 1, 'Marie'),
(26, 0, 'lova'),
(27, 0, 'Philippe'),
(28, 0, 'Bilao'),
(29, 0, 'Bilao'),
(30, 0, 'Randria'),
(31, 0, 'Tojo'),
(32, 0, 'Liva'),
(33, 0, 'Mirija'),
(34, 1, 'Noro'),
(35, 0, 'Andry'),
(36, 0, 'Andry'),
(37, 0, 'Tojo'),
(38, 0, 'Bill'),
(39, 0, 'Trimo'),
(40, 0, 'Fano');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_passenger_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_passenger_contact` (
  `passenger_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`passenger_id`,`contact_id`),
  UNIQUE KEY `UNIQ_DAF26981E7A1254A` (`contact_id`),
  KEY `IDX_DAF269814502E565` (`passenger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_passenger_contact`
--

INSERT INTO `gdn_passenger_contact` (`passenger_id`, `contact_id`) VALUES
(3, 103),
(4, 104),
(5, 106),
(7, 111),
(8, 112),
(14, 133),
(15, 134),
(16, 135),
(17, 136),
(18, 137),
(19, 138),
(20, 139),
(21, 140),
(22, 141),
(23, 142),
(24, 143),
(25, 144),
(26, 145),
(27, 146),
(28, 147),
(29, 148),
(30, 149),
(31, 150),
(32, 151),
(33, 152),
(34, 153),
(35, 154),
(36, 155),
(37, 156),
(38, 157),
(39, 158),
(40, 159);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_post`
--

CREATE TABLE IF NOT EXISTS `gdn_post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `title_post` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_post` longtext COLLATE utf8_unicode_ci,
  `date_published` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `is_deleted` int(11) NOT NULL,
  `ident_post` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `IDX_33869B9C6B3CA4B` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `gdn_post`
--

INSERT INTO `gdn_post` (`id_post`, `title_post`, `detail_post`, `date_published`, `date_modified`, `is_deleted`, `ident_post`, `id_user`) VALUES
(1, 'Mivarotra fiara', 'Mivarotra karazana fiara na lehibe na kely @ vidiny mirary', '2013-11-20 14:28:57', '2013-11-20 14:28:57', 0, 'mivarotra-fiara', 3),
(2, 'Mitady volamena', 'Mitady volamena na firy na firy lanjany', '2013-11-21 09:50:30', '2013-11-21 09:50:30', 0, 'mitady-volamena', 3),
(3, 'Fiara mpanao rally', 'Mitady fiara prÃ©parÃ© @ rally', '2013-12-07 13:23:37', '2013-12-07 13:23:37', 0, 'fiara-mpanao-rally', 2),
(4, 'Mpamboly voninkazo', 'Misy karazana voninkazo na zanany na efa lehibe. Azo ambolena @ toerana rehetra. Misy koa ny zezika atao @ tany ambolena voninkazo', '2013-12-07 13:26:56', '2013-12-07 13:26:56', 0, 'mpamboly-voninkazo', 2),
(5, 'Fanendasana ovy', 'Friteuse', '2013-12-09 12:13:53', '2013-12-09 12:13:53', 0, 'fanendasana-ovy', 2),
(6, 'Mivarotra boisson', 'Karazana boisson alcoolique misy karazany maro azo isafidianana avy atsy Afrika atsimo', '2013-12-11 14:20:54', '2013-12-11 14:20:54', 0, 'mivarotra-boisson', 2),
(7, 'Ordinateur portable', 'Location Ordinateur portable ASUS LC2404 Disque dur 250 Go, Ram 2Go, Carte graphique 1024 Mo.', '2013-12-11 18:35:19', '2013-12-11 18:35:19', 0, 'ordinateur-portable', 1),
(8, 'Mitady trano hofaina', 'Trano misy efitra 2 sy lakozia ary efitra fandroana.', '2013-12-13 07:56:38', '2013-12-13 07:56:38', 0, 'mitady-trano-hofaina', 1),
(9, 'Safira', 'Manana safira be dia be avy any Ilakaka', '2013-12-13 13:07:04', '2013-12-13 13:07:04', 0, 'safira', 4),
(10, 'Vilia', 'Mampanofa vilia sy sotro', '2014-01-13 12:41:51', NULL, 0, 'vilia', 1),
(11, 'Appareil electromÃ©nager', 'Four Ã  micro-onde, robot, batteuse, ...', '2014-01-20 16:06:23', '2014-01-20 16:06:23', 0, 'appareil-electromnager', 16),
(12, 'Engrais bio', 'Vente d\\''engrais bio pour les rizÃ©ries ou les potagers', '2014-01-20 16:15:32', '2014-01-20 16:15:32', 0, 'engrais-bio', 16),
(13, 'Imprimante jet d\\''encre', 'Cherche imprimante jet d\\''encre de marque Canon ou HP en trÃ¨s bon Ã©tat.', '2014-01-20 16:24:01', '2014-01-20 16:24:01', 0, 'imprimante-jet-dencre', 16),
(14, 'Test', 'Test', '2014-01-20 17:34:56', '2014-01-20 17:34:56', 0, 'test', 16),
(15, 'mapme', 'mapme ', '2014-01-20 17:36:47', '2014-01-20 17:36:47', 0, 'mapme', 16),
(16, 'Blabla', 'blabla', '2014-01-20 17:39:00', '2014-01-20 17:39:00', 0, 'blabla', 16),
(17, 'Aiza no irozy', 'aiza tsika no irozy', '2014-01-20 17:57:27', '2014-01-20 17:57:27', 0, 'aiza-no-irozy', 16),
(18, 'Kolotsaina mainty', 'Maro no milaza fa ny kolotsaina mainty dia avy eto madagasikara', '2014-01-20 18:02:10', '2014-01-20 18:02:10', 0, 'kolotsaina-mainty', 16),
(19, 'Avy aiza ny fotsy', 'Ny fotsy dia niainga avy ao Eoropa ka nifindra tany Etazonia', '2014-01-20 18:07:57', '2014-01-20 18:07:57', 0, 'avy-aiza-ny-fotsy', 16),
(20, 'Akory aby', 'Mirary soa antsika rehetra', '2014-01-20 18:12:04', '2014-01-20 18:12:04', 0, 'akory-aby', 16),
(21, 'Ratsy ny andro', 'Mahakamo be ty andro ratsy ty', '2014-01-20 18:16:03', '2014-01-20 18:16:03', 0, 'ratsy-ny-andro', 1),
(22, 'Mbola ratsy ihany ny andro', 'Mbola ratsy ihany ty andro ty. Mety misy cyclone sa?', '2014-01-20 18:17:17', '2014-01-20 18:17:17', 0, 'mbola-ratsy-ihany-ny-andro', 1),
(23, 'Mbola voazanaka ve i Madagasikara', 'Raha ny zava-misy dia toa mbola voazanaka i Madagasikara', '2014-01-21 08:24:45', '2014-01-21 08:24:45', 0, 'mbola-voazanaka-ve-i-madagasikara', 16),
(24, 'Alatsinainy mainty', 'Feno 5 taona androany ny alatsinainy mainty', '2014-01-27 06:21:18', '2014-01-27 06:21:18', 0, 'alatsinainy-mainty', 9),
(25, 'Lundi noir', 'Omaly ny fahatsiarovana ny lundi noir', '2014-01-27 07:30:15', '2014-01-27 07:30:15', 0, 'lundi-noir', 9),
(26, 'Grenady nipoka', 'Nisy grenady nipoka tetsy Anosy t@ Sabotsy alina teo', '2014-01-27 08:12:30', '2014-01-27 08:12:30', 0, 'grenady-nipoka', 9),
(27, 'Nisaraka i Hollande sy Triweiler', 'Nifarana hatreo ny fiarahan\\''ny filoha Hollande sy Triweiler', '2014-01-27 08:16:25', '2014-01-27 08:16:25', 0, 'nisaraka-i-hollande-sy-triweiler', 9),
(28, 'Kabarin\\''ny Hery', 'Betsaka no nilaza fa toa kabary an\\''i Sarkozy no nataon\\''ny filoha vaovao teny mahamasina.', '2014-01-28 08:23:52', '2014-01-28 08:23:52', 0, 'kabarinny-hery', 16),
(29, 'Ciment avy any Majunga', 'Tonga izao ny ciment CPA sy CPJ any Mahajanga.', '2014-01-28 08:25:51', '2014-01-28 08:25:51', 0, 'ciment-avy-any-majunga', 16),
(30, 'AVC', 'Ny AVC dia fahatapahana lalan-dra mety mahazo ny olona.', '2014-01-28 09:04:02', '2014-01-28 09:04:02', 0, 'avc', 16),
(31, 'Misy mihaino', 'Aiz e', '2014-01-28 09:27:41', '2014-01-28 09:27:41', 0, 'misy-mihaino', 16),
(32, 'Kaiza', 'Kaiza', '2014-01-28 09:28:34', '2014-01-28 09:28:34', 0, 'kaiza', 16),
(33, 'Hello world', 'Bye world', '2014-01-28 10:05:11', '2014-01-28 10:05:11', 0, 'hello-world', 16),
(34, 'Bye world', 'Hello world', '2014-01-28 10:07:55', '2014-01-28 10:07:55', 0, 'bye-world', 16),
(35, 'Kaiza', 'kaiza', '2014-01-28 10:17:26', '2014-01-28 10:17:26', 0, 'kaiza', 16),
(36, 'koza', 'koza', '2014-01-28 10:18:24', '2014-01-28 10:18:24', 0, 'koza', 16),
(37, 'Aiza e', 'Kaiza', '2014-01-28 10:19:10', '2014-01-28 10:19:10', 0, 'aiza-e', 16),
(38, 'DÃ©fense publique', 'Son Ã©fficacitÃ© est mis en cause', '2014-01-28 10:32:07', '2014-01-28 10:32:07', 0, 'dfense-publique', 16),
(39, 'Cancer de col de l\\''uterus', 'Pays en dÃ©veloppement', '2014-01-28 10:34:10', '2014-01-28 10:34:10', 0, 'cancer-de-col-de-luterus', 16),
(40, 'Shoprite', 'Ny mora indrindra hatrany', '2014-01-28 12:39:22', '2014-01-28 12:39:22', 0, 'shoprite', 1),
(41, 'Malokila', 'Malokila', '2014-01-28 18:03:50', '2014-01-28 18:03:50', 0, 'malokila', 1),
(42, 'Fanalan\\''azy', 'aiza no toerana azo analan\\''azy @zao alarobia zao', '2014-01-29 14:51:37', '2014-01-29 14:51:37', 0, 'fanalanazy', 1),
(43, 'ajax', 'Similar to .empty(), the .remove() method takes elements out of the DOM. Use .remove() when you want to remove the element itself, as well as everything inside it. In addition to the elements themselves, all bound events and jQuery data associated with the elements are removed. To remove the elements without removing data and events, use .detach() instead.', '2014-01-29 16:06:12', '2014-01-29 16:06:12', 0, 'ajax', 1),
(44, 'Mamboly voninkazo', 'Fambolena voninkazo manara-penitra atao eny @ zaridaina sy tokotany rehetra', '2014-02-08 10:41:46', '2014-02-08 10:41:46', 0, 'mamboly-voninkazo', 16),
(45, 'TÃ©lÃ©phone HTC One', 'TÃ©lÃ©phone HTC One', '2014-02-08 12:40:29', '2014-02-08 12:40:29', 0, 'tlphone-htc-one', 9),
(46, 'Mitady phone Samsung Galaxy S4', 'Mitady phone Samsung Galaxy S4', '2014-02-08 12:47:03', '2014-02-08 12:47:03', 0, 'mitady-phone-samsung-galaxy-s4', 9),
(47, 'Mivarotra laptop marque HP', 'Mivarotra laptop marque HP', '2014-02-08 12:50:00', '2014-02-08 12:50:00', 0, 'mivarotra-laptop-marque-hp', 9),
(48, 'Mampanofa trano', 'Mampanofa trano', '2014-02-08 12:52:22', '2014-02-08 12:52:22', 0, 'mampanofa-trano', 9),
(49, 'Gold 42 carats', 'Gold 42 carats', '2014-02-08 16:06:16', '2014-02-08 16:06:16', 0, 'gold-42-carats', 9),
(50, 'Iron Philips', 'Iron Philips', '2014-02-08 16:12:50', '2014-02-08 16:12:50', 0, 'iron-philips', 9),
(51, 'Smart phone LG Curve', 'Smart phone LG Curve', '2014-02-08 16:16:11', '2014-02-08 16:16:11', 0, 'smart-phone-lg-curve', 9),
(52, 'Flat screen 42 inch', 'Flat screen 42 inch', '2014-02-08 16:18:26', '2014-02-08 16:18:26', 0, 'flat-screen-42-inch', 9),
(53, 'Rice cooker', 'Rice cooker', '2014-02-08 16:19:44', '2014-02-08 16:19:44', 0, 'rice-cooker', 9),
(54, 'Location studio', 'Location studio', '2014-02-08 16:47:37', '2014-02-08 16:47:37', 0, 'location-studio', 9);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_post_category`
--

CREATE TABLE IF NOT EXISTS `gdn_post_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`category_id`),
  KEY `IDX_1FEFEFE74B89032C` (`post_id`),
  KEY `IDX_1FEFEFE712469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_post_category`
--

INSERT INTO `gdn_post_category` (`post_id`, `category_id`) VALUES
(1, 5),
(2, 4),
(3, 4),
(7, 3),
(7, 4),
(8, 3),
(9, 6),
(10, 1),
(11, 1),
(12, 2),
(13, 4),
(44, 2),
(45, 4),
(46, 4),
(47, 4),
(48, 3),
(49, 6),
(50, 1),
(51, 4),
(52, 4),
(53, 1),
(54, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_post_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_post_contact` (
  `post_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`contact_id`),
  UNIQUE KEY `UNIQ_83A2B1AEE7A1254A` (`contact_id`),
  KEY `IDX_83A2B1AE4B89032C` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_post_contact`
--

INSERT INTO `gdn_post_contact` (`post_id`, `contact_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(5, 5),
(4, 8),
(6, 12),
(6, 13),
(7, 18),
(8, 19),
(9, 20),
(10, 102),
(11, 160),
(12, 161),
(13, 162),
(44, 163),
(45, 164),
(46, 165),
(47, 166),
(48, 167),
(49, 168),
(50, 169),
(51, 170),
(52, 171),
(53, 172),
(54, 173),
(54, 174);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_post_file`
--

CREATE TABLE IF NOT EXISTS `gdn_post_file` (
  `id_post` int(11) NOT NULL,
  `id_file` int(11) NOT NULL,
  PRIMARY KEY (`id_post`,`id_file`),
  KEY `IDX_BEDEE8BDD1AA708F` (`id_post`),
  KEY `IDX_BEDEE8BD7BF2A12` (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_post_file`
--

INSERT INTO `gdn_post_file` (`id_post`, `id_file`) VALUES
(5, 40),
(6, 54),
(8, 55),
(8, 56),
(27, 97),
(27, 98),
(38, 100),
(40, 101),
(40, 102),
(41, 102);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_post_tag`
--

CREATE TABLE IF NOT EXISTS `gdn_post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `IDX_9A3BF9AF4B89032C` (`post_id`),
  KEY `IDX_9A3BF9AFBAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_post_tag`
--

INSERT INTO `gdn_post_tag` (`post_id`, `tag_id`) VALUES
(18, 1),
(18, 2),
(19, 1),
(19, 3),
(20, 4),
(20, 5),
(21, 6),
(21, 7),
(22, 8),
(22, 9),
(23, 10),
(23, 11),
(24, 2),
(24, 12),
(25, 2),
(26, 13),
(26, 14),
(27, 15),
(28, 16),
(29, 17),
(38, 18),
(40, 19),
(41, 20),
(42, 21);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_product`
--

CREATE TABLE IF NOT EXISTS `gdn_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `measurement` double DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9CE5F6D2C54C8C93` (`type_id`),
  KEY `IDX_9CE5F6D24D16C4DD` (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `gdn_product`
--

INSERT INTO `gdn_product` (`id`, `type_id`, `name`, `description`, `price`, `measurement`, `shop_id`, `is_deleted`) VALUES
(1, 1, 'tennis', '', 100000, 1, 1, 0),
(2, 1, 'tennis', '', 100000, 1, 1, 0),
(3, 3, 'tennis', '', 100000, 1, 1, 0),
(4, 1, 'tbs', 'chaussure de rue', 100000, 10, 2, 0),
(5, 5, 'huile sae 40', 'Huile moteur diesel', 10000, 1, 2, 0),
(6, 1, 'chaussure de rue', '', 10000, 1, 1, 0),
(7, 2, 'pantalon jeans', 'Jean', 15000, 5, 1, 0),
(8, 2, 'pantalon jeans femme', 'Jeans', 15000, 5, 1, 0),
(9, 1, 'chaussure bateau', 'bateau', 25000, 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_producttype_attribute`
--

CREATE TABLE IF NOT EXISTS `gdn_producttype_attribute` (
  `producttype_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`producttype_id`,`attribute_id`),
  KEY `IDX_B2EADF1C5E032AB4` (`producttype_id`),
  KEY `IDX_B2EADF1CB6E62EFA` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_producttype_attribute`
--

INSERT INTO `gdn_producttype_attribute` (`producttype_id`, `attribute_id`) VALUES
(1, 1),
(1, 3),
(2, 4),
(3, 1),
(3, 2),
(5, 1),
(5, 2),
(5, 5),
(7, 1),
(7, 6),
(7, 7),
(7, 8),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_product_attribute`
--

CREATE TABLE IF NOT EXISTS `gdn_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`),
  KEY `IDX_EAB69CCF4584665A` (`product_id`),
  KEY `IDX_EAB69CCFB6E62EFA` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_product_attribute`
--

INSERT INTO `gdn_product_attribute` (`product_id`, `attribute_id`, `value`) VALUES
(2, 1, 'air jordan'),
(4, 1, 'TBS'),
(4, 3, '45'),
(4, 4, 'bonne qualitÃ©'),
(5, 1, 'G Lubrifiants'),
(5, 2, 'SAE'),
(5, 5, 'Diesel'),
(6, 1, 'GDM'),
(6, 3, '41'),
(9, 1, 'Lacoste'),
(9, 3, '41');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_product_file`
--

CREATE TABLE IF NOT EXISTS `gdn_product_file` (
  `id_product` int(11) NOT NULL,
  `id_file` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_file`),
  KEY `IDX_F35FF414DD7ADDD` (`id_product`),
  KEY `IDX_F35FF4147BF2A12` (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_product_file`
--

INSERT INTO `gdn_product_file` (`id_product`, `id_file`) VALUES
(6, 49);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_product_type`
--

CREATE TABLE IF NOT EXISTS `gdn_product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `gdn_product_type`
--

INSERT INTO `gdn_product_type` (`id`, `name`, `unit`) VALUES
(1, 'chaussure', 'paire'),
(2, 'pantalon', 'piÃ¨ce'),
(3, 'tÃ©lÃ©phone', 'piÃ¨ce'),
(5, 'huile moteur', 'litre'),
(7, 'ordinateur', 'piece');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_reservation`
--

CREATE TABLE IF NOT EXISTS `gdn_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passenger_id` int(11) DEFAULT NULL,
  `board_id` int(11) DEFAULT NULL,
  `seat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `payment` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_828A2064502E565` (`passenger_id`),
  KEY `IDX_828A206E7EC5785` (`board_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `gdn_reservation`
--

INSERT INTO `gdn_reservation` (`id`, `passenger_id`, `board_id`, `seat`, `created`, `status`, `payment`) VALUES
(1, 3, 3, '3', '2014-01-13 12:52:12', 1, 20000),
(2, 4, 3, '5', '2014-01-13 12:55:58', 0, 20000),
(3, 5, 7, '5', '2014-01-15 11:45:33', 0, 15000),
(4, 7, 3, '7', '2014-01-15 23:39:54', 0, 15500),
(5, 8, 3, '9', '2014-01-16 00:01:30', 0, 20000),
(6, 14, 3, '2', '2014-01-16 10:05:07', 0, 20000),
(7, 15, 3, '8', '2014-01-16 11:24:29', 0, 20000),
(15, 23, 3, '14', '2014-01-16 17:53:06', 0, 20000),
(16, 24, 3, '12', '2014-01-16 17:55:06', 0, 20000),
(17, 25, 3, '11', '2014-01-16 18:22:51', 1, 20000),
(18, 26, 3, '13', '2014-01-16 18:24:08', 1, 20000),
(19, 27, 3, '4', '2014-01-16 18:26:03', 0, 15000),
(20, 28, 1, '1', '2014-01-16 18:28:32', 0, 15000),
(21, 29, 1, '2', '2014-01-16 18:29:56', 0, 15500),
(22, 30, 1, '3', '2014-01-16 18:36:55', 0, 10000),
(23, 31, 1, '4', '2014-01-16 18:39:06', 0, 12000),
(24, 32, 1, '5', '2014-01-16 18:43:15', 0, 20000),
(25, 33, 1, '6', '2014-01-17 07:22:15', 0, 15000),
(26, 34, 1, '14', '2014-01-17 07:23:39', 1, 20000),
(27, 35, 1, '7', '2014-01-17 07:53:04', 0, 12500),
(28, 36, 1, '7', '2014-01-17 07:53:06', 0, 12500),
(29, 37, 2, '1', '2014-01-19 14:30:42', 0, 15000),
(30, 38, 5, '1', '2014-01-19 18:47:59', 0, 20000),
(31, 39, 5, '2', '2014-01-19 18:51:23', 0, 20000),
(32, 40, 8, '1', '2014-01-20 11:47:39', 0, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_reservation_board`
--

CREATE TABLE IF NOT EXISTS `gdn_reservation_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT NULL,
  `departure_time` datetime NOT NULL,
  `line_id` int(11) DEFAULT NULL,
  `cooperative_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_65453E59C3C6F69F` (`car_id`),
  KEY `IDX_65453E594D7B7542` (`line_id`),
  KEY `IDX_65453E598D0C5D40` (`cooperative_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gdn_reservation_board`
--

INSERT INTO `gdn_reservation_board` (`id`, `car_id`, `departure_time`, `line_id`, `cooperative_id`) VALUES
(1, 1, '2014-01-12 06:00:00', 1, 1),
(2, 5, '2014-01-12 08:29:00', 1, 1),
(3, 1, '2014-01-13 18:37:00', 1, 1),
(4, 3, '2014-01-12 06:00:00', 1, 2),
(5, 1, '2014-01-15 07:00:00', 1, 1),
(6, 3, '2014-01-15 07:00:00', 1, 2),
(7, 3, '2014-02-10 09:25:00', 1, 2),
(8, 9, '2014-01-30 18:30:00', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_shop`
--

CREATE TABLE IF NOT EXISTS `gdn_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ident` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `is_deleted` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C566BBB37E3C61F9` (`owner_id`),
  KEY `IDX_C566BBB3922726E9` (`cover_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `gdn_shop`
--

INSERT INTO `gdn_shop` (`id`, `owner_id`, `name`, `ident`, `description`, `is_deleted`, `cover_id`) VALUES
(1, 1, 'Avance center', 'avance-center', 'Magasin d''habillement, de mode et de parfum. Tous nos produits sont importÃ©s de Bangkok Thailand.', 0, NULL),
(2, 3, 'Avance center', 'avance-center', NULL, 1, NULL),
(3, 1, 'Japan actuel', 'japan-actuel', NULL, 0, NULL),
(4, 1, 'Gasy Immo', 'gasy-immo', 'Location et vente de terrain et maison', 0, NULL),
(5, 1, 'Jejoo', 'jejoo', 'Boutique d''habillement et de maroquinerie. ', 0, NULL),
(6, 3, 'Ramji Transport', 'ramji-transport', 'Transport de marchandise', 0, NULL),
(7, 1, 'Charcuterie Lewis SARL', 'charcuterie-lewis-sarl', 'Boucherie et charcuterie', 1, NULL),
(8, 1, 'Lewis', 'lewis', 'Charcuterie et boucherie', 1, NULL),
(9, 1, 'Lewis', 'lewis', 'Charcuterie et boucherie', 0, 55);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_shop_category`
--

CREATE TABLE IF NOT EXISTS `gdn_shop_category` (
  `shop_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`category_id`),
  KEY `IDX_7BBA9CD04D16C4DD` (`shop_id`),
  KEY `IDX_7BBA9CD012469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_shop_category`
--

INSERT INTO `gdn_shop_category` (`shop_id`, `category_id`) VALUES
(1, 9),
(2, 7),
(3, 5),
(3, 7),
(4, 8),
(5, 9),
(6, 5),
(7, 10),
(8, 10),
(9, 10),
(9, 12);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_shop_city`
--

CREATE TABLE IF NOT EXISTS `gdn_shop_city` (
  `shop_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`city_id`),
  KEY `IDX_17BD5DE94D16C4DD` (`shop_id`),
  KEY `IDX_17BD5DE98BAC62AF` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_shop_city`
--

INSERT INTO `gdn_shop_city` (`shop_id`, `city_id`) VALUES
(1, 2628),
(2, 4252),
(3, 2227),
(4, 4252),
(5, 6268),
(6, 16254),
(7, 3853),
(8, 3853),
(9, 3853);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_shop_contact`
--

CREATE TABLE IF NOT EXISTS `gdn_shop_contact` (
  `shop_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`contact_id`),
  UNIQUE KEY `UNIQ_BD7946B7E7A1254A` (`contact_id`),
  KEY `IDX_BD7946B74D16C4DD` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gdn_shop_contact`
--

INSERT INTO `gdn_shop_contact` (`shop_id`, `contact_id`) VALUES
(1, 3),
(2, 4),
(3, 5),
(4, 9),
(5, 10),
(6, 11),
(7, 14),
(8, 16),
(9, 17),
(1, 175);

-- --------------------------------------------------------

--
-- Table structure for table `gdn_tag`
--

CREATE TABLE IF NOT EXISTS `gdn_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `gdn_tag`
--

INSERT INTO `gdn_tag` (`id`, `title`) VALUES
(1, 'kolotsaina'),
(2, 'mainty'),
(3, 'fotsy'),
(4, 'mirary'),
(5, 'taombaovao'),
(6, 'andro'),
(7, 'ratsy'),
(8, 'andro'),
(9, 'cyclone'),
(10, 'fanjanahan-tany'),
(11, 'frantsay'),
(12, 'alatsinainy'),
(13, 'grenady'),
(14, 'baomba'),
(15, 'frantsay'),
(16, 'kabary'),
(17, 'ciment'),
(18, 'defense'),
(19, 'botika'),
(20, 'film'),
(21, 'fialamboly');

-- --------------------------------------------------------

--
-- Table structure for table `gdn_zone`
--

CREATE TABLE IF NOT EXISTS `gdn_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gdn_zone`
--

INSERT INTO `gdn_zone` (`id`, `name`) VALUES
(1, 'Est'),
(2, 'Ouest'),
(3, 'Nord'),
(5, 'Sud'),
(6, 'Sud-Ouest');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `roleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6AB8C2FD88` (`roleId`),
  KEY `IDX_57698A6A727ACA70` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `parent_id`, `roleId`) VALUES
(1, NULL, 'guest'),
(2, 1, 'user'),
(3, 2, 'moderator'),
(4, 3, 'admin'),
(5, 2, 'shop-owner'),
(6, 2, 'cooperative-admin'),
(7, 2, 'cooperative-teller');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displayName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`),
  UNIQUE KEY `UNIQ_1483A5E9F85E0677` (`username`),
  KEY `IDX_1483A5E993CB796C` (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `displayName`, `password`, `firstname`, `lastname`, `dateofbirth`, `sex`, `state`, `file_id`) VALUES
(1, 'kotokillah', 'kotokillah@yahoo.fr', NULL, '$2a$14$8CScFbrnB2ZuVnXt1QGu6OgZRLMkyPingo8ac3Y.yfLY3SCzG/D6O', 'Fano', 'Raiza', '1984-04-16', 0, NULL, 104),
(2, NULL, 'blabla@mail.com', NULL, '$2a$14$mawwu2rbShgSohu3ucgpVeKZ2DnWW6u4x6041GNy5Fz/i9ENI/hdu', 'Blabla ', 'Be', '2013-11-13', 0, NULL, NULL),
(3, NULL, 'misa.belo@gmail.com', NULL, '$2a$14$AnL12uq6IPI6IhyxhyZDieZLEVJoq.Qf4.0deBKTRUYCJJ6vXBXCi', 'misa', 'belo', '1990-02-13', 0, NULL, NULL),
(4, NULL, 'joro@gmail.com', NULL, '$2a$14$KZ8y/qDtJH/yTI7iBem1P.Uvjf4fxKXsyz5WiVg3Pqpcea7llDQ6i', 'Jorobe', 'Petit', '1995-06-06', 0, NULL, NULL),
(9, '', 'tsmakalagy@yahoo.fr', 'Tsmakalagy Kotokillah', '$2a$14$0T9rvUkN3DGWuTrZNpo3Ouy4fbezM38pE44qByPTRmXoUuQKWa0Py', 'Mathieu', 'Jean Marc', '1994-06-08', 0, NULL, NULL),
(16, 'patrick ramiaramanana', 'pat@trivia.com', NULL, '$2a$14$OPy3A4k2VPwYBmiINeTWlOwTtn7Ag0dLjXaPWcd7mLDrffhuZU0JO', 'Patrick', 'Trivia', '1994-06-16', 0, NULL, 96),
(17, 'raiza123', 'rhfano@gmail.com', 'Raiza Kotokillah', '$2a$14$IO2uo.xlJuf.Kwj30k99IuPOI3qoP0EWdUvr1f0QYE89zeH/KT1P2', 'Raiza', 'Kotokillah', '1984-04-17', 0, NULL, NULL),
(18, 'travis', 'travis@ymail.com', NULL, '$2a$14$JEPiVU3.kKSCs9tbxEoQt.5BVrr68FMw.4QdhSms9vLcPS.DoCHKe', 'Treyvon', 'Martin', '2014-01-09', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_51498A8EA76ED395` (`user_id`),
  KEY `IDX_51498A8ED60322AC` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 4),
(2, 2),
(3, 5),
(4, 6),
(9, 7),
(16, 6),
(17, 2),
(18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_provider`
--

CREATE TABLE IF NOT EXISTS `user_provider` (
  `user_id` int(11) NOT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`provider_id`),
  UNIQUE KEY `provider_id` (`provider_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_provider`
--

INSERT INTO `user_provider` (`user_id`, `provider_id`, `provider`) VALUES
(9, '1189299698', 'facebook'),
(17, '1651406609', 'facebook');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `roleId`, `is_default`, `parent_id`) VALUES
(1, 'guest', 1, NULL),
(2, 'user', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_linker`
--

CREATE TABLE IF NOT EXISTS `user_role_linker` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_linker`
--

INSERT INTO `user_role_linker` (`user_id`, `role_id`) VALUES
(1, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gdn_bid`
--
ALTER TABLE `gdn_bid`
  ADD CONSTRAINT `FK_40C75C60A67B1E36` FOREIGN KEY (`id_city`) REFERENCES `gdn_mada_cities` (`id`),
  ADD CONSTRAINT `FK_40C75C60D1AA708F` FOREIGN KEY (`id_post`) REFERENCES `gdn_post` (`id_post`);

--
-- Constraints for table `gdn_car`
--
ALTER TABLE `gdn_car`
  ADD CONSTRAINT `FK_7D08090E7975B7E7` FOREIGN KEY (`model_id`) REFERENCES `gdn_car_model` (`id`),
  ADD CONSTRAINT `FK_7D08090E8D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`),
  ADD CONSTRAINT `FK_7D08090EC3423909` FOREIGN KEY (`driver_id`) REFERENCES `gdn_car_driver` (`id`);

--
-- Constraints for table `gdn_car_driver`
--
ALTER TABLE `gdn_car_driver`
  ADD CONSTRAINT `FK_3640824F8D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`);

--
-- Constraints for table `gdn_car_file`
--
ALTER TABLE `gdn_car_file`
  ADD CONSTRAINT `FK_8700E1E393CB796C` FOREIGN KEY (`file_id`) REFERENCES `gdn_file` (`id_file`),
  ADD CONSTRAINT `FK_8700E1E3C3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `gdn_car` (`id`);

--
-- Constraints for table `gdn_car_model`
--
ALTER TABLE `gdn_car_model`
  ADD CONSTRAINT `FK_F32A4EA8CFBF73EB` FOREIGN KEY (`make_id`) REFERENCES `gdn_car_make` (`id`);

--
-- Constraints for table `gdn_category`
--
ALTER TABLE `gdn_category`
  ADD CONSTRAINT `FK_C6B9DA9E70DF7698` FOREIGN KEY (`id_parent_category`) REFERENCES `gdn_category` (`id_category`);

--
-- Constraints for table `gdn_comment`
--
ALTER TABLE `gdn_comment`
  ADD CONSTRAINT `FK_DBDBA0134B89032C` FOREIGN KEY (`post_id`) REFERENCES `gdn_post` (`id_post`),
  ADD CONSTRAINT `FK_DBDBA013A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gdn_contact`
--
ALTER TABLE `gdn_contact`
  ADD CONSTRAINT `FK_3CD14478CDE5729` FOREIGN KEY (`type`) REFERENCES `gdn_contact_type` (`id_contact_type`);

--
-- Constraints for table `gdn_cooperative_admin`
--
ALTER TABLE `gdn_cooperative_admin`
  ADD CONSTRAINT `FK_995E71D7642B8210` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_995E71D78D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`);

--
-- Constraints for table `gdn_cooperative_contact`
--
ALTER TABLE `gdn_cooperative_contact`
  ADD CONSTRAINT `FK_A2CD47D78D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`),
  ADD CONSTRAINT `FK_A2CD47D7E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `gdn_contact` (`id_contact`);

--
-- Constraints for table `gdn_cooperative_line`
--
ALTER TABLE `gdn_cooperative_line`
  ADD CONSTRAINT `FK_8063492D4D7B7542` FOREIGN KEY (`line_id`) REFERENCES `gdn_line` (`id`),
  ADD CONSTRAINT `FK_8063492D8D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`);

--
-- Constraints for table `gdn_cooperative_line_contact`
--
ALTER TABLE `gdn_cooperative_line_contact`
  ADD CONSTRAINT `FK_B44C8D0E591A36A1` FOREIGN KEY (`line_contact_id`) REFERENCES `gdn_line_contact` (`id`),
  ADD CONSTRAINT `FK_B44C8D0EE7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `gdn_contact` (`id_contact`);

--
-- Constraints for table `gdn_cooperative_teller`
--
ALTER TABLE `gdn_cooperative_teller`
  ADD CONSTRAINT `FK_47DF20468D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`),
  ADD CONSTRAINT `FK_47DF2046E9894D10` FOREIGN KEY (`teller_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gdn_cooperative_zone`
--
ALTER TABLE `gdn_cooperative_zone`
  ADD CONSTRAINT `FK_F19C3DDC8D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`),
  ADD CONSTRAINT `FK_F19C3DDC9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `gdn_zone` (`id`);

--
-- Constraints for table `gdn_driver_contact`
--
ALTER TABLE `gdn_driver_contact`
  ADD CONSTRAINT `FK_FAE7DAA4C3423909` FOREIGN KEY (`driver_id`) REFERENCES `gdn_car_driver` (`id`),
  ADD CONSTRAINT `FK_FAE7DAA4E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `gdn_contact` (`id_contact`);

--
-- Constraints for table `gdn_feed`
--
ALTER TABLE `gdn_feed`
  ADD CONSTRAINT `FK_4A4CB3BA4B89032C` FOREIGN KEY (`post_id`) REFERENCES `gdn_post` (`id_post`);

--
-- Constraints for table `gdn_image`
--
ALTER TABLE `gdn_image`
  ADD CONSTRAINT `FK_AFE4285A93CB796C` FOREIGN KEY (`file_id`) REFERENCES `gdn_file` (`id_file`);

--
-- Constraints for table `gdn_line`
--
ALTER TABLE `gdn_line`
  ADD CONSTRAINT `FK_B81843E745E9C671` FOREIGN KEY (`departure`) REFERENCES `gdn_mada_cities` (`id`),
  ADD CONSTRAINT `FK_B81843E75BE55CB4` FOREIGN KEY (`arrival`) REFERENCES `gdn_mada_cities` (`id`),
  ADD CONSTRAINT `FK_B81843E79F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `gdn_zone` (`id`);

--
-- Constraints for table `gdn_line_car`
--
ALTER TABLE `gdn_line_car`
  ADD CONSTRAINT `FK_448316984D7B7542` FOREIGN KEY (`line_id`) REFERENCES `gdn_line` (`id`),
  ADD CONSTRAINT `FK_44831698C3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `gdn_car` (`id`);

--
-- Constraints for table `gdn_line_contact`
--
ALTER TABLE `gdn_line_contact`
  ADD CONSTRAINT `FK_BEE87FA4D7B7542` FOREIGN KEY (`line_id`) REFERENCES `gdn_line` (`id`),
  ADD CONSTRAINT `FK_BEE87FA8D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`);

--
-- Constraints for table `gdn_media`
--
ALTER TABLE `gdn_media`
  ADD CONSTRAINT `FK_F58D09D1AA708F` FOREIGN KEY (`id_post`) REFERENCES `gdn_post` (`id_post`);

--
-- Constraints for table `gdn_passenger_contact`
--
ALTER TABLE `gdn_passenger_contact`
  ADD CONSTRAINT `FK_DAF269814502E565` FOREIGN KEY (`passenger_id`) REFERENCES `gdn_passenger` (`id`),
  ADD CONSTRAINT `FK_DAF26981E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `gdn_contact` (`id_contact`);

--
-- Constraints for table `gdn_post`
--
ALTER TABLE `gdn_post`
  ADD CONSTRAINT `FK_33869B9C6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `gdn_post_category`
--
ALTER TABLE `gdn_post_category`
  ADD CONSTRAINT `FK_1FEFEFE712469DE2` FOREIGN KEY (`category_id`) REFERENCES `gdn_category` (`id_category`),
  ADD CONSTRAINT `FK_1FEFEFE74B89032C` FOREIGN KEY (`post_id`) REFERENCES `gdn_post` (`id_post`);

--
-- Constraints for table `gdn_post_contact`
--
ALTER TABLE `gdn_post_contact`
  ADD CONSTRAINT `FK_83A2B1AE4B89032C` FOREIGN KEY (`post_id`) REFERENCES `gdn_post` (`id_post`),
  ADD CONSTRAINT `FK_83A2B1AEE7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `gdn_contact` (`id_contact`);

--
-- Constraints for table `gdn_post_file`
--
ALTER TABLE `gdn_post_file`
  ADD CONSTRAINT `FK_BEDEE8BD7BF2A12` FOREIGN KEY (`id_file`) REFERENCES `gdn_file` (`id_file`),
  ADD CONSTRAINT `FK_BEDEE8BDD1AA708F` FOREIGN KEY (`id_post`) REFERENCES `gdn_post` (`id_post`);

--
-- Constraints for table `gdn_post_tag`
--
ALTER TABLE `gdn_post_tag`
  ADD CONSTRAINT `FK_9A3BF9AF4B89032C` FOREIGN KEY (`post_id`) REFERENCES `gdn_post` (`id_post`),
  ADD CONSTRAINT `FK_9A3BF9AFBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `gdn_tag` (`id`);

--
-- Constraints for table `gdn_product`
--
ALTER TABLE `gdn_product`
  ADD CONSTRAINT `FK_9CE5F6D24D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `gdn_shop` (`id`),
  ADD CONSTRAINT `FK_9CE5F6D2C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `gdn_product_type` (`id`);

--
-- Constraints for table `gdn_producttype_attribute`
--
ALTER TABLE `gdn_producttype_attribute`
  ADD CONSTRAINT `FK_B2EADF1C5E032AB4` FOREIGN KEY (`producttype_id`) REFERENCES `gdn_product_type` (`id`),
  ADD CONSTRAINT `FK_B2EADF1CB6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `gdn_attribute` (`id`);

--
-- Constraints for table `gdn_product_attribute`
--
ALTER TABLE `gdn_product_attribute`
  ADD CONSTRAINT `FK_EAB69CCF4584665A` FOREIGN KEY (`product_id`) REFERENCES `gdn_product` (`id`),
  ADD CONSTRAINT `FK_EAB69CCFB6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `gdn_attribute` (`id`);

--
-- Constraints for table `gdn_product_file`
--
ALTER TABLE `gdn_product_file`
  ADD CONSTRAINT `FK_F35FF4147BF2A12` FOREIGN KEY (`id_file`) REFERENCES `gdn_file` (`id_file`),
  ADD CONSTRAINT `FK_F35FF414DD7ADDD` FOREIGN KEY (`id_product`) REFERENCES `gdn_product` (`id`);

--
-- Constraints for table `gdn_reservation`
--
ALTER TABLE `gdn_reservation`
  ADD CONSTRAINT `FK_828A2064502E565` FOREIGN KEY (`passenger_id`) REFERENCES `gdn_passenger` (`id`),
  ADD CONSTRAINT `FK_828A206E7EC5785` FOREIGN KEY (`board_id`) REFERENCES `gdn_reservation_board` (`id`);

--
-- Constraints for table `gdn_reservation_board`
--
ALTER TABLE `gdn_reservation_board`
  ADD CONSTRAINT `FK_65453E594D7B7542` FOREIGN KEY (`line_id`) REFERENCES `gdn_line` (`id`),
  ADD CONSTRAINT `FK_65453E598D0C5D40` FOREIGN KEY (`cooperative_id`) REFERENCES `gdn_cooperative` (`id`),
  ADD CONSTRAINT `FK_65453E59C3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `gdn_car` (`id`);

--
-- Constraints for table `gdn_shop`
--
ALTER TABLE `gdn_shop`
  ADD CONSTRAINT `FK_C566BBB37E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_C566BBB3922726E9` FOREIGN KEY (`cover_id`) REFERENCES `gdn_file` (`id_file`);

--
-- Constraints for table `gdn_shop_category`
--
ALTER TABLE `gdn_shop_category`
  ADD CONSTRAINT `FK_7BBA9CD012469DE2` FOREIGN KEY (`category_id`) REFERENCES `gdn_category` (`id_category`),
  ADD CONSTRAINT `FK_7BBA9CD04D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `gdn_shop` (`id`);

--
-- Constraints for table `gdn_shop_city`
--
ALTER TABLE `gdn_shop_city`
  ADD CONSTRAINT `FK_17BD5DE94D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `gdn_shop` (`id`),
  ADD CONSTRAINT `FK_17BD5DE98BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `gdn_mada_cities` (`id`);

--
-- Constraints for table `gdn_shop_contact`
--
ALTER TABLE `gdn_shop_contact`
  ADD CONSTRAINT `FK_BD7946B74D16C4DD` FOREIGN KEY (`shop_id`) REFERENCES `gdn_shop` (`id`),
  ADD CONSTRAINT `FK_BD7946B7E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `gdn_contact` (`id_contact`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FK_57698A6A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_1483A5E993CB796C` FOREIGN KEY (`file_id`) REFERENCES `gdn_file` (`id_file`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK_51498A8EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_51498A8ED60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `user_provider`
--
ALTER TABLE `user_provider`
  ADD CONSTRAINT `user_provider_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
