-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2012 at 08:34 AM
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

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'superusers');

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
(108, 'Can delete hathi trust_ item', 36, 'delete_hathitrust_item'),
(109, 'Can add migration history', 37, 'add_migrationhistory'),
(110, 'Can change migration history', 37, 'change_migrationhistory'),
(111, 'Can delete migration history', 37, 'delete_migrationhistory');

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'jfenton', '', '', 'kyle.fenton@emory.edu', 'sha1$50920$7f133322618a99c8e4e6f4398386b4db820a5dd0', 1, 1, 1, '2012-02-10 12:51:31', '2012-01-20 09:43:10'),
(2, 'john.wang', '', '', '', 'sha1$ef4e3$59ff4d55aca5ced5d7d99592bb42e37e14679d00', 1, 1, 1, '2012-01-30 15:08:41', '2012-01-30 15:08:41'),
(3, 'liblna', '', '', '', 'sha1$b3058$9a0fa0fd02be2578da82d6735701a224899df7eb', 1, 1, 1, '2012-01-30 15:09:01', '2012-01-30 15:09:01'),
(4, 'kaduran', '', '', '', 'sha1$769ec$7c86562c60bd453039a2d6b2b067807fe007958c', 1, 1, 1, '2012-01-30 15:09:27', '2012-01-30 15:09:27'),
(5, 'lmeyer2', '', '', '', 'sha1$97274$095c1484bae9e88f25c075208ee83ca0d7f1149d', 1, 1, 1, '2012-01-30 15:18:59', '2012-01-30 15:18:59');

--
-- Dumping data for table `digwf_batch_order`
--

INSERT INTO `digwf_batch_order` (`id`, `order_type`, `customer_id_id`, `delivery_id_id`, `description`, `date_order_created`, `date_order_due`, `date_order_completed`, `date_originals_received`, `date_originals_returned`, `originals_received_by`, `originals_returned_to`, `rush`, `delivery_method`, `customer_notes`, `processing_notes`, `archive_surrogates`, `owner_originals`, `release_on_file`, `default_collection_id`, `copyright_owner`, `copyright_permission_statement`, `copyright_permission_terms`, `copyright_end_user_rights`) VALUES
(1, 'marbl_patron', 1, 7, 'O''Daniel order 12/19/2011', '2012-01-30', '2011-12-22', '2011-12-20', '2011-12-19', '2011-12-20', 'BMM', 'SC', 1, 'yousendit', '', 'check with preservation on vellum bound vault book, spine may be too tight.  keep item #11 in locked cabinet', 0, 'marbl', 0, 15, '', '', '', ''),
(2, 'marbl_patron', 8, 8, 'Rapkin order 11/30/11', '2012-01-30', '2011-12-14', '2011-12-02', '2011-11-30', '2011-12-07', 'BMM', 'EC', 0, 'yousendit', '', '', 1, 'marbl', 0, 12, '', '', '', ''),
(3, 'library_exhibit', 1, 9, 'Love Letters 2012 exhibit', '2012-01-30', '2012-01-24', '2012-01-23', '2012-01-17', NULL, 'BMM', '', 0, '', 'upload to F:/Librarywide/MARBL/Exhibits/LoveLetters_2012', '', 1, 'marbl', 0, NULL, '', '', '', ''),
(4, 'emory_digital_editions', 5, 10, 'Georgia Methodist Conference Minutes', '2012-01-30', '2012-02-29', NULL, NULL, NULL, '', '', 0, '', '', '', 1, 'theology', 0, 1, '', '', '', ''),
(5, 'emory_non_library', 3, 3, 'Berman papers, last box', '2012-01-30', '2012-01-30', '2012-01-30', '2012-01-02', '2012-01-30', 'JKF', 'Julie Kessler', 0, 'hdd_we_supply', '', '', 1, 'eu-customer', 0, NULL, 'Harold J. Berman', 'Reproduced by permission of the Estate of Harold J. Berman', 'Further reproduction or duplication is limited to fair use, i.e. not used for any purpose other than private study, scholarship, or research, except with the written permission of John Witte, Jr., Literary Executor of the Estate of Harold J. Berman', '');

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

