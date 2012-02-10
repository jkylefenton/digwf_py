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
-- Table structure for table `digwf_workflow_step`
--

CREATE TABLE IF NOT EXISTS `digwf_workflow_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `digwf_workflow_step`
--

INSERT INTO `digwf_workflow_step` (`id`, `code`, `description`) VALUES
(1, 'PREP', 'Preparing to Digitize'),
(2, 'CAPTURE', 'Capture (Scan or Photograph)'),
(3, 'EDIT', 'Editing Digital Images'),
(4, 'OCR', 'OCR (Uncorrected) typeset text'),
(5, 'COMPLETE', 'Finished Digitizing'),
(6, 'METADATA', 'Metadata Review'),
(7, 'PENDING', 'Item Pending outside action'),
(8, 'BACKUPDDC', 'Just-In-Case backup of outputs'),
(9, 'STITCHING', 'Stitching 2+ images together');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
