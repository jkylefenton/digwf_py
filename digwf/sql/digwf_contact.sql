-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2012 at 08:11 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `digwf_py`
--

-- --------------------------------------------------------

--
-- Table structure for table `digwf_contact`
--

CREATE TABLE IF NOT EXISTS `digwf_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `person` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `address1` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `address2` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `state` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `zip` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(75) COLLATE utf8_swedish_ci NOT NULL,
  `contact_type` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `digwf_contact`
--

INSERT INTO `digwf_contact` (`id`, `company`, `person`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `contact_type`) VALUES
(1, '', 'MARBL', '', '', '', '', NULL, NULL, '', 'customer'),
(2, '', 'DiSC', '', '', '', '', NULL, NULL, '', 'customer'),
(3, '', 'Center for the Study of Law and Religion', '', '', '', '', NULL, NULL, '', 'customer'),
(4, '', 'Geospatial / Data Center', '', '', '', '', NULL, NULL, '', 'customer'),
(5, '', 'Pitts Theology Library', '', '', '', '', NULL, NULL, '', 'customer'),
(6, '', 'Dept. of Surgery', '', '', '', '', NULL, NULL, '', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
