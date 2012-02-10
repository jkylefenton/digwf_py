-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2012 at 02:46 PM
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
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_message`
--

CREATE TABLE IF NOT EXISTS `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=109 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add message', 4, 'add_message'),
(11, 'Can change message', 4, 'change_message'),
(12, 'Can delete message', 4, 'delete_message'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add permission', 9, 'add_permission'),
(26, 'Can change permission', 9, 'change_permission'),
(27, 'Can delete permission', 9, 'delete_permission'),
(28, 'Can add object permission', 10, 'add_objectpermission'),
(29, 'Can change object permission', 10, 'change_objectpermission'),
(30, 'Can delete object permission', 10, 'delete_objectpermission'),
(31, 'Can add object permission inheritance block', 11, 'add_objectpermissioninheritanceblock'),
(32, 'Can change object permission inheritance block', 11, 'change_objectpermissioninheritanceblock'),
(33, 'Can delete object permission inheritance block', 11, 'delete_objectpermissioninheritanceblock'),
(34, 'Can add role', 12, 'add_role'),
(35, 'Can change role', 12, 'change_role'),
(36, 'Can delete role', 12, 'delete_role'),
(37, 'Can add principal role relation', 13, 'add_principalrolerelation'),
(38, 'Can change principal role relation', 13, 'change_principalrolerelation'),
(39, 'Can delete principal role relation', 13, 'delete_principalrolerelation'),
(40, 'Can add workflow', 14, 'add_workflow'),
(41, 'Can change workflow', 14, 'change_workflow'),
(42, 'Can delete workflow', 14, 'delete_workflow'),
(43, 'Can add state', 15, 'add_state'),
(44, 'Can change state', 15, 'change_state'),
(45, 'Can delete state', 15, 'delete_state'),
(46, 'Can add transition', 16, 'add_transition'),
(47, 'Can change transition', 16, 'change_transition'),
(48, 'Can delete transition', 16, 'delete_transition'),
(49, 'Can add state object relation', 17, 'add_stateobjectrelation'),
(50, 'Can change state object relation', 17, 'change_stateobjectrelation'),
(51, 'Can delete state object relation', 17, 'delete_stateobjectrelation'),
(52, 'Can add workflow object relation', 18, 'add_workflowobjectrelation'),
(53, 'Can change workflow object relation', 18, 'change_workflowobjectrelation'),
(54, 'Can delete workflow object relation', 18, 'delete_workflowobjectrelation'),
(55, 'Can add workflow model relation', 19, 'add_workflowmodelrelation'),
(56, 'Can change workflow model relation', 19, 'change_workflowmodelrelation'),
(57, 'Can delete workflow model relation', 19, 'delete_workflowmodelrelation'),
(58, 'Can add workflow permission relation', 20, 'add_workflowpermissionrelation'),
(59, 'Can change workflow permission relation', 20, 'change_workflowpermissionrelation'),
(60, 'Can delete workflow permission relation', 20, 'delete_workflowpermissionrelation'),
(61, 'Can add state inheritance block', 21, 'add_stateinheritanceblock'),
(62, 'Can change state inheritance block', 21, 'change_stateinheritanceblock'),
(63, 'Can delete state inheritance block', 21, 'delete_stateinheritanceblock'),
(64, 'Can add state permission relation', 22, 'add_statepermissionrelation'),
(65, 'Can change state permission relation', 22, 'change_statepermissionrelation'),
(66, 'Can delete state permission relation', 22, 'delete_statepermissionrelation'),
(67, 'Can add collection', 23, 'add_collection'),
(68, 'Can change collection', 23, 'change_collection'),
(69, 'Can delete collection', 23, 'delete_collection'),
(70, 'Can add publication_ state', 24, 'add_publication_state'),
(71, 'Can change publication_ state', 24, 'change_publication_state'),
(72, 'Can delete publication_ state', 24, 'delete_publication_state'),
(73, 'Can add rejection_ code', 25, 'add_rejection_code'),
(74, 'Can change rejection_ code', 25, 'change_rejection_code'),
(75, 'Can delete rejection_ code', 25, 'delete_rejection_code'),
(76, 'Can add workflow_ step', 26, 'add_workflow_step'),
(77, 'Can change workflow_ step', 26, 'change_workflow_step'),
(78, 'Can delete workflow_ step', 26, 'delete_workflow_step'),
(79, 'Can add contact', 27, 'add_contact'),
(80, 'Can change contact', 27, 'change_contact'),
(81, 'Can delete contact', 27, 'delete_contact'),
(82, 'Can add batch_ order', 28, 'add_batch_order'),
(83, 'Can change batch_ order', 28, 'change_batch_order'),
(84, 'Can delete batch_ order', 28, 'delete_batch_order'),
(85, 'Can add rights', 29, 'add_rights'),
(86, 'Can change rights', 29, 'change_rights'),
(87, 'Can delete rights', 29, 'delete_rights'),
(88, 'Can add resource_ type', 30, 'add_resource_type'),
(89, 'Can change resource_ type', 30, 'change_resource_type'),
(90, 'Can delete resource_ type', 30, 'delete_resource_type'),
(91, 'Can add metadata_ term', 31, 'add_metadata_term'),
(92, 'Can change metadata_ term', 31, 'change_metadata_term'),
(93, 'Can delete metadata_ term', 31, 'delete_metadata_term'),
(94, 'Can add item', 32, 'add_item'),
(95, 'Can change item', 32, 'change_item'),
(96, 'Can delete item', 32, 'delete_item'),
(97, 'Can add metadata', 33, 'add_metadata'),
(98, 'Can change metadata', 33, 'change_metadata'),
(99, 'Can delete metadata', 33, 'delete_metadata'),
(100, 'Can add error_ code', 34, 'add_error_code'),
(101, 'Can change error_ code', 34, 'change_error_code'),
(102, 'Can delete error_ code', 34, 'delete_error_code'),
(103, 'Can add record', 35, 'add_record'),
(104, 'Can change record', 35, 'change_record'),
(105, 'Can delete record', 35, 'delete_record'),
(106, 'Can add hathi trust_ item', 36, 'add_hathitrust_item'),
(107, 'Can change hathi trust_ item', 36, 'change_hathitrust_item'),
(108, 'Can delete hathi trust_ item', 36, 'delete_hathitrust_item');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'jfenton', '', '', 'kyle.fenton@emory.edu', 'sha1$50920$7f133322618a99c8e4e6f4398386b4db820a5dd0', 1, 1, 1, '2012-01-25 18:16:05', '2012-01-20 09:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `digwf_batch_order`
--

CREATE TABLE IF NOT EXISTS `digwf_batch_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_type` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `customer_id_id` int(11) NOT NULL,
  `delivery_id_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `date_order_created` date NOT NULL,
  `date_order_due` date NOT NULL,
  `date_order_completed` date DEFAULT NULL,
  `date_originals_received` date DEFAULT NULL,
  `date_originals_returned` date DEFAULT NULL,
  `originals_received_by` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `originals_returned_to` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `rush` tinyint(1) NOT NULL,
  `delivery_method` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `customer_notes` longtext COLLATE utf8_swedish_ci NOT NULL,
  `processing_notes` longtext COLLATE utf8_swedish_ci NOT NULL,
  `archive_surrogates` tinyint(1) NOT NULL,
  `owner_originals` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `release_on_file` tinyint(1) NOT NULL,
  `default_collection_id` int(11) DEFAULT NULL,
  `copyright_owner` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `copyright_permission_statement` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `copyright_permission_terms` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `copyright_end_user_rights` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_batch_order_f05b416b` (`customer_id_id`),
  KEY `digwf_batch_order_4dbd3cbb` (`delivery_id_id`),
  KEY `digwf_batch_order_3b7e3080` (`default_collection_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `digwf_batch_order`
--

INSERT INTO `digwf_batch_order` (`id`, `order_type`, `customer_id_id`, `delivery_id_id`, `description`, `date_order_created`, `date_order_due`, `date_order_completed`, `date_originals_received`, `date_originals_returned`, `originals_received_by`, `originals_returned_to`, `rush`, `delivery_method`, `customer_notes`, `processing_notes`, `archive_surrogates`, `owner_originals`, `release_on_file`, `default_collection_id`, `copyright_owner`, `copyright_permission_statement`, `copyright_permission_terms`, `copyright_end_user_rights`) VALUES
(1, 'marbl_patron', 1, 7, 'O''Daniel order 12/19/2011', '2012-01-30', '2011-12-22', '2011-12-20', '2011-12-19', '2011-12-20', 'BMM', 'SC', 1, 'yousendit', '', 'check with preservation on vellum bound vault book, spine may be too tight.  keep item #11 in locked cabinet', 0, 'marbl', 0, 15, '', '', '', ''),
(2, 'marbl_patron', 8, 8, 'Rapkin order 11/30/11', '2012-01-30', '2011-12-14', '2011-12-02', '2011-11-30', '2011-12-07', 'BMM', 'EC', 0, 'yousendit', '', '', 1, 'marbl', 0, 12, '', '', '', ''),
(3, 'library_exhibit', 1, 9, 'Love Letters 2012 exhibit', '2012-01-30', '2012-01-24', '2012-01-23', '2012-01-17', NULL, 'BMM', '', 0, '', 'upload to F:/Librarywide/MARBL/Exhibits/LoveLetters_2012', '', 1, 'marbl', 0, NULL, '', '', '', ''),
(4, 'emory_digital_editions', 5, 10, 'Georgia Methodist Conference Minutes', '2012-01-30', '2012-02-29', NULL, NULL, NULL, '', '', 0, '', '', '', 1, 'theology', 0, 1, '', '', '', ''),
(5, 'emory_non_library', 3, 3, 'Berman papers, last box', '2012-01-30', '2012-01-30', '2012-01-30', '2012-01-02', '2012-01-30', 'JKF', 'Julie Kessler', 0, 'hdd_we_supply', '', '', 1, 'eu-customer', 0, NULL, 'Harold J. Berman', 'Reproduced by permission of the Estate of Harold J. Berman', 'Further reproduction or duplication is limited to fair use, i.e. not used for any purpose other than private study, scholarship, or research, except with the written permission of John Witte, Jr., Literary Executor of the Estate of Harold J. Berman', '');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_collection`
--

CREATE TABLE IF NOT EXISTS `digwf_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `coll_id` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `digwf_collection`
--

INSERT INTO `digwf_collection` (`id`, `type`, `coll_id`, `description`, `url`) VALUES
(1, 'Emory Digital Editions', 'Methodism', 'Methodism', ''),
(2, 'Emory Digital Editions', 'Yellowbacks', 'Yellowbacks', ''),
(3, 'Emory Digital Editions', 'Theo Ref', 'Theology Reference ', ''),
(4, 'Emory Digital Editions', 'Reg Hist', 'Regimental histories', ''),
(5, 'Emory Digital Editions', 'Civil War', 'Civil War Literature', ''),
(6, 'Emory Digital Editions', 'Ga Hse Jrnl', 'Georgia State House Journals', ''),
(7, 'Emory Digital Editions', 'Ga Snte Jrnl', 'Georgia State Senate Journals', ''),
(8, 'Emory Digital Editions', 'Emory Yearbooks', 'Emory Yearbooks', ''),
(9, 'Emory Digital Editions', 'Emory Pubs', 'Emory Publications (non-yearbook)', ''),
(10, 'Emory Digital Editions', 'AfAm Lit', 'African American Literature', ''),
(11, 'Emory Digital Editions', 'Triple Deckers', 'Triple Deckers', ''),
(12, 'MARBL MSS #', '558', 'William Berry Hartsfield Papers', ''),
(13, 'MARBL MSS #', '872', 'Josephus Roosevelt Coan papers', 'http://pid.emory.edu/ark:/25593/8z4gj'),
(14, 'MARBL MSS #', '612', 'Calvin Fred Craig papers', 'http://pid.emory.edu/ark:/25593/8z58t'),
(15, 'MARBL MSS #', '600', 'W. B. (William Butler) Yeats collection', 'http://pid.emory.edu/ark:/25593/902w3'),
(16, 'EUA Series #', 'EUPIX 5.3', 'Atlanta Students', ''),
(17, 'Pitts MSS #', '283', 'William Newman Ainsworth papers', 'http://www.pitts.emory.edu/Archives/text/mss283.html'),
(18, 'Pitts RG #', '53', 'Association of Professional Chaplains', 'http://www.pitts.emory.edu/Archives/text/rg053.html'),
(19, 'MARBL MSS #', '1135', 'Ted Berrigan', 'http://pid.emory.edu/ark:/25593/8z09f'),
(20, 'MARBL MSS #', '892', 'William Levi Dawson', 'http://pid.emory.edu/ark:/25593/8z6qq'),
(21, 'Other', 'Berman Papers', 'Harold J. Berman Papers', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `digwf_contact`
--

INSERT INTO `digwf_contact` (`id`, `company`, `person`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `contact_type`) VALUES
(1, 'MARBL', 'Liz Chase', '', '', '', '', NULL, NULL, 'eachase@emory.edu', 'customer'),
(2, 'DiSC', 'Brian Croxall', '', '', '', '', NULL, NULL, 'brian.croxall@emory.edu', 'customer'),
(3, 'Center for the Study of Law and Religion', 'April Bogle', '', '', '', '', NULL, NULL, 'abogleb@emory.edu', 'customer'),
(4, 'Data Center', 'Michael Page', '', '', '', '', NULL, NULL, 'mcpage@emory.edu', 'customer'),
(5, 'Pitts Theology Library', 'Pat Graham', '', '', '', '', NULL, NULL, 'libmpg@emory.edu', 'customer'),
(6, 'EUSOM Dept. of Surgery', '', '', '', '', '', NULL, NULL, '', 'customer'),
(7, 'ECIT', 'Shannon O''Daniel', '', '', '', '', NULL, NULL, 'odaniel@emory.edu', 'customer'),
(8, '', 'Katharine Rapkin', '', '', '', '', NULL, NULL, 'rapkin@georgiahistory.com', 'customer'),
(9, 'Gallery', 'Julie Delliquanti', '', '', '', '', NULL, NULL, '', 'customer'),
(10, 'Archive', 'Archive', '', '', '', '', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_error_code`
--

CREATE TABLE IF NOT EXISTS `digwf_error_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `digwf_item`
--

CREATE TABLE IF NOT EXISTS `digwf_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `oclc` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `lccn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `isbn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `issn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `barcode` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `digital_masters_id` int(5) DEFAULT NULL,
  `other_id` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
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
  `images_captured_count` int(11) DEFAULT NULL,
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
  `has_rights_id` int(11) NOT NULL,
  `pub_state_id` int(11) NOT NULL,
  `pub_place` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `pub_year` date DEFAULT NULL,
  `has_typeset_text` tinyint(1) NOT NULL,
  `note` longtext COLLATE utf8_swedish_ci NOT NULL,
  `rejection_code_id` int(11) DEFAULT NULL,
  `workflow_step_id` int(11) NOT NULL,
  `batch_order_id` int(11) NOT NULL,
  `user` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `dpi` int(11) DEFAULT NULL,
  `time_spent` time NOT NULL,
  `bit_depth` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `owner_originals` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_item_26d6361e` (`collection_id`),
  KEY `digwf_item_fabadb12` (`is_resource_type_id`),
  KEY `digwf_item_b9399c7c` (`has_rights_id`),
  KEY `digwf_item_59f93f8e` (`pub_state_id`),
  KEY `digwf_item_aa87ecd5` (`rejection_code_id`),
  KEY `digwf_item_5d02db27` (`workflow_step_id`),
  KEY `digwf_item_346109ee` (`batch_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `digwf_item`
--

INSERT INTO `digwf_item` (`id`, `title`, `collection_id`, `oclc`, `lccn`, `isbn`, `issn`, `barcode`, `digital_masters_id`, `other_id`, `enumcron`, `base_path`, `pdf_regex`, `ocr_regex`, `txt_regex`, `pos_regex`, `mrc_regex`, `jp2_regex`, `mets_regex`, `alto_regex`, `pdfa_regex`, `mods_regex`, `dc_regex`, `images_captured_regex`, `images_master_regex`, `images_presentation_regex`, `pid`, `images_captured_count`, `foldout_count`, `has_foldouts`, `created_at`, `updated_at`, `rush`, `notification_email`, `due_date`, `is_brittle`, `is_digitized`, `is_cataloged`, `is_paginated`, `has_binding`, `is_serial`, `to_archive`, `is_resource_type_id`, `has_rights_id`, `pub_state_id`, `pub_place`, `pub_year`, `has_typeset_text`, `note`, `rejection_code_id`, `workflow_step_id`, `batch_order_id`, `user`, `dpi`, `time_spent`, `bit_depth`, `owner_originals`) VALUES
(1, '"November Valentine"', 19, '', '', '', '', '', NULL, '', '', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '', NULL, NULL, 0, '2012-01-30', '2012-01-30', 0, '', NULL, 0, 0, 0, 0, 0, 0, 1, 6, 5, 2, '', NULL, 0, 'Cannot be opened more than 45 deg.  awaiting display approval 1/23/12', 7, 8, 3, 'bmethot', NULL, '01:32:47', '8', ''),
(2, 'Letter Dawson to Cecile ', 20, '', '', '', '', '', NULL, '', '', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '', 4, NULL, 0, '2012-01-30', '2012-01-30', 0, 'julie.delliquanti@emory.edu', '2012-01-24', 0, 0, 0, 0, 0, 0, 1, 6, 5, 2, '', NULL, 0, '', NULL, 5, 3, 'bmethot', NULL, '06:00:00', '8', ''),
(3, 'Downtown Atlanta 1960s', 12, '', '', '', '', '', NULL, '', '', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '', NULL, NULL, 0, '2012-01-30', '2012-01-30', 0, '', '2011-12-14', 0, 0, 0, 0, 0, 0, 1, 5, 5, 2, '', NULL, 0, '', NULL, 5, 2, 'prknigh', NULL, '14:17:09', '8', ''),
(4, 'Coole Park poem, 2 pages', NULL, '', '', '', '', '', NULL, '', '', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '', NULL, NULL, 0, '2012-01-30', '2012-01-30', 1, '', '2011-12-20', 0, 0, 0, 0, 0, 0, 1, 3, 5, 5, '', NULL, 0, '', 4, 5, 1, 'prknigh', NULL, '14:18:37', '8', ''),
(5, 'Minutes of the So Ga Conference, M E Church', 1, 'ocm51679609', '', '', '', '', NULL, '', '1867', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '', 35, NULL, 0, '2012-01-30', '2012-01-30', 0, '', NULL, 0, 0, 0, 0, 0, 0, 1, 4, 1, 5, 'US', '1867-01-01', 0, '', NULL, 3, 4, 'bwoolge', NULL, '14:22:01', '8', ''),
(6, 'A Lenten meditation 1992', 21, '', '', '', '', '', NULL, 'Berman bibliography 306', '', '', 'Output/PDF/*.pdf', 'Output/XML/*.xml', 'Output/OCR/*.txt', 'Output/OCR/*.pos', '*_MRC.xml', 'Output/Images/JP2/*.jp2', 'Output/Metadata/*_METS.xml', 'Output/Metadata/ALTO/*_ALTO.xml', '', '', '', '', '', '', '8h27g', 12, NULL, 0, '2012-01-30', '2012-01-30', 0, '', '2012-01-30', 0, 0, 0, 1, 0, 0, 1, 6, 2, 2, '', '1992-01-21', 1, '', NULL, 5, 5, 'bwoolge', NULL, '06:00:00', '8', '');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_metadata`
--

CREATE TABLE IF NOT EXISTS `digwf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `value` varchar(510) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_metadata_67b70d25` (`item_id`),
  KEY `digwf_metadata_f1e83452` (`term_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `digwf_metadata`
--

INSERT INTO `digwf_metadata` (`id`, `item_id`, `term_id`, `value`) VALUES
(1, 6, 2, 'Berman, Harold J.'),
(2, 6, 17, '"A Lenten Meditation," All Saints Church, Atlanta, January 21, 1992');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_metadata_term`
--

CREATE TABLE IF NOT EXISTS `digwf_metadata_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `digwf_metadata_term`
--

INSERT INTO `digwf_metadata_term` (`id`, `label`, `name`) VALUES
(1, 'dcterms.coverage', 'Coverage'),
(2, 'dcterms.creator', 'Creator'),
(3, 'dcterms.date', 'Date'),
(4, 'dcterms.dateCopyrighted', 'Date Copyrighted'),
(5, 'dcterms.description', 'Description'),
(6, 'dcterms.format', 'Format'),
(7, 'dcterms.identifier', 'Identifier'),
(8, 'dcterms.language', 'Language'),
(9, 'dcterms.publisher', 'Publisher'),
(10, 'dcterms.isPartOf', 'Is Part Of (Relation)'),
(11, 'dcterms.hasPart', 'Has Part (Relation)'),
(12, 'dcterms.isVersionOf', 'Is Version Of (Relation)'),
(13, 'dcterms.accessRights', 'Access Rights'),
(14, 'dcterms.rights', 'Rights'),
(15, 'dcterms.source', 'Source'),
(16, 'dcterms.subject', 'Subject'),
(17, 'dcterms.title', 'Title'),
(18, 'dcterms.type', 'Type');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_publication_state`
--

CREATE TABLE IF NOT EXISTS `digwf_publication_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `digwf_publication_state`
--

INSERT INTO `digwf_publication_state` (`id`, `status`) VALUES
(2, 'Not Published'),
(3, 'Being Published'),
(4, 'Pre Print'),
(5, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_rejection_code`
--

CREATE TABLE IF NOT EXISTS `digwf_rejection_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `digwf_rejection_code`
--

INSERT INTO `digwf_rejection_code` (`id`, `code`, `description`) VALUES
(1, 'BI', 'Item is fragile or has no binding'),
(2, 'CAT', 'Item record is unreadable'),
(3, 'DAM', 'Item is too damaged to stabilize'),
(4, 'RIGHT', 'Item is still in Copyright'),
(5, 'DUP', 'Item duplicates another on list'),
(6, 'LIST', 'PIck List Error'),
(7, 'GUTTR', 'Item gutters/margins too tight to scan'),
(8, 'MISPG', 'Missing Pages (>5) in Item'),
(9, 'BNDTG', 'Too many items bound together to scan'),
(10, 'NOS', 'Item not on shelf (missing/lost)'),
(11, 'OUT', 'Item checked out'),
(12, 'PAG', 'Pagination issues (sections out of order e.g.)'),
(13, 'BRITL', 'Item has brittle pages, no non-destructive scans'),
(14, 'SMAL', 'Item too small to scan'),
(15, 'UNCUT', 'Item has more than five uncut pages'),
(16, 'VELUM', 'Vellum binding'),
(17, 'WD', 'Item was withdrawn'),
(18, 'DIGIT', 'Item already available online');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_resource_type`
--

CREATE TABLE IF NOT EXISTS `digwf_resource_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `description` longtext COLLATE utf8_swedish_ci NOT NULL,
  `broad_type` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `digwf_resource_type`
--

INSERT INTO `digwf_resource_type` (`id`, `type`, `description`, `broad_type`) VALUES
(1, 'cartographic', '', ''),
(2, 'notated music', '', ''),
(3, 'text (monograph)', '', 'book'),
(4, 'text (serial)', '', 'serial'),
(5, 'still image', '', ''),
(6, 'text (non-book)', '', ''),
(7, 'sound recording', '', ''),
(8, 'moving image', '', ''),
(9, 'microform', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `digwf_rights`
--

CREATE TABLE IF NOT EXISTS `digwf_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `description` longtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `digwf_rights`
--

INSERT INTO `digwf_rights` (`id`, `status`, `description`) VALUES
(1, 'PUBLIC DOMAIN', 'Public Domain work'),
(2, 'C DIG PERM -- WORLD', 'Copyrighted, permission granted by copyright holder, only to digitize (not for print-on-demand sales), with unrestricted world-wide access'),
(3, 'C DIG PERM -- CAMPUS', 'Copyrighted work, with restricted permission granted by copyright holder to digitize, with access only on Emory campus.  No permission for print-on-demand sales'),
(4, 'C108 -- BUILDING', 'Copyright Act Section 108 \r\nhttp://www.law.cornell.edu/uscode/usc_sec_17_00000108----000-.html'),
(5, 'UNDETERMINED >= C108', 'Library has at least C108 preservation rights, and may have more.  Unknown whether there are additional donor restrictions.  This rights category provides no public access.');

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
(1, 'PREP', 'preparing batch order'),
(2, 'CAPTURE', 'Scan or photograph item'),
(3, 'EDIT', 'Editing digital outputs'),
(4, 'OCR', 'Generating OCR / PDF etc.'),
(5, 'COMPLETED', 'Digitization process finished'),
(6, 'MDATA RVW', 'Metadata Review/Enhancement'),
(7, 'ERROR', 'Error state needing action'),
(8, 'PENDING', 'Pending 3rd party action'),
(9, 'REJECTED', 'Item rejected, reason recorded');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_swedish_ci,
  `object_repr` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-01-30 14:00:47', 1, 28, '1', 'O''Daniel order 12/19/2011', 1, ''),
(2, '2012-01-30 14:02:56', 1, 28, '2', 'Rapkin order 11/30/11', 1, ''),
(3, '2012-01-30 14:03:29', 1, 27, '9', 'Gallery : Julie Delliquanti', 1, ''),
(4, '2012-01-30 14:06:04', 1, 28, '3', 'Love Letters 2012 exhibit', 1, ''),
(5, '2012-01-30 14:09:59', 1, 28, '3', 'Love Letters 2012 exhibit', 2, 'No fields changed.'),
(6, '2012-01-30 14:11:31', 1, 23, '19', 'MARBL MSS # : 1135 : Ted Berrigan', 1, ''),
(7, '2012-01-30 14:14:11', 1, 32, '1', '"November Valentine"', 1, ''),
(8, '2012-01-30 14:15:23', 1, 23, '20', 'MARBL MSS # : 892 : William Levi Dawson', 1, ''),
(9, '2012-01-30 14:16:42', 1, 32, '2', 'Letter Dawson to Cecile ', 1, ''),
(10, '2012-01-30 14:18:15', 1, 32, '3', 'Downtown Atlanta 1960s', 1, ''),
(11, '2012-01-30 14:20:05', 1, 32, '4', 'Coole Park poem, 2 pages', 1, ''),
(12, '2012-01-30 14:20:31', 1, 30, '3', 'text (monograph) : ', 2, 'Changed type and broad_type.'),
(13, '2012-01-30 14:20:50', 1, 30, '4', 'text (serial) : ', 2, 'Changed type and broad_type.'),
(14, '2012-01-30 14:21:10', 1, 32, '4', 'Coole Park poem, 2 pages', 2, 'No fields changed.'),
(15, '2012-01-30 14:24:07', 1, 32, '5', 'Minutes of the So Ga Conference, M E Church', 1, ''),
(16, '2012-01-30 14:25:27', 1, 27, '10', 'Archive : Archive', 1, ''),
(17, '2012-01-30 14:28:02', 1, 28, '4', 'Georgia Methodist Conference Minutes', 1, ''),
(18, '2012-01-30 14:28:16', 1, 32, '5', 'Minutes of the So Ga Conference, M E Church', 2, 'Changed batch_order.'),
(19, '2012-01-30 14:38:44', 1, 28, '5', 'Berman papers, last box', 1, ''),
(20, '2012-01-30 14:39:58', 1, 23, '21', 'Other : Berman Papers : Harold J. Berman Papers', 1, ''),
(21, '2012-01-30 14:41:51', 1, 32, '6', 'A Lenten meditation 1992', 1, ''),
(22, '2012-01-30 14:42:17', 1, 32, '6', 'A Lenten meditation 1992', 2, 'Changed pid.'),
(23, '2012-01-30 14:44:39', 1, 32, '6', 'A Lenten meditation 1992', 2, 'Added metadata "A Lenten meditation 1992 : dcterms.creator : Berman, Harold J.". Added metadata "A Lenten meditation 1992 : dcterms.title : "A Lenten Meditation," All Saints Church, Atlanta, January 21, 1992".'),
(24, '2012-01-30 14:44:50', 1, 32, '6', 'A Lenten meditation 1992', 2, 'Changed pub_year.'),
(25, '2012-01-30 14:45:29', 1, 32, '6', 'A Lenten meditation 1992', 2, 'Changed other_id.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `app_label` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'message', 'auth', 'message'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'log entry', 'admin', 'logentry'),
(9, 'permission', 'permissions', 'permission'),
(10, 'object permission', 'permissions', 'objectpermission'),
(11, 'object permission inheritance block', 'permissions', 'objectpermissioninheritanceblock'),
(12, 'role', 'permissions', 'role'),
(13, 'principal role relation', 'permissions', 'principalrolerelation'),
(14, 'workflow', 'workflows', 'workflow'),
(15, 'state', 'workflows', 'state'),
(16, 'transition', 'workflows', 'transition'),
(17, 'state object relation', 'workflows', 'stateobjectrelation'),
(18, 'workflow object relation', 'workflows', 'workflowobjectrelation'),
(19, 'workflow model relation', 'workflows', 'workflowmodelrelation'),
(20, 'workflow permission relation', 'workflows', 'workflowpermissionrelation'),
(21, 'state inheritance block', 'workflows', 'stateinheritanceblock'),
(22, 'state permission relation', 'workflows', 'statepermissionrelation'),
(23, 'collection', 'digwf', 'collection'),
(24, 'publication_ state', 'digwf', 'publication_state'),
(25, 'rejection_ code', 'digwf', 'rejection_code'),
(26, 'workflow_ step', 'digwf', 'workflow_step'),
(27, 'contact', 'digwf', 'contact'),
(28, 'batch_ order', 'digwf', 'batch_order'),
(29, 'rights', 'digwf', 'rights'),
(30, 'resource_ type', 'digwf', 'resource_type'),
(31, 'metadata_ term', 'digwf', 'metadata_term'),
(32, 'item', 'digwf', 'item'),
(33, 'metadata', 'digwf', 'metadata'),
(34, 'error_ code', 'digwf', 'error_code'),
(35, 'record', 'repo_checker', 'record'),
(36, 'hathi trust_ item', 'repo_checker', 'hathitrust_item');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_swedish_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cdde4472606d766544b9a4e218daa27a', 'YWRmZTAwMzRiOWM3M2UwMjJlZTkwZmIzMmI3NzMwNzk5ZDA1ZjQ1NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-02-08 18:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `permissions_objectpermission`
--

CREATE TABLE IF NOT EXISTS `permissions_objectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `content_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_objectpermission_bf07f040` (`role_id`),
  KEY `permissions_objectpermission_1e014c8f` (`permission_id`),
  KEY `permissions_objectpermission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_objectpermissioninheritanceblock`
--

CREATE TABLE IF NOT EXISTS `permissions_objectpermissioninheritanceblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `content_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_objectpermissioninheritanceblock_1e014c8f` (`permission_id`),
  KEY `permissions_objectpermissioninheritanceblock_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_permission`
--

CREATE TABLE IF NOT EXISTS `permissions_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `codename` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `codename` (`codename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_permission_content_types`
--

CREATE TABLE IF NOT EXISTS `permissions_permission_content_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `contenttype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_id` (`permission_id`,`contenttype_id`),
  KEY `permissions_permission_content_types_1e014c8f` (`permission_id`),
  KEY `permissions_permission_content_types_a184c428` (`contenttype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_principalrolerelation`
--

CREATE TABLE IF NOT EXISTS `permissions_principalrolerelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `content_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_principalrolerelation_fbfc09f1` (`user_id`),
  KEY `permissions_principalrolerelation_bda51c3c` (`group_id`),
  KEY `permissions_principalrolerelation_bf07f040` (`role_id`),
  KEY `permissions_principalrolerelation_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_role`
--

CREATE TABLE IF NOT EXISTS `permissions_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `repo_checker_hathitrust_item`
--

CREATE TABLE IF NOT EXISTS `repo_checker_hathitrust_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `ht_rec_num_id` int(11) NOT NULL,
  `origin` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `htid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `itemURL` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `lastupdate` date NOT NULL,
  `rightsCode` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `enumcron` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `usRightsString` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `coverLarge` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `coverMedium` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `coverSmall` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `publishDate` date NOT NULL,
  `ol_edition_id` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `ol_work_id` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repo_checker_hathitrust_item_7590a40` (`ht_rec_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `repo_checker_record`
--

CREATE TABLE IF NOT EXISTS `repo_checker_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oclc` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `lccn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `isbn10` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `isbn13` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `issn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `ht_rec_num` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `ol_id` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oclc` (`oclc`),
  UNIQUE KEY `lccn` (`lccn`),
  UNIQUE KEY `isbn10` (`isbn10`),
  UNIQUE KEY `isbn13` (`isbn13`),
  UNIQUE KEY `issn` (`issn`),
  UNIQUE KEY `ht_rec_num` (`ht_rec_num`),
  UNIQUE KEY `ol_id` (`ol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_state`
--

CREATE TABLE IF NOT EXISTS `workflows_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `workflow_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflows_state_26cddbc7` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_stateinheritanceblock`
--

CREATE TABLE IF NOT EXISTS `workflows_stateinheritanceblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflows_stateinheritanceblock_b9608dc2` (`state_id`),
  KEY `workflows_stateinheritanceblock_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_stateobjectrelation`
--

CREATE TABLE IF NOT EXISTS `workflows_stateobjectrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) DEFAULT NULL,
  `content_id` int(10) unsigned DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`content_id`,`state_id`),
  KEY `workflows_stateobjectrelation_e4470c6e` (`content_type_id`),
  KEY `workflows_stateobjectrelation_b9608dc2` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_statepermissionrelation`
--

CREATE TABLE IF NOT EXISTS `workflows_statepermissionrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflows_statepermissionrelation_b9608dc2` (`state_id`),
  KEY `workflows_statepermissionrelation_1e014c8f` (`permission_id`),
  KEY `workflows_statepermissionrelation_bf07f040` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_state_transitions`
--

CREATE TABLE IF NOT EXISTS `workflows_state_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `transition_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state_id` (`state_id`,`transition_id`),
  KEY `workflows_state_transitions_b9608dc2` (`state_id`),
  KEY `workflows_state_transitions_78d221b3` (`transition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_transition`
--

CREATE TABLE IF NOT EXISTS `workflows_transition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `workflow_id` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL,
  `condition` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workflows_transition_26cddbc7` (`workflow_id`),
  KEY `workflows_transition_90a09905` (`destination_id`),
  KEY `workflows_transition_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_workflow`
--

CREATE TABLE IF NOT EXISTS `workflows_workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `initial_state_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `workflows_workflow_84f4d443` (`initial_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_workflowmodelrelation`
--

CREATE TABLE IF NOT EXISTS `workflows_workflowmodelrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `workflow_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`),
  KEY `workflows_workflowmodelrelation_26cddbc7` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_workflowobjectrelation`
--

CREATE TABLE IF NOT EXISTS `workflows_workflowobjectrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) DEFAULT NULL,
  `content_id` int(10) unsigned DEFAULT NULL,
  `workflow_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`content_id`),
  KEY `workflows_workflowobjectrelation_e4470c6e` (`content_type_id`),
  KEY `workflows_workflowobjectrelation_26cddbc7` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows_workflowpermissionrelation`
--

CREATE TABLE IF NOT EXISTS `workflows_workflowpermissionrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workflow_id` (`workflow_id`,`permission_id`),
  KEY `workflows_workflowpermissionrelation_26cddbc7` (`workflow_id`),
  KEY `workflows_workflowpermissionrelation_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_message`
--
ALTER TABLE `auth_message`
  ADD CONSTRAINT `user_id_refs_id_9af0b65a` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `digwf_batch_order`
--
ALTER TABLE `digwf_batch_order`
  ADD CONSTRAINT `customer_id_id_refs_id_b358d1d0` FOREIGN KEY (`customer_id_id`) REFERENCES `digwf_contact` (`id`),
  ADD CONSTRAINT `default_collection_id_refs_id_dabff6c7` FOREIGN KEY (`default_collection_id`) REFERENCES `digwf_collection` (`id`),
  ADD CONSTRAINT `delivery_id_id_refs_id_b358d1d0` FOREIGN KEY (`delivery_id_id`) REFERENCES `digwf_contact` (`id`);

--
-- Constraints for table `digwf_item`
--
ALTER TABLE `digwf_item`
  ADD CONSTRAINT `batch_order_id_refs_id_b8a8bb84` FOREIGN KEY (`batch_order_id`) REFERENCES `digwf_batch_order` (`id`),
  ADD CONSTRAINT `collection_id_refs_id_335e54ec` FOREIGN KEY (`collection_id`) REFERENCES `digwf_collection` (`id`),
  ADD CONSTRAINT `has_rights_id_refs_id_d52c4be9` FOREIGN KEY (`has_rights_id`) REFERENCES `digwf_rights` (`id`),
  ADD CONSTRAINT `is_resource_type_id_refs_id_c953ba5c` FOREIGN KEY (`is_resource_type_id`) REFERENCES `digwf_resource_type` (`id`),
  ADD CONSTRAINT `pub_state_id_refs_id_ac743181` FOREIGN KEY (`pub_state_id`) REFERENCES `digwf_publication_state` (`id`),
  ADD CONSTRAINT `rejection_code_id_refs_id_f972428b` FOREIGN KEY (`rejection_code_id`) REFERENCES `digwf_rejection_code` (`id`),
  ADD CONSTRAINT `workflow_step_id_refs_id_e9a9a275` FOREIGN KEY (`workflow_step_id`) REFERENCES `digwf_workflow_step` (`id`);

--
-- Constraints for table `digwf_metadata`
--
ALTER TABLE `digwf_metadata`
  ADD CONSTRAINT `item_id_refs_id_8b897543` FOREIGN KEY (`item_id`) REFERENCES `digwf_item` (`id`),
  ADD CONSTRAINT `term_id_refs_id_4408a4f9` FOREIGN KEY (`term_id`) REFERENCES `digwf_metadata_term` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `permissions_objectpermission`
--
ALTER TABLE `permissions_objectpermission`
  ADD CONSTRAINT `content_type_id_refs_id_b7630305` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6b12a538` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`),
  ADD CONSTRAINT `role_id_refs_id_3b08a8db` FOREIGN KEY (`role_id`) REFERENCES `permissions_role` (`id`);

--
-- Constraints for table `permissions_objectpermissioninheritanceblock`
--
ALTER TABLE `permissions_objectpermissioninheritanceblock`
  ADD CONSTRAINT `content_type_id_refs_id_43ab7380` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_fb2b17ed` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`);

