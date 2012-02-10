-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2012 at 08:12 AM
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
-- Table structure for table `digwf_resource_type`
--

CREATE TABLE IF NOT EXISTS `digwf_resource_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `description` longtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `digwf_resource_type`
--

INSERT INTO `digwf_resource_type` (`id`, `type`, `description`) VALUES
(1, 'cartographic', 'A cartographic (map) resource.  Benefits from supplemental geospatial metadata'),
(2, 'mixed material', ''),
(3, 'moving image', 'A series of visual representations imparting an impression of motion when shown in succession.  Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation. Instances of the type Moving Image must also be describable as instances of the broader type Image.'),
(4, 'still image', ''),
(5, 'text (non-book)', 'Text based resource, whether handwritten or typeset, that is not a publication.  May have a binding, as with scrapbooks.'),
(6, 'monograph', 'A non-serial publication complete in one volume (book) or a finite number of volumes. Thus it differs from a serial publication such as a magazine, journal, or newspaper.'),
(7, 'notated music', ''),
(8, 'sound recording', ''),
(9, '3-D object', ''),
(10, 'slide (film)', ''),
(11, 'microform', 'Microfilm or Microfiche'),
(12, 'serial', 'A serial publication');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
