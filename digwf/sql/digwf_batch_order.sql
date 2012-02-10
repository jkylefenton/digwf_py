-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2012 at 10:05 AM
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
-- Table structure for table `digwf_batch_order`
--

CREATE TABLE IF NOT EXISTS `digwf_batch_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `due_date` date NOT NULL,
  `rush` tinyint(1) NOT NULL,
  `delivery_method` varchar(25) NOT NULL,
  `customer_notes` longtext NOT NULL,
  `processing_notes` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_batch_order_f05b416b` (`customer_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `digwf_batch_order`
--

INSERT INTO `digwf_batch_order` (`id`, `customer_id_id`, `description`, `created_at`, `due_date`, `rush`, `delivery_method`, `customer_notes`, `processing_notes`) VALUES
(1, 3, 'Berman papers, last box', '2012-01-20', '2012-01-20', 0, 'Hard Disk', '', ''),
(2, 2, 'Views of Rome batch 1', '2012-01-20', '2012-03-31', 0, 'YouSendIt', '', 'many folio volumes'),
(3, 6, 'Departmental library materials', '2012-01-20', '2012-06-30', 0, 'Hard Disk', '', ''),
(4, 1, 'Triple Deckers, 2nd truck', '2012-01-20', '2012-01-31', 0, 'YouSendIt', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `digwf_batch_order`
--
ALTER TABLE `digwf_batch_order`
  ADD CONSTRAINT `customer_id_id_refs_id_10f89ab` FOREIGN KEY (`customer_id_id`) REFERENCES `digwf_customer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