--
-- Constraints for table `permissions_permission_content_types`
--
ALTER TABLE `permissions_permission_content_types`
  ADD CONSTRAINT `contenttype_id_refs_id_7463a632` FOREIGN KEY (`contenttype_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_128eff21` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`);

--
-- Constraints for table `permissions_principalrolerelation`
--
ALTER TABLE `permissions_principalrolerelation`
  ADD CONSTRAINT `content_type_id_refs_id_30b770a6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `group_id_refs_id_2cf79349` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `role_id_refs_id_43e40be4` FOREIGN KEY (`role_id`) REFERENCES `permissions_role` (`id`),
  ADD CONSTRAINT `user_id_refs_id_9f5efc36` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `repo_checker_hathitrust_item`
--
ALTER TABLE `repo_checker_hathitrust_item`
  ADD CONSTRAINT `ht_rec_num_id_refs_id_5fb3597` FOREIGN KEY (`ht_rec_num_id`) REFERENCES `repo_checker_record` (`id`);

--
-- Constraints for table `workflows_state`
--
ALTER TABLE `workflows_state`
  ADD CONSTRAINT `workflow_id_refs_id_b7f83d1c` FOREIGN KEY (`workflow_id`) REFERENCES `workflows_workflow` (`id`);

--
-- Constraints for table `workflows_stateinheritanceblock`
--
ALTER TABLE `workflows_stateinheritanceblock`
  ADD CONSTRAINT `permission_id_refs_id_427ae3f9` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`),
  ADD CONSTRAINT `state_id_refs_id_5b9c5f1a` FOREIGN KEY (`state_id`) REFERENCES `workflows_state` (`id`);

--
-- Constraints for table `workflows_stateobjectrelation`
--
ALTER TABLE `workflows_stateobjectrelation`
  ADD CONSTRAINT `content_type_id_refs_id_e0d9532c` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `state_id_refs_id_c6135f06` FOREIGN KEY (`state_id`) REFERENCES `workflows_state` (`id`);

--
-- Constraints for table `workflows_statepermissionrelation`
--
ALTER TABLE `workflows_statepermissionrelation`
  ADD CONSTRAINT `permission_id_refs_id_3c286653` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`),
  ADD CONSTRAINT `role_id_refs_id_4d1d686a` FOREIGN KEY (`role_id`) REFERENCES `permissions_role` (`id`),
  ADD CONSTRAINT `state_id_refs_id_57880e4e` FOREIGN KEY (`state_id`) REFERENCES `workflows_state` (`id`);

