-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2012 at 08:48 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=112 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `digwf_publication_state`
--

CREATE TABLE IF NOT EXISTS `digwf_publication_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=97 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=38 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_role`
--

CREATE TABLE IF NOT EXISTS `permissions_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `repo_checker_hathitrust_item`
--

CREATE TABLE IF NOT EXISTS `repo_checker_hathitrust_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volume_identifier` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `access` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `rights` varchar(11) COLLATE utf8_swedish_ci NOT NULL,
  `um_rec_num` varchar(9) COLLATE utf8_swedish_ci NOT NULL,
  `enumcron` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `source` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `source_inst_rec_num` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `oclc` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `isbn` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `issn` varchar(90) COLLATE utf8_swedish_ci NOT NULL,
  `lccn` varchar(12) COLLATE utf8_swedish_ci NOT NULL,
  `title` longtext COLLATE utf8_swedish_ci NOT NULL,
  `imprint` longtext COLLATE utf8_swedish_ci NOT NULL,
  `rights_reason_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `gov_doc` tinyint(1) NOT NULL,
  `pub_date` varchar(9) COLLATE utf8_swedish_ci NOT NULL,
  `pub_place` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `language` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `bibl_format` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `local_created` date NOT NULL,
  `local_last_modified` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2709055 ;

-- --------------------------------------------------------

--
-- Table structure for table `repo_checker_record`
--

CREATE TABLE IF NOT EXISTS `repo_checker_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(16) COLLATE utf8_swedish_ci,
  `call_no_expanded` varchar(19) COLLATE utf8_swedish_ci NOT NULL,
  `no_circs` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `item_type` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `copy_num` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `home_location` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `current_location` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `library` varchar(9) COLLATE utf8_swedish_ci NOT NULL,
  `date_cataloged` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `title_control` varchar(14) COLLATE utf8_swedish_ci NOT NULL,
  `ohohoh` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `fixed_field` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `personal_author` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `corporate_author` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `meeting_name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(572) COLLATE utf8_swedish_ci NOT NULL,
  `publication_info` varchar(86) COLLATE utf8_swedish_ci NOT NULL,
  `physical_description` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `emory_digitization_note` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `local_note` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `pub_year` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `call_no` varchar(14) COLLATE utf8_swedish_ci NOT NULL,
  `date_what` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `oclc` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `lccn` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `isbn10` varchar(10) COLLATE utf8_swedish_ci DEFAULT NULL,
  `isbn13` varchar(13) COLLATE utf8_swedish_ci DEFAULT NULL,
  `issn` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ht_rec_num` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ol_id` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `oclc_trimmed` varchar(11) COLLATE utf8_swedish_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `repo_checker_record_barcode_uniq` (`barcode`),
  KEY `repo_checker_record_a4e3c1d4` (`barcode`),
  KEY `repo_checker_record_589adce` (`personal_author`),
  KEY `repo_checker_record_3a351d56` (`corporate_author`),
  KEY `repo_checker_record_8d52f558` (`meeting_name`),
  KEY `repo_checker_record_841a7e28` (`title`(255)),
  KEY `repo_checker_record_8b85c91d` (`oclc_trimmed`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=617967 ;

-- --------------------------------------------------------

--
-- Table structure for table `south_migrationhistory`
--

CREATE TABLE IF NOT EXISTS `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `migration` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=13 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=22 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=10 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

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
