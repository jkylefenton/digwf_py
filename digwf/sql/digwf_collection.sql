-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2012 at 08:36 AM
-- Server version: 5.5.19
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
-- Table structure for table `digwf_collection`
--

CREATE TABLE IF NOT EXISTS `digwf_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `digwf_collection`
--

INSERT INTO `digwf_collection` (`id`, `name`) VALUES
(1, 'Methodism'),
(2, 'Yellowbacks'),
(4, 'MARBL'),
(5, 'Theology Reference'),
(7, 'General'),
(8, 'Brittle Books (deprecated)'),
(10, 'Regimental histories'),
(11, 'Atlanta City Directories'),
(12, 'Methodist Conference Minutes'),
(13, 'Georgia State House Journals'),
(14, 'Civil War Literature'),
(15, 'Georgia State Senate Journals'),
(16, 'Emory Yearbooks'),
(17, 'Emory Publications'),
(18, 'African American Literature'),
(19, 'Early Northern European Books'),
(20, 'Triple Deckers'),
(21, 'Views of Rome'),
(22, 'Baedekers');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