--
-- Constraints for table `workflows_state_transitions`
--
ALTER TABLE `workflows_state_transitions`
  ADD CONSTRAINT `state_id_refs_id_86ec99c8` FOREIGN KEY (`state_id`) REFERENCES `workflows_state` (`id`),
  ADD CONSTRAINT `transition_id_refs_id_a1166773` FOREIGN KEY (`transition_id`) REFERENCES `workflows_transition` (`id`);

--
-- Constraints for table `workflows_transition`
--
ALTER TABLE `workflows_transition`
  ADD CONSTRAINT `destination_id_refs_id_1ec2c7fa` FOREIGN KEY (`destination_id`) REFERENCES `workflows_state` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6f12f735` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`),
  ADD CONSTRAINT `workflow_id_refs_id_32e4b61f` FOREIGN KEY (`workflow_id`) REFERENCES `workflows_workflow` (`id`);

--
-- Constraints for table `workflows_workflow`
--
ALTER TABLE `workflows_workflow`
  ADD CONSTRAINT `initial_state_id_refs_id_6181b516` FOREIGN KEY (`initial_state_id`) REFERENCES `workflows_state` (`id`);

--
-- Constraints for table `workflows_workflowmodelrelation`
--
ALTER TABLE `workflows_workflowmodelrelation`
  ADD CONSTRAINT `content_type_id_refs_id_5cb41c92` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `workflow_id_refs_id_f05e2953` FOREIGN KEY (`workflow_id`) REFERENCES `workflows_workflow` (`id`);

--
-- Constraints for table `workflows_workflowobjectrelation`
--
ALTER TABLE `workflows_workflowobjectrelation`
  ADD CONSTRAINT `content_type_id_refs_id_c8358779` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `workflow_id_refs_id_9b9a2fa0` FOREIGN KEY (`workflow_id`) REFERENCES `workflows_workflow` (`id`);

--
-- Constraints for table `workflows_workflowpermissionrelation`
--
ALTER TABLE `workflows_workflowpermissionrelation`
  ADD CONSTRAINT `permission_id_refs_id_ae354604` FOREIGN KEY (`permission_id`) REFERENCES `permissions_permission` (`id`),
  ADD CONSTRAINT `workflow_id_refs_id_26debff0` FOREIGN KEY (`workflow_id`) REFERENCES `workflows_workflow` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