--
-- Dumping data for table `digwf_metadata`
--

INSERT INTO `digwf_metadata` (`id`, `item_id`, `term_id`, `value`) VALUES
(1, 6, 2, 'Berman, Harold J.'),
(2, 6, 17, '"A Lenten Meditation," All Saints Church, Atlanta, January 21, 1992');

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

--
-- Dumping data for table `digwf_publication_state`
--

INSERT INTO `digwf_publication_state` (`id`, `status`) VALUES
(2, 'Not Published'),
(3, 'Being Published'),
(4, 'Pre Print'),
(5, 'Published');

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

--
-- Dumping data for table `digwf_rights`
--

INSERT INTO `digwf_rights` (`id`, `status`, `description`) VALUES
(1, 'PUBLIC DOMAIN', 'Public Domain work'),
(2, 'C DIG PERM -- WORLD', 'Copyrighted, permission granted by copyright holder, only to digitize (not for print-on-demand sales), with unrestricted world-wide access'),
(3, 'C DIG PERM -- CAMPUS', 'Copyrighted work, with restricted permission granted by copyright holder to digitize, with access only on Emory campus.  No permission for print-on-demand sales'),
(4, 'C108 -- BUILDING', 'Copyright Act Section 108 \r\nhttp://www.law.cornell.edu/uscode/usc_sec_17_00000108----000-.html'),
(5, 'UNDETERMINED >= C108', 'Library has at least C108 preservation rights, and may have more.  Unknown whether there are additional donor restrictions.  This rights category provides no public access.');

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
(25, '2012-01-30 14:45:29', 1, 32, '6', 'A Lenten meditation 1992', 2, 'Changed other_id.'),
(26, '2012-01-30 15:08:41', 1, 3, '2', 'john.wang', 1, ''),
(27, '2012-01-30 15:09:01', 1, 3, '3', 'liblna', 1, ''),
(28, '2012-01-30 15:09:08', 1, 3, '3', 'liblna', 2, 'Changed is_staff and is_superuser.'),
(29, '2012-01-30 15:09:15', 1, 3, '2', 'john.wang', 2, 'Changed is_staff and is_superuser.'),
(30, '2012-01-30 15:09:27', 1, 3, '4', 'kaduran', 1, ''),
(31, '2012-01-30 15:09:32', 1, 3, '4', 'kaduran', 2, 'Changed is_staff and is_superuser.'),
(32, '2012-01-30 15:18:59', 1, 3, '5', 'lmeyer2', 1, ''),
(33, '2012-01-30 15:19:04', 1, 3, '5', 'lmeyer2', 2, 'Changed is_staff and is_superuser.'),
(34, '2012-01-30 15:25:25', 1, 14, '1', 'Test', 1, ''),
(35, '2012-01-30 15:25:33', 1, 14, '1', 'Test 1', 2, 'Changed name.'),
(36, '2012-01-30 15:25:39', 1, 14, '1', 'Test 1', 2, 'Changed initial_state.'),
(37, '2012-01-30 15:26:06', 1, 16, '1', 'transition 1', 1, ''),
(38, '2012-01-30 16:16:50', 1, 9, '1', 'View (view)', 1, ''),
(39, '2012-01-30 16:16:57', 1, 9, '2', 'Edit (edit)', 1, ''),
(40, '2012-01-30 16:17:28', 1, 20, '1', 'Test 1 Edit', 1, ''),
(41, '2012-01-30 16:17:35', 1, 20, '2', 'Test 1 View', 1, ''),
(42, '2012-01-30 16:19:01', 1, 12, '1', 'Owner', 1, ''),
(43, '2012-01-30 16:19:20', 1, 13, '1', 'PrincipalRoleRelation object', 1, ''),
(44, '2012-01-30 16:20:11', 1, 22, '1', 'state 1 Owner Edit', 1, ''),
(45, '2012-01-30 16:22:21', 1, 18, '1', 'item None - Test 1', 1, ''),
(46, '2012-01-30 16:22:32', 1, 18, '1', 'item 1 - Test 1', 2, 'Changed content_id.'),
(47, '2012-01-30 16:22:56', 1, 19, '1', 'item - Test 1', 1, ''),
(48, '2012-02-01 16:31:34', 1, 13, '1', 'PrincipalRoleRelation object', 2, 'Changed content_type.'),
(49, '2012-02-01 16:32:16', 1, 2, '1', 'superusers', 1, ''),
(50, '2012-02-01 16:32:18', 1, 13, '1', 'PrincipalRoleRelation object', 2, 'Changed group.'),
(51, '2012-02-01 16:32:22', 1, 13, '1', 'PrincipalRoleRelation object', 2, 'Changed content_id.'),
(52, '2012-02-01 16:32:28', 1, 13, '1', 'PrincipalRoleRelation object', 2, 'Changed content_id.'),
(53, '2012-02-01 16:33:59', 1, 9, '2', 'Edit (edit)', 2, 'Changed content_types.'),
(54, '2012-02-01 16:34:07', 1, 9, '1', 'View (view)', 2, 'Changed content_types.'),
(55, '2012-02-01 16:53:32', 1, 20, '2', 'Test 1 View', 3, ''),
(56, '2012-02-01 16:55:01', 1, 14, '1', 'LSDI Books', 2, 'Changed name.'),
(57, '2012-02-01 16:55:33', 1, 15, '1', 'state 1 (LSDI Books)', 3, ''),
(58, '2012-02-01 16:55:33', 1, 15, '2', 'state 2 (LSDI Books)', 3, ''),
(59, '2012-02-01 16:55:33', 1, 15, '3', 'state 3 (LSDI Books)', 3, ''),
(60, '2012-02-01 16:59:04', 1, 14, '2', 'LSDI', 1, ''),
(61, '2012-02-01 16:59:21', 1, 15, '4', 'Initialized (LSDI)', 1, ''),
(62, '2012-02-01 16:59:29', 1, 15, '5', 'Itemized (LSDI)', 1, ''),
(63, '2012-02-01 16:59:37', 1, 15, '6', 'Proposed (LSDI)', 1, ''),
(64, '2012-02-01 16:59:46', 1, 15, '7', 'Approved (LSDI)', 1, ''),
(65, '2012-02-01 17:00:18', 1, 15, '8', 'Rights OK''d (LSDI)', 1, ''),
(66, '2012-02-01 17:00:46', 1, 15, '9', 'Deemed Technically Feasible (LSDI)', 1, ''),
(67, '2012-02-01 17:00:56', 1, 15, '10', 'Rejected (LSDI)', 1, ''),
(68, '2012-02-01 17:01:10', 1, 15, '11', 'Tabled (LSDI)', 1, ''),
(69, '2012-02-01 17:03:10', 1, 16, '2', 'Itemize Batch Order', 1, ''),
(70, '2012-02-01 17:04:14', 1, 15, '4', 'Batch Order Created (LSDI)', 2, 'Changed name.'),
(71, '2012-02-01 17:04:24', 1, 15, '7', 'Batch Order Approved (LSDI)', 2, 'Changed name.'),
(72, '2012-02-01 17:04:36', 1, 15, '9', 'Order Deemed Technically Feasible (LSDI)', 2, 'Changed name.'),
(73, '2012-02-01 17:04:47', 1, 15, '8', 'Batch Order Rights OK''d (LSDI)', 2, 'Changed name.'),
(74, '2012-02-01 17:05:04', 1, 15, '9', 'Batch Order Deemed Technically Feasible (LSDI)', 2, 'Changed name.'),
(75, '2012-02-01 17:05:13', 1, 15, '5', 'Batch Order Itemized (LSDI)', 2, 'Changed name.'),
(76, '2012-02-01 17:05:34', 1, 15, '6', 'Batch Order Requested (LSDI)', 2, 'Changed name.'),
(77, '2012-02-01 17:05:44', 1, 15, '6', 'Batch Order Requested/Proposed (LSDI)', 2, 'Changed name.'),
(78, '2012-02-01 17:05:55', 1, 15, '10', 'Batch Order Rejected (LSDI)', 2, 'Changed name.'),
(79, '2012-02-01 17:06:08', 1, 15, '11', 'Batch Order Proposal Tabled (LSDI)', 2, 'Changed name.'),
(80, '2012-02-01 17:06:16', 1, 15, '10', 'Batch Order Proposal Rejected (LSDI)', 2, 'Changed name.'),
(81, '2012-02-01 17:06:58', 1, 14, '2', 'LSDI', 2, 'Changed initial_state.'),
(82, '2012-02-01 17:07:51', 1, 16, '3', 'Reject Batch Order', 1, ''),
(83, '2012-02-01 17:08:21', 1, 16, '4', 'Propose/Request Batch Order', 1, ''),
(84, '2012-02-01 17:08:45', 1, 16, '5', 'Approve Batch Order', 1, ''),
(85, '2012-02-01 17:09:16', 1, 16, '6', 'OK Rights for Batch Order', 1, ''),
(86, '2012-02-01 17:09:43', 1, 16, '7', 'OK Technical Feasibility for Batch Order', 1, ''),
(87, '2012-02-01 17:10:15', 1, 16, '8', 'Table Proposed Batch Order', 1, ''),
(88, '2012-02-01 17:12:28', 1, 14, '2', 'LSDI', 2, 'Added state "Batch Order Chunked (LSDI)".'),
(89, '2012-02-01 17:14:05', 1, 16, '9', 'Chunk Batch Order into two or more batches', 1, ''),
(90, '2012-02-01 17:14:58', 1, 14, '2', 'LSDI', 2, 'Changed transitions for state "Batch Order Chunked (LSDI)". Changed transitions for state "Batch Order Created (LSDI)".'),
(91, '2012-02-01 17:16:17', 1, 14, '2', 'LSDI', 2, 'Changed transitions for state "Batch Order Proposal Tabled (LSDI)".'),
(92, '2012-02-01 17:16:38', 1, 14, '2', 'LSDI', 2, 'Changed transitions for state "Batch Order Deemed Technically Feasible (LSDI)".'),
(93, '2012-02-01 17:17:49', 1, 14, '2', 'LSDI', 2, 'Changed transitions for state "Batch Order Itemized (LSDI)".'),
(94, '2012-02-01 17:18:26', 1, 14, '2', 'LSDI', 2, 'Changed name for state "Batch Order Proposed (LSDI)".'),
(95, '2012-02-01 17:24:22', 1, 14, '2', 'LSDI', 2, 'Changed transitions for state "Batch Order Proposal Rejected (LSDI)".'),
(96, '2012-02-01 17:24:36', 1, 14, '2', 'LSDI', 2, 'Changed transitions for state "Batch Order Approved (LSDI)".');

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
(36, 'hathi trust_ item', 'repo_checker', 'hathitrust_item'),
(37, 'migration history', 'south', 'migrationhistory');

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('504e6bd2b56ba76fcd38e7dc3d46e713', 'YWRmZTAwMzRiOWM3M2UwMjJlZTkwZmIzMmI3NzMwNzk5ZDA1ZjQ1NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-02-24 12:51:31'),
('cdde4472606d766544b9a4e218daa27a', 'YWRmZTAwMzRiOWM3M2UwMjJlZTkwZmIzMmI3NzMwNzk5ZDA1ZjQ1NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-02-08 18:16:05');

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

