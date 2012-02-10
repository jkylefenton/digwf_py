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
-- Table structure for table `digwf_item`
--

CREATE TABLE IF NOT EXISTS `digwf_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `oclc` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `lccn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `isbn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `issn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `barcode` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `enumcron` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `base_path` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `pdf_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `ocr_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `txt_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `pos_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `mrc_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jp2_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `mets_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `alto_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `pdfa_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `mods_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `dc_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `images_captured_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `images_master_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `images_presentation_regex` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `pid` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `images_captured_count` int(11) NOT NULL,
  `foldout_count` int(11) DEFAULT NULL,
  `has_foldouts` tinyint(1) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `rush` tinyint(1) NOT NULL,
  `notification_email` varchar(75) COLLATE utf8_swedish_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `is_brittle` tinyint(1) NOT NULL,
  `is_digitized` tinyint(1) NOT NULL,
  `is_cataloged` tinyint(1) NOT NULL,
  `is_paginated` tinyint(1) NOT NULL,
  `has_binding` tinyint(1) NOT NULL,
  `is_serial` tinyint(1) NOT NULL,
  `to_archive` tinyint(1) NOT NULL,
  `is_resource_type_id` int(11) NOT NULL,
  `pub_state_id` int(11) NOT NULL,
  `pub_country` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `pub_year` date NOT NULL,
  `has_typeset_text` tinyint(1) NOT NULL,
  `note` longtext COLLATE utf8_swedish_ci NOT NULL,
  `rejection_code_id` int(11) DEFAULT NULL,
  `workflow_step_id` int(11) NOT NULL,
  `batch_order_id` int(11) NOT NULL,
  `has_rights_id` int(11) NOT NULL,
  `user` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `dpi` int(11) DEFAULT NULL,
  `time_spent` time NOT NULL,
  `bit_depth` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_contributor` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_coverage` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_creator` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_date` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_dateCopyrighted` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_description` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_format` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_identifier` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_language` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_publisher` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_isPartOf` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_hasPart` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_isVersionOf` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_accessRights` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_rights` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_source` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_subject` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_title` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `dcmi_type` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_item_fabadb12` (`is_resource_type_id`),
  KEY `digwf_item_59f93f8e` (`pub_state_id`),
  KEY `digwf_item_aa87ecd5` (`rejection_code_id`),
  KEY `digwf_item_5d02db27` (`workflow_step_id`),
  KEY `digwf_item_346109ee` (`batch_order_id`),
  KEY `digwf_item_b9399c7c` (`has_rights_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `digwf_item`
--

INSERT INTO `digwf_item` (`id`, `title`, `oclc`, `lccn`, `isbn`, `issn`, `barcode`, `enumcron`, `base_path`, `pdf_regex`, `ocr_regex`, `txt_regex`, `pos_regex`, `mrc_regex`, `jp2_regex`, `mets_regex`, `alto_regex`, `pdfa_regex`, `mods_regex`, `dc_regex`, `images_captured_regex`, `images_master_regex`, `images_presentation_regex`, `pid`, `images_captured_count`, `foldout_count`, `has_foldouts`, `created_at`, `updated_at`, `rush`, `notification_email`, `due_date`, `is_brittle`, `is_digitized`, `is_cataloged`, `is_paginated`, `has_binding`, `is_serial`, `to_archive`, `is_resource_type_id`, `pub_state_id`, `pub_country`, `pub_year`, `has_typeset_text`, `note`, `rejection_code_id`, `workflow_step_id`, `batch_order_id`, `has_rights_id`, `user`, `dpi`, `time_spent`, `bit_depth`, `dcmi_contributor`, `dcmi_coverage`, `dcmi_creator`, `dcmi_date`, `dcmi_dateCopyrighted`, `dcmi_description`, `dcmi_format`, `dcmi_identifier`, `dcmi_language`, `dcmi_publisher`, `dcmi_isPartOf`, `dcmi_hasPart`, `dcmi_isVersionOf`, `dcmi_accessRights`, `dcmi_rights`, `dcmi_source`, `dcmi_subject`, `dcmi_title`, `dcmi_type`) VALUES
(1, 'Soviet Heirs in American Courts', '', '', '', '', '', '', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '', 33, NULL, 0, '2012-01-22', '2012-01-22', 0, '', '2012-01-26', 0, 0, 0, 1, 0, 0, 1, 5, 2, 'US', '1963-01-01', 1, '', NULL, 1, 1, 2, 'bwoolge', NULL, '06:00:00', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `digwf_item`
--
ALTER TABLE `digwf_item`
  ADD CONSTRAINT `batch_order_id_refs_id_b8a8bb84` FOREIGN KEY (`batch_order_id`) REFERENCES `digwf_batch_order` (`id`),
  ADD CONSTRAINT `has_rights_id_refs_id_d52c4be9` FOREIGN KEY (`has_rights_id`) REFERENCES `digwf_rights` (`id`),
  ADD CONSTRAINT `is_resource_type_id_refs_id_c953ba5c` FOREIGN KEY (`is_resource_type_id`) REFERENCES `digwf_resource_type` (`id`),
  ADD CONSTRAINT `pub_state_id_refs_id_ac743181` FOREIGN KEY (`pub_state_id`) REFERENCES `digwf_publication_state` (`id`),
  ADD CONSTRAINT `rejection_code_id_refs_id_f972428b` FOREIGN KEY (`rejection_code_id`) REFERENCES `digwf_rejection_code` (`id`),
  ADD CONSTRAINT `workflow_step_id_refs_id_e9a9a275` FOREIGN KEY (`workflow_step_id`) REFERENCES `digwf_workflow_step` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