--
-- Dumping data for table `permissions_permission`
--

INSERT INTO `permissions_permission` (`id`, `name`, `codename`) VALUES
(1, 'View', 'view'),
(2, 'Edit', 'edit');

--
-- Dumping data for table `permissions_permission_content_types`
--

INSERT INTO `permissions_permission_content_types` (`id`, `permission_id`, `contenttype_id`) VALUES
(4, 1, 28),
(3, 1, 32),
(2, 2, 28),
(1, 2, 32);

--
-- Dumping data for table `permissions_principalrolerelation`
--

INSERT INTO `permissions_principalrolerelation` (`id`, `user_id`, `group_id`, `role_id`, `content_type_id`, `content_id`) VALUES
(1, 1, 1, 1, 32, NULL);

--
-- Dumping data for table `permissions_role`
--

INSERT INTO `permissions_role` (`id`, `name`) VALUES
(1, 'Owner');

--
-- Dumping data for table `south_migrationhistory`
--

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`) VALUES
(1, 'digwf', '0001_initial', '2012-02-01 21:21:50'),
(2, 'repo_checker', '0001_initial', '2012-02-01 21:22:20'),
(3, 'repo_checker', '0002_auto__add_field_record_oclc_trimmed__chg_field_record_library', '2012-02-09 10:57:17'),
(4, 'repo_checker', '0003_auto__chg_field_record_oclc_trimmed', '2012-02-09 10:58:06'),
(5, 'repo_checker', '0004_auto__chg_field_record_barcode__add_unique_record_barcode', '2012-02-09 18:10:47');

--
-- Dumping data for table `workflows_state`
--

INSERT INTO `workflows_state` (`id`, `name`, `workflow_id`) VALUES
(4, 'Batch Order Created', 2),
(5, 'Batch Order Itemized', 2),
(6, 'Batch Order Proposed', 2),
(7, 'Batch Order Approved', 2),
(8, 'Batch Order Rights OK''d', 2),
(9, 'Batch Order Deemed Technically Feasible', 2),
(10, 'Batch Order Proposal Rejected', 2),
(11, 'Batch Order Proposal Tabled', 2),
(12, 'Batch Order Chunked', 2);

--
-- Dumping data for table `workflows_state_transitions`
--

INSERT INTO `workflows_state_transitions` (`id`, `state_id`, `transition_id`) VALUES
(3, 4, 2),
(4, 4, 3),
(2, 4, 8),
(15, 5, 4),
(16, 5, 6),
(17, 5, 7),
(21, 7, 3),
(20, 7, 8),
(13, 9, 3),
(14, 9, 5),
(12, 9, 8),
(19, 10, 4),
(18, 10, 8),
(5, 11, 2),
(6, 11, 3),
(7, 11, 4),
(8, 11, 5),
(9, 11, 6),
(10, 11, 7),
(11, 11, 9),
(1, 12, 9);

--
-- Dumping data for table `workflows_transition`
--

INSERT INTO `workflows_transition` (`id`, `name`, `workflow_id`, `destination_id`, `condition`, `permission_id`) VALUES
(2, 'Itemize Batch Order', 2, 5, '', 2),
(3, 'Reject Batch Order', 2, 10, '', 2),
(4, 'Propose/Request Batch Order', 2, 6, '', 2),
(5, 'Approve Batch Order', 2, 7, '', 2),
(6, 'OK Rights for Batch Order', 2, 8, '', 2),
(7, 'OK Technical Feasibility for Batch Order', 2, 9, '', 2),
(8, 'Table Proposed Batch Order', 2, 11, '', 2),
(9, 'Chunk Batch Order into two or more batches', 2, 12, '', 2);

--
-- Dumping data for table `workflows_workflow`
--

INSERT INTO `workflows_workflow` (`id`, `name`, `initial_state_id`) VALUES
(2, 'LSDI', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
