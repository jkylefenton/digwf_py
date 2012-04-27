-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2012 at 04:09 PM
-- Server version: 5.5.19
-- PHP Version: 5.3.8

SET FOREIGN_KEY_CHECKS=0;
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
(25, 'Can add migration history', 9, 'add_migrationhistory'),
(26, 'Can change migration history', 9, 'change_migrationhistory'),
(27, 'Can delete migration history', 9, 'delete_migrationhistory'),
(28, 'Can add permission', 10, 'add_permission'),
(29, 'Can change permission', 10, 'change_permission'),
(30, 'Can delete permission', 10, 'delete_permission'),
(31, 'Can add object permission', 11, 'add_objectpermission'),
(32, 'Can change object permission', 11, 'change_objectpermission'),
(33, 'Can delete object permission', 11, 'delete_objectpermission'),
(34, 'Can add object permission inheritance block', 12, 'add_objectpermissioninheritanceblock'),
(35, 'Can change object permission inheritance block', 12, 'change_objectpermissioninheritanceblock'),
(36, 'Can delete object permission inheritance block', 12, 'delete_objectpermissioninheritanceblock'),
(37, 'Can add role', 13, 'add_role'),
(38, 'Can change role', 13, 'change_role'),
(39, 'Can delete role', 13, 'delete_role'),
(40, 'Can add principal role relation', 14, 'add_principalrolerelation'),
(41, 'Can change principal role relation', 14, 'change_principalrolerelation'),
(42, 'Can delete principal role relation', 14, 'delete_principalrolerelation'),
(43, 'Can add workflow', 15, 'add_workflow'),
(44, 'Can change workflow', 15, 'change_workflow'),
(45, 'Can delete workflow', 15, 'delete_workflow'),
(46, 'Can add state', 16, 'add_state'),
(47, 'Can change state', 16, 'change_state'),
(48, 'Can delete state', 16, 'delete_state'),
(49, 'Can add transition', 17, 'add_transition'),
(50, 'Can change transition', 17, 'change_transition'),
(51, 'Can delete transition', 17, 'delete_transition'),
(52, 'Can add state object relation', 18, 'add_stateobjectrelation'),
(53, 'Can change state object relation', 18, 'change_stateobjectrelation'),
(54, 'Can delete state object relation', 18, 'delete_stateobjectrelation'),
(55, 'Can add workflow object relation', 19, 'add_workflowobjectrelation'),
(56, 'Can change workflow object relation', 19, 'change_workflowobjectrelation'),
(57, 'Can delete workflow object relation', 19, 'delete_workflowobjectrelation'),
(58, 'Can add workflow model relation', 20, 'add_workflowmodelrelation'),
(59, 'Can change workflow model relation', 20, 'change_workflowmodelrelation'),
(60, 'Can delete workflow model relation', 20, 'delete_workflowmodelrelation'),
(61, 'Can add workflow permission relation', 21, 'add_workflowpermissionrelation'),
(62, 'Can change workflow permission relation', 21, 'change_workflowpermissionrelation'),
(63, 'Can delete workflow permission relation', 21, 'delete_workflowpermissionrelation'),
(64, 'Can add state inheritance block', 22, 'add_stateinheritanceblock'),
(65, 'Can change state inheritance block', 22, 'change_stateinheritanceblock'),
(66, 'Can delete state inheritance block', 22, 'delete_stateinheritanceblock'),
(67, 'Can add state permission relation', 23, 'add_statepermissionrelation'),
(68, 'Can change state permission relation', 23, 'change_statepermissionrelation'),
(69, 'Can delete state permission relation', 23, 'delete_statepermissionrelation'),
(70, 'Can add collection', 24, 'add_collection'),
(71, 'Can change collection', 24, 'change_collection'),
(72, 'Can delete collection', 24, 'delete_collection'),
(73, 'Can add publication_ state', 25, 'add_publication_state'),
(74, 'Can change publication_ state', 25, 'change_publication_state'),
(75, 'Can delete publication_ state', 25, 'delete_publication_state'),
(76, 'Can add rejection_ code', 26, 'add_rejection_code'),
(77, 'Can change rejection_ code', 26, 'change_rejection_code'),
(78, 'Can delete rejection_ code', 26, 'delete_rejection_code'),
(82, 'Can add agent', 28, 'add_agent'),
(83, 'Can change agent', 28, 'change_agent'),
(84, 'Can delete agent', 28, 'delete_agent'),
(85, 'Can add person', 29, 'add_person'),
(86, 'Can change person', 29, 'change_person'),
(87, 'Can delete person', 29, 'delete_person'),
(91, 'Can add order', 31, 'add_order'),
(92, 'Can change order', 31, 'change_order'),
(93, 'Can delete order', 31, 'delete_order'),
(94, 'Can add rights', 32, 'add_rights'),
(95, 'Can change rights', 32, 'change_rights'),
(96, 'Can delete rights', 32, 'delete_rights'),
(97, 'Can add resource_ type', 33, 'add_resource_type'),
(98, 'Can change resource_ type', 33, 'change_resource_type'),
(99, 'Can delete resource_ type', 33, 'delete_resource_type'),
(100, 'Can add metadata_ term', 34, 'add_metadata_term'),
(101, 'Can change metadata_ term', 34, 'change_metadata_term'),
(102, 'Can delete metadata_ term', 34, 'delete_metadata_term'),
(103, 'Can add item', 35, 'add_item'),
(104, 'Can change item', 35, 'change_item'),
(105, 'Can delete item', 35, 'delete_item'),
(109, 'Can add metadata', 37, 'add_metadata'),
(110, 'Can change metadata', 37, 'change_metadata'),
(111, 'Can delete metadata', 37, 'delete_metadata'),
(112, 'Can add error_ code', 38, 'add_error_code'),
(113, 'Can change error_ code', 38, 'change_error_code'),
(114, 'Can delete error_ code', 38, 'delete_error_code'),
(115, 'Can add record', 39, 'add_record'),
(116, 'Can change record', 39, 'change_record'),
(117, 'Can delete record', 39, 'delete_record'),
(118, 'Can add hathi trust_ item', 40, 'add_hathitrust_item'),
(119, 'Can change hathi trust_ item', 40, 'change_hathitrust_item'),
(120, 'Can delete hathi trust_ item', 40, 'delete_hathitrust_item'),
(121, 'Can add organization', 41, 'add_organization'),
(122, 'Can change organization', 41, 'change_organization'),
(123, 'Can delete organization', 41, 'delete_organization'),
(127, 'Can add order item', 43, 'add_orderitem'),
(128, 'Can change order item', 43, 'change_orderitem'),
(129, 'Can delete order item', 43, 'delete_orderitem'),
(130, 'Can add item identifier type', 44, 'add_itemidentifiertype'),
(131, 'Can change item identifier type', 44, 'change_itemidentifiertype'),
(132, 'Can delete item identifier type', 44, 'delete_itemidentifiertype'),
(133, 'Can add item identifier', 45, 'add_itemidentifier'),
(134, 'Can change item identifier', 45, 'change_itemidentifier'),
(135, 'Can delete item identifier', 45, 'delete_itemidentifier'),
(136, 'Can add digital component type', 46, 'add_digitalcomponenttype'),
(137, 'Can change digital component type', 46, 'change_digitalcomponenttype'),
(138, 'Can delete digital component type', 46, 'delete_digitalcomponenttype'),
(139, 'Can add digital item', 47, 'add_digitalitem'),
(140, 'Can change digital item', 47, 'change_digitalitem'),
(141, 'Can delete digital item', 47, 'delete_digitalitem'),
(142, 'Can add digital component', 48, 'add_digitalcomponent'),
(143, 'Can change digital component', 48, 'change_digitalcomponent'),
(144, 'Can delete digital component', 48, 'delete_digitalcomponent');

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'jfenton', 'Kyle', 'Fenton', 'kyle.fenton@emory.edu', 'sha1$a76e3$e2f240138899275e7f9100a0d135c73ea6bfc906', 1, 1, 1, '2012-03-29 16:25:53', '2012-03-27 21:37:00'),
(2, 'bwoolge', 'Bonnie Jean', 'Woolger', 'bwoolge@emory.edu', 'sha1$2701b$3eee1f2a330b0a48f0ad43ce9fe179cd3bf5f852', 1, 1, 0, '2012-03-28 13:44:25', '2012-03-28 13:44:25'),
(3, 'bmethot', 'Brian', 'Methot', 'bmethot@emory.edu', 'sha1$fa72a$44bb59e4a72ef94a5eafe3e484485eb7dc522911', 1, 1, 0, '2012-03-28 13:44:57', '2012-03-28 13:44:57'),
(4, 'prknigh', 'Paige', 'Knight', 'prknigh@emory.edu', 'sha1$84dd0$59fd84a48ea43e2654593adc96669638f3d68fef', 1, 1, 0, '2012-03-28 13:45:23', '2012-03-28 13:45:23'),
(5, 'tbunn', 'Trey', 'Bunn', 'tbunn@emory.edu', 'sha1$fe7e0$12143db9978485530247f4ec79a9bece24fae104', 1, 1, 0, '2012-03-28 13:45:58', '2012-03-28 13:45:58'),
(6, 'zwang31', 'Zheng', 'Wang', 'zheng.wang@emory.edu', 'sha1$da8a4$2089bc7fc22851c1bfe84fb09ed2cd6240884da5', 1, 1, 0, '2012-03-28 13:55:50', '2012-03-28 13:55:50');

--
-- Dumping data for table `digwf_agent`
--

INSERT INTO `digwf_agent` (`id`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`) VALUES
(1, '', '', '', '', NULL, NULL, 'marbl@emory.edu'),
(2, '', '', '', '', NULL, NULL, 'eachase@emory.edu'),
(3, '', '', '', '', NULL, NULL, 'erussey@emory.edu'),
(4, '', '', '', '', NULL, NULL, 'marbl@emory.edu'),
(5, '', '', '', '', NULL, NULL, 'stewart.varner@emory.edu'),
(6, '', '', '', '', NULL, NULL, ''),
(7, '', '', '', '', NULL, NULL, 'abogleb@emory.edu'),
(8, '', '', '', '', NULL, NULL, ''),
(9, '', '', '', '', NULL, NULL, 'mcpage@emory.edu'),
(10, '', '', '', '', NULL, NULL, ''),
(11, '', '', '', '', NULL, NULL, 'libmpg@emory.edu'),
(12, '', '', '', '', NULL, NULL, 'michael.w.konomos@emory.edu'),
(13, '1762 Clifton Road NE, Suite 2200', '', 'Atlanta', 'GA', 30322, NULL, ''),
(15, '', '', '', 'GA', NULL, '', ''),
(16, '1600 Clifton Road, MS - A14', '', 'Atlanta', 'GA', 30333, NULL, 'asf5@cdc.gov'),
(17, '', '', '', '', NULL, '', 'kate.donovan.jarvis@emory.edu');

--
-- Dumping data for table `digwf_collection`
--

INSERT INTO `digwf_collection` (`id`, `collection_short_name`, `collection_description`, `collection_url`, `parent_collection_id`) VALUES
(1, 'LSDI', 'Emory Digital Editions', '', NULL),
(2, 'MARBL MSS', 'MARBL Manuscript Collections', '', NULL),
(3, 'EUA Series', 'Emory University Archives Series', '', NULL),
(4, 'Pitts MSS', 'Pitts Theology Library Manuscripts', '', NULL),
(5, 'Pitts RG', 'Pitts Theology Library Record Groups', '', NULL),
(6, 'Methodism', '', '', 1),
(7, 'Yellowbacks', 'Victorian Yellowback Books', '', 1),
(8, 'Theology Ref', 'Theology Reference', '', 1),
(9, 'Regimental Hist', 'Regimental Histories', '', 1),
(10, 'MARBL RB', 'MARBL Rare Books', '', 1),
(11, 'General (Books)', '', '', 1),
(12, 'Atl City Dir', 'Atlanta City Directories', '', 1),
(13, 'Meth Conf Min', 'Methodist Conference Minutes', '', 1),
(14, 'Ga St Hse Jrnls', 'Georgia State House Journals', '', 1),
(15, 'Ga St Sen Jrnls', 'Georgia State Senate Journals', '', 1),
(16, 'Emory Yrbks', 'Emory Yearbooks', '', 1),
(17, 'Emory Pubs', 'Emory Publications', '', 1),
(18, 'Civil War Lit', 'Civil War Literature', '', 1),
(19, 'Af Am Lit', 'African American Literature', '', 1),
(20, 'Early N. Euro', 'Early Northern European Books', '', 1),
(21, 'Triple Deckers', 'Victorian Triple Decker Books', '', 1),
(22, 'Baedeckers', 'Baedecker Travel Guides', '', 1),
(23, 'MARBL MSS 600', 'W. B. (William Butler) Yeats collection', '', 2),
(24, 'MARBL MSS 558', 'William Berry Hartsfield Papers', '', 2),
(25, 'Berman papers', 'Harold J. Berman papers', '', NULL);

--
-- Dumping data for table `digwf_digitalcomponenttype`
--

INSERT INTO `digwf_digitalcomponenttype` (`id`, `label`, `name`, `documentation_url`, `default_regex`) VALUES
(1, 'DC-XML', 'Dublin Core XML', '', ''),
(2, 'OCR-ABBYY', 'ABBYY Finereader XML', '', 'Output/XML/*.xml'),
(3, 'PDF', 'Adobe Acrobat PDF file', '', 'Output/PDF/*.pdf'),
(4, 'PDF-A', 'Adobe Acrobat PDF-Archival', '', ''),
(5, 'TXT', 'Plain Text files from OCR', '', 'Output/OCR/*.txt'),
(6, 'POS', 'Word Position files from OCR', '', 'Output/OCR/*.pos'),
(7, 'MARCXML', 'MARCXML from ILS', '', '*_MRC.xml'),
(8, 'JP2', 'JPEG 2000 display files', '', 'Output/Images/JP2/*.jp2'),
(9, 'METS', 'METS from Kirtas software', '', 'Output/Metadata/*_METS.xml'),
(10, 'ALTO', 'ALTO from Kirtas software', '', 'Output/Metadata/ALTO/*_ALTO'),
(11, 'MODS', 'MODS file', '', ''),
(12, 'RAW', '''RAW'' images from camera', '', 'IMAGES/*'),
(13, 'MASTER', 'Image Masters (if diff. from RAW)', '', 'IMAGES/*'),
(14, 'DISPLAY', 'Display/Presentation Image Versions', '', 'Output/Images/*');

--
-- Dumping data for table `digwf_item`
--

INSERT INTO `digwf_item` (`id`, `collection_id_id`, `enumcron`, `foldout_count`, `created_at`, `updated_at`, `is_rush`, `notification_email`, `due_date`, `is_brittle`, `is_paginated`, `has_binding`, `is_serial`, `to_archive`, `is_resource_type_id`, `has_rights_id`, `pub_state_id`, `pub_place`, `pub_year`, `has_typeset_text`, `note`, `rejection_code_id`, `time_spent`, `owner_originals`, `is_already_digitized`, `title`) VALUES
(2, 10, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 6, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Coole Park poem, 2 pages'),
(3, 10, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 6, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, '"On a child''s death" MS Poem'),
(4, 10, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 6, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Photo of Lady Gregory''s library'),
(5, 10, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 6, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Photo of Lady Gregory'),
(6, 10, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 6, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Lady Gregory Photograph'),
(7, 23, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 1, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Portrait by Augustus John 1907'),
(8, 23, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 1, 'Photo: W.B. Yeats, 1903'),
(9, 23, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 1, 'Photo: Yeats and George at Mission Conception in San Antonio, Texas, 1920.'),
(10, 23, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Photo: W.B. Yeats with daughter, Anne, 1919.'),
(11, 24, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 1, 'H. on roof of City Hall 1961'),
(12, 23, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 1, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Downtown Atlanta 1960s'),
(13, 24, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 1, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 0, 'Airport (4 photos together)'),
(14, 24, '', NULL, '2012-04-05', '2012-04-05', 0, '', NULL, 0, 0, 0, 0, 0, 4, NULL, NULL, '', NULL, 0, '', NULL, NULL, '', 1, 'WBH age 4-5');

--
-- Dumping data for table `digwf_itemidentifier`
--

INSERT INTO `digwf_itemidentifier` (`id`, `item_id`, `type_id`, `value`) VALUES
(1, 2, 1, 'PR4728 G5C65 1931'),
(2, 3, 1, 'PR5900 A3 1899 C2'),
(3, 4, 1, 'PR4728 G5Z27 1978a'),
(4, 5, 1, 'PR4728 G5A19 1971 v2'),
(5, 6, 1, 'PR4728 G5Z5 1973'),
(6, 7, 9, '10211'),
(7, 8, 9, '3580'),
(8, 9, 9, '3588'),
(9, 9, 10, '0600-013'),
(10, 10, 9, '3610'),
(11, 11, 9, '4140'),
(12, 14, 9, '4130');

--
-- Dumping data for table `digwf_itemidentifiertype`
--

INSERT INTO `digwf_itemidentifiertype` (`id`, `label`, `name`, `documentation_url`) VALUES
(1, 'CALL#', 'Call Number', ''),
(2, 'OCLC#', 'OCLC record control number', 'http://www.oclc.org/batchprocessing/controlnumber.htm'),
(3, 'LCCN#', 'Library of Congress Control Number', 'http://www.loc.gov/marc/lccn.html'),
(4, 'ISBN10', 'International Standard Book Number (10 digit)', 'http://www.isbn.org/standards/home/about/faqs_main.html'),
(5, 'ISBN13', 'International Standard Book Number (13 digit)', 'http://www.isbn.org/standards/home/about/faqs_main.html'),
(6, 'ISSN', 'International Standard Serial Number', 'http://www.issn.org/2-22635-What-is-an-ISSN.php'),
(7, 'Barcode', 'Local Barcode', ''),
(8, 'ARK PID', 'Archival Resource Key Name', 'https://confluence.ucop.edu/display/Curation/ARK+Anatomy'),
(9, 'DM#', 'Digital Masters Record Number', 'http://masters.library.emory.edu/'),
(10, 'DM-OID', 'Digital Masters - Other Identifier', '');

--
-- Dumping data for table `digwf_metadata_term`
--

INSERT INTO `digwf_metadata_term` (`id`, `label`, `name`, `documentation_url`) VALUES
(1, 'dcterms.accessRights', 'Access Rights', 'http://dublincore.org/documents/dcmi-terms/#terms-accessRights'),
(2, 'dcterms.coverage', 'Coverage', 'http://dublincore.org/documents/dcmi-terms/#terms-coverage'),
(3, 'dcterms.creator', 'Creator', 'http://dublincore.org/documents/dcmi-terms/#terms-creator'),
(4, 'dcterms.date', 'Date', 'http://dublincore.org/documents/dcmi-terms/#terms-date'),
(5, 'dcterms.dateCopyrighted', 'Date Copyrighted', 'http://dublincore.org/documents/dcmi-terms/#terms-dateCopyrighted'),
(6, 'dcterms.description', 'Description', 'http://dublincore.org/documents/dcmi-terms/#terms-description'),
(7, 'dcterms.format', 'Format', 'http://dublincore.org/documents/dcmi-terms/#terms-format'),
(8, 'dcterms.hasPart', 'Has Part (Relation)', 'http://dublincore.org/documents/dcmi-terms/#terms-hasPart'),
(9, 'dcterms.identifier', 'Identifier', 'http://dublincore.org/documents/dcmi-terms/#terms-identifier'),
(10, 'dcterms.isPartOf', 'Is Part Of (Relation)', 'http://dublincore.org/documents/dcmi-terms/#terms-isPartOf'),
(11, 'dcterms.isVersionOf', 'Is Version Of (Relation)', 'http://dublincore.org/documents/dcmi-terms/#terms-isVersionOf'),
(12, 'dcterms.language', 'Language', 'http://dublincore.org/documents/dcmi-terms/#terms-language'),
(13, 'dcterms.publisher', 'Publisher', 'http://dublincore.org/documents/dcmi-terms/#terms-publisher'),
(14, 'dcterms.rights', 'Rights', 'http://dublincore.org/documents/dcmi-terms/#terms-rights'),
(15, 'dcterms.source', 'Source', 'http://dublincore.org/documents/dcmi-terms/#terms-source'),
(16, 'dcterms.subject', 'Subject', 'http://dublincore.org/documents/dcmi-terms/#terms-subject'),
(17, 'dcterms.type', 'Type', 'http://dublincore.org/documents/dcmi-terms/#terms-type'),
(18, 'dcterms.title', 'Title', '');

--
-- Dumping data for table `digwf_order`
--

INSERT INTO `digwf_order` (`id`, `order_type`, `order_title`, `date_order_due`, `date_order_approved`, `date_order_completed`, `date_originals_received`, `date_originals_returned`, `originals_received_by`, `originals_returned_to`, `is_rush`, `delivery_method`, `customer_notes`, `processing_notes`, `archive_surrogates`, `owner_originals`, `release_on_file`, `default_collection_id`, `copyright_owner`, `copyright_permission_statement`, `copyright_permission_terms`, `copyright_end_user_rights`) VALUES
(4, 'marbl_patron', 'O''Daniel order 12/19/2011', '2011-12-22', '2012-03-29', '2011-12-20', '2011-12-19', '2011-12-20', 'BMM', 'SC', 1, 'yousendit', '', 'Check with Preservation on Vellum Bound Vault book, spine may be too tight.  Keep item 11 in locked cabinet', 1, 'marbl', 0, 23, '', '', '', ''),
(5, 'marbl_patron', 'Rapkin order 11/30/11', '2011-12-14', '2012-03-29', '2011-12-02', '2011-11-30', '2011-12-07', 'BMM', 'EC', 0, 'yousendit', '', '', 1, 'marbl', 0, 24, '', '', '', ''),
(6, 'library_exhibit', 'Love Letters 2012 exhibit', '2012-01-24', '2012-03-29', '2012-01-23', '2012-01-17', NULL, 'BMM', '', 0, '', 'upload images to F:\\Librarywide\\MARBL\\Exhibits\\LoveLetters_2012', '', 1, 'marbl', 0, NULL, '', '', '', ''),
(7, 'emory_digital_editions', 'Georgia Methodist Conference Minutes', '2012-04-29', '2012-03-29', NULL, NULL, NULL, '', '', 0, '', '', 'will explore digitizing these from microfilm', 1, 'theology', 0, 13, 'Methodist Church', '', '', ''),
(8, 'emory_non_library', 'Berman papers, last box', '2012-01-30', '2012-03-29', '2012-01-30', '2012-01-02', '2012-01-30', 'JKF', 'Julie Kessler', 1, 'hdd_we_supply', '', '', 1, 'eu-customer', 0, NULL, 'Harold J. Berman (Estate)', 'Reproduced by permission of the Estate of Harold J. Berman', 'Further reproduction or duplication is limited to fair use, i.e. not used for any purpose other than private study, scholarship, or research, except with the written permission of John Witte, Jr., Literary Executor of the Estate of Harold J. Berman', '');

--
-- Dumping data for table `digwf_orderitem`
--

INSERT INTO `digwf_orderitem` (`id`, `order_id`, `item_id`, `date_added`) VALUES
(5, 4, 2, '2012-04-05 08:52:44'),
(6, 4, 3, '2012-04-05 08:52:44'),
(7, 4, 5, '2012-04-05 08:57:55'),
(8, 4, 4, '2012-04-05 08:57:55'),
(9, 4, 7, '2012-04-05 09:35:36'),
(10, 4, 10, '2012-04-05 09:56:54');

--
-- Dumping data for table `digwf_organization`
--

INSERT INTO `digwf_organization` (`agent_ptr_id`, `organization_name`, `organization_short_name`, `main_contact_id`) VALUES
(4, 'Manuscript, Archives and Rare Book Library', 'MARBL', 2),
(6, 'Digital Scholarship Commons', 'DiSC', 5),
(8, 'Center for the Study of Law and Religion', 'CSLR', 7),
(10, 'Electronic Data Center', 'EDC', 9),
(13, 'Emory Department of Surgery', 'Surgery Dept.', 12),
(15, 'Centers for Disease Control and Prevention', 'CDC', 16);

--
-- Dumping data for table `digwf_person`
--

INSERT INTO `digwf_person` (`agent_ptr_id`, `person_last_name`, `person_first_name`, `title`) VALUES
(2, 'Chase', 'Liz', NULL),
(3, 'Roke', 'Elizabeth', NULL),
(5, 'Varner', 'Stuart', 'Librarian (DiSC)'),
(7, 'Bogle', 'April', ''),
(9, 'Page', 'Michael', 'Geospatial Services Librarian'),
(11, 'Graham', 'Pat', 'Director, Pitts Theology Library'),
(12, 'Konomos', 'Michael', 'Biovisualist, Lead Multimedia Developer'),
(16, 'Hilpertshauser', 'Mary', ''),
(17, 'Jarvis', 'Kate', 'Emory University Archivist');

--
-- Dumping data for table `digwf_publication_state`
--

INSERT INTO `digwf_publication_state` (`id`, `status`) VALUES
(1, 'Not Published'),
(2, 'Being Published'),
(3, 'Pre Print'),
(4, 'Published');

--
-- Dumping data for table `digwf_rejection_code`
--

INSERT INTO `digwf_rejection_code` (`id`, `code`, `description`) VALUES
(1, 'BI', 'Fragile or has no binding'),
(2, 'CAT', 'Unreadable'),
(3, 'DAM', 'Damaged item'),
(4, 'DAT', 'In-copyright'),
(5, 'DUP', 'Exact duplicate of another item on list'),
(6, 'LIST', 'Pull list error'),
(7, 'MAR', 'Margins/gutters too tight to scan'),
(8, 'MISPG', 'Missing Pages (>5) in Item'),
(9, 'NOS', 'Item not on shelf (missing/lost)'),
(10, 'OUT', 'Item not on shelf (checked out)'),
(11, 'PAG', 'Pagination issues (sections out of order e.g.)'),
(12, 'PAP', 'Item has brittle pages, no non-destructive scans'),
(13, 'SKW', 'Item has skewed text (unreadable)'),
(14, 'SMAL', 'Item too small to scan'),
(15, 'LARG', 'Item to large to scan'),
(16, 'SPH', 'Item requires special handling, unable to provide'),
(17, 'UNC', 'Item has too many uncut pages'),
(18, 'VELUM', 'Vellum binding'),
(19, 'WD', 'Item was withdrawn');

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
(11, 'microform', 'Microfilm, microfiche, micro-opaque, etc.'),
(12, 'serial', 'A serial publication');

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
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(2, '2012-03-27 21:57:16', 1, 29, '2', 'Chase, Liz', 1, ''),
(3, '2012-03-27 21:57:35', 1, 29, '3', 'Roke, Elizabeth', 1, ''),
(5, '2012-03-27 22:24:27', 1, 26, '1', 'BI : Item is fragile or has no binding', 1, ''),
(6, '2012-03-27 22:24:37', 1, 26, '2', 'CAT : Item is unreadable', 1, ''),
(7, '2012-03-27 22:24:47', 1, 26, '3', 'DAM : Item is damaged', 1, ''),
(8, '2012-03-27 22:25:00', 1, 26, '4', 'DAT : Item is still in copyright', 1, ''),
(9, '2012-03-27 22:25:19', 1, 26, '5', 'DUP : Item is an exact duplicate of another item on list', 1, ''),
(10, '2012-03-27 22:26:35', 1, 26, '6', 'LIST : Pull list error', 1, ''),
(11, '2012-03-27 22:27:01', 1, 26, '7', 'MAR : Margins/gutters too tight to scan', 1, ''),
(12, '2012-03-27 22:27:13', 1, 26, '1', 'BI : Fragile or has no binding', 2, 'Changed description.'),
(13, '2012-03-27 22:27:21', 1, 26, '2', 'CAT : Unreadable', 2, 'Changed description.'),
(14, '2012-03-27 22:27:39', 1, 26, '3', 'DAM : Damaged item', 2, 'Changed description.'),
(15, '2012-03-27 22:27:59', 1, 26, '4', 'DAT : In-copyright', 2, 'Changed description.'),
(16, '2012-03-27 22:28:08', 1, 26, '5', 'DUP : Exact duplicate of another item on list', 2, 'Changed description.'),
(17, '2012-03-27 22:28:33', 1, 26, '8', 'MISPG : Missing Pages (>5) in Item', 1, ''),
(18, '2012-03-27 22:29:23', 1, 26, '9', 'MIS : Item is missing', 1, ''),
(19, '2012-03-27 22:29:56', 1, 26, '9', 'NOS : Item not on shelf (missing/lost)', 2, 'Changed code and description.'),
(20, '2012-03-27 22:30:11', 1, 26, '10', 'OUT : Item not on shelf (checked out)', 1, ''),
(21, '2012-03-27 22:30:49', 1, 26, '11', 'PAG : Pagination issues (sections out of order e.g.)', 1, ''),
(22, '2012-03-27 22:31:15', 1, 26, '12', 'PAP : Item has brittle pages, no non-destructive scans', 1, ''),
(23, '2012-03-27 22:31:41', 1, 26, '13', 'SKW : Item has skewed text (unreadable)', 1, ''),
(24, '2012-03-27 22:32:08', 1, 26, '14', 'SMAL : Item too small to scan', 1, ''),
(25, '2012-03-27 22:32:22', 1, 26, '15', 'LARG : Item to large to scan', 1, ''),
(26, '2012-03-27 22:33:12', 1, 26, '16', 'SPH : Item requires special handling, unable to provide', 1, ''),
(27, '2012-03-27 22:33:29', 1, 26, '17', 'UNC : Item has too many uncut pages', 1, ''),
(28, '2012-03-27 22:33:42', 1, 26, '18', 'VELUM : Vellum binding', 1, ''),
(29, '2012-03-27 22:33:52', 1, 26, '19', 'WD : Item was withdrawn', 1, ''),
(30, '2012-03-28 09:44:55', 1, 33, '1', 'cartographic : A cartographic (map) resource.  Benefits from supplemental geospatial metadata', 1, ''),
(31, '2012-03-28 09:45:09', 1, 33, '2', 'mixed material : ', 1, ''),
(32, '2012-03-28 09:45:29', 1, 33, '3', 'moving image : A series of visual representations imparting an impression of motion when shown in succession.  Examples include animations, movies, television programs, videos, zoetropes, or visual ou', 1, ''),
(33, '2012-03-28 09:45:39', 1, 33, '4', 'still image : ', 1, ''),
(34, '2012-03-28 09:45:55', 1, 33, '5', 'text (non-book) : Text based resource, whether handwritten or typeset, that is not a publication.  May have a binding, as with scrapbooks.', 1, ''),
(35, '2012-03-28 09:46:17', 1, 33, '6', 'monograph : A non-serial publication complete in one volume (book) or a finite number of volumes. Thus it differs from a serial publication such as a magazine, journal, or newspaper.', 1, ''),
(36, '2012-03-28 09:46:27', 1, 33, '7', 'notated music : ', 1, ''),
(37, '2012-03-28 09:47:24', 1, 33, '8', 'sound recording : ', 1, ''),
(38, '2012-03-28 09:47:29', 1, 33, '9', '3-D object : ', 1, ''),
(39, '2012-03-28 09:47:39', 1, 33, '10', 'slide (film) : ', 1, ''),
(40, '2012-03-28 09:47:58', 1, 33, '11', 'microform : Microfilm, microfiche, micro-opaque, etc.', 1, ''),
(41, '2012-03-28 09:48:10', 1, 33, '12', 'serial : A serial publication', 1, ''),
(42, '2012-03-28 09:49:44', 1, 25, '1', 'Not Published', 1, ''),
(43, '2012-03-28 09:49:49', 1, 25, '2', 'Being Published', 1, ''),
(44, '2012-03-28 09:49:54', 1, 25, '3', 'Pre Print', 1, ''),
(45, '2012-03-28 09:50:00', 1, 25, '4', 'Published', 1, ''),
(46, '2012-03-28 09:56:57', 1, 41, '4', 'Organization object', 1, ''),
(47, '2012-03-28 09:57:24', 1, 41, '4', 'Organization object', 2, 'Changed organization_name.'),
(48, '2012-03-28 10:00:25', 1, 29, '5', 'Varner, Stuart', 1, ''),
(49, '2012-03-28 10:00:31', 1, 41, '6', 'Organization object', 1, ''),
(50, '2012-03-28 10:05:49', 1, 29, '7', 'Bogle, April', 1, ''),
(51, '2012-03-28 10:05:51', 1, 41, '8', 'Organization object', 1, ''),
(52, '2012-03-28 10:07:25', 1, 29, '9', 'Page, Michael', 1, ''),
(53, '2012-03-28 10:07:27', 1, 41, '10', 'Organization object', 1, ''),
(54, '2012-03-28 10:08:32', 1, 29, '11', 'Graham, Pat', 1, ''),
(55, '2012-03-28 10:10:36', 1, 29, '12', 'Konomos, Michael', 1, ''),
(56, '2012-03-28 10:12:29', 1, 41, '13', 'Organization object', 1, ''),
(57, '2012-03-28 10:12:43', 1, 41, '13', 'Organization object', 2, 'Changed main_contact.'),
(58, '2012-03-28 10:13:02', 1, 41, '13', 'Organization object', 2, 'Changed organization_short_name.'),
(59, '2012-03-28 10:15:34', 1, 41, '15', 'Organization object', 1, ''),
(60, '2012-03-28 10:16:54', 1, 29, '16', 'Hilpertshauser, Mary', 1, ''),
(61, '2012-03-28 10:31:36', 1, 41, '15', 'Organization object', 2, 'Changed state and main_contact.'),
(62, '2012-03-28 11:05:06', 1, 29, '17', 'Jarvis, Kate', 1, ''),
(63, '2012-03-28 11:40:23', 1, 24, '1', 'LSDI : Emory Digital Editions', 1, ''),
(64, '2012-03-28 11:40:47', 1, 24, '2', 'MARBL MSS : MARBL Manuscript Collections', 1, ''),
(65, '2012-03-28 11:41:06', 1, 24, '3', 'EUA Series : Emory University Archives Series', 1, ''),
(66, '2012-03-28 11:41:26', 1, 24, '4', 'Pitts MSS : Pitts Theology Library Manuscripts', 1, ''),
(67, '2012-03-28 11:41:39', 1, 24, '5', 'Pitts RG : Pitts Theology Library Record Groups', 1, ''),
(68, '2012-03-28 11:42:16', 1, 24, '6', 'Methodism : ', 1, ''),
(69, '2012-03-28 11:42:27', 1, 24, '7', 'Yellowbacks : ', 1, ''),
(70, '2012-03-28 11:42:48', 1, 24, '8', 'Theology Ref : Theology Reference', 1, ''),
(71, '2012-03-28 11:43:11', 1, 24, '9', 'Regimental Hist : Regimental Histories', 1, ''),
(72, '2012-03-28 11:43:27', 1, 24, '10', 'MARBL RB : MARBL Rare Books', 1, ''),
(73, '2012-03-28 11:43:51', 1, 24, '11', 'General (Books) : ', 1, ''),
(74, '2012-03-28 11:44:11', 1, 24, '12', 'Atl City Dir : Atlanta City Directories', 1, ''),
(75, '2012-03-28 11:44:32', 1, 24, '13', 'Meth Conf Min : Methodist Conference Minutes', 1, ''),
(76, '2012-03-28 11:44:50', 1, 24, '14', 'Ga St Hse Jrnls : Georgia State House Journals', 1, ''),
(77, '2012-03-28 11:45:11', 1, 24, '15', 'Ga St Sen Jrnls : Georgia State Senate Journals', 1, ''),
(78, '2012-03-28 11:45:28', 1, 24, '16', 'Emory Yrbks : Emory Yearbooks', 1, ''),
(79, '2012-03-28 11:45:46', 1, 24, '17', 'Emory Pubs : Emory Publications', 1, ''),
(80, '2012-03-28 11:46:09', 1, 24, '18', 'Civil War Lit : Civil War Literature', 1, ''),
(81, '2012-03-28 11:48:49', 1, 24, '7', 'Yellowbacks : Victorian Yellowback Books', 2, 'Changed collection_description.'),
(82, '2012-03-28 11:49:13', 1, 24, '19', 'Af Am Lit : African American Literature', 1, ''),
(83, '2012-03-28 12:53:40', 1, 24, '20', 'Early N. Euro : Early Northern European Books', 1, ''),
(84, '2012-03-28 12:54:05', 1, 24, '21', 'Triple Deckers : Victorian Triple Decker Books', 1, ''),
(85, '2012-03-28 12:54:20', 1, 24, '22', 'Baedeckers : Baedecker Travel Guides', 1, ''),
(86, '2012-03-28 13:19:32', 1, 34, '1', 'dcterms.accessRights', 1, ''),
(87, '2012-03-28 13:19:42', 1, 34, '2', 'dcterms.coverage', 1, ''),
(88, '2012-03-28 13:19:49', 1, 34, '3', 'dcterms.creator', 1, ''),
(89, '2012-03-28 13:19:57', 1, 34, '4', 'dcterms.date', 1, ''),
(90, '2012-03-28 13:20:10', 1, 34, '5', 'dcterms.dateCopyrighted', 1, ''),
(91, '2012-03-28 13:20:19', 1, 34, '6', 'dcterms.description', 1, ''),
(92, '2012-03-28 13:20:33', 1, 34, '7', 'dcterms.format', 1, ''),
(93, '2012-03-28 13:20:46', 1, 34, '8', 'dcterms.hasPart', 1, ''),
(94, '2012-03-28 13:20:59', 1, 34, '9', 'dcterms.identifier', 1, ''),
(95, '2012-03-28 13:21:09', 1, 34, '10', 'dcterms.isPartOf', 1, ''),
(96, '2012-03-28 13:21:21', 1, 34, '11', 'dcterms.isVersionOf', 1, ''),
(97, '2012-03-28 13:21:33', 1, 34, '12', 'dcterms.language', 1, ''),
(98, '2012-03-28 13:21:48', 1, 34, '13', 'dcterms.publisher', 1, ''),
(99, '2012-03-28 13:22:02', 1, 34, '14', 'dcterms.rights', 1, ''),
(100, '2012-03-28 13:22:09', 1, 34, '15', 'dcterms.source', 1, ''),
(101, '2012-03-28 13:22:53', 1, 34, '16', 'dcterms.subject', 1, ''),
(102, '2012-03-28 13:23:01', 1, 34, '17', 'dcterms.type', 1, ''),
(103, '2012-03-28 13:26:59', 1, 34, '1', 'dcterms.accessRights', 2, 'Changed documentation_url.'),
(104, '2012-03-28 13:27:35', 1, 34, '2', 'dcterms.coverage', 2, 'Changed documentation_url.'),
(105, '2012-03-28 13:27:54', 1, 34, '3', 'dcterms.creator', 2, 'Changed documentation_url.'),
(106, '2012-03-28 13:28:15', 1, 34, '4', 'dcterms.date', 2, 'Changed documentation_url.'),
(107, '2012-03-28 13:28:34', 1, 34, '5', 'dcterms.dateCopyrighted', 2, 'Changed documentation_url.'),
(108, '2012-03-28 13:28:43', 1, 34, '6', 'dcterms.description', 2, 'Changed documentation_url.'),
(109, '2012-03-28 13:29:10', 1, 34, '7', 'dcterms.format', 2, 'Changed documentation_url.'),
(110, '2012-03-28 13:29:27', 1, 34, '8', 'dcterms.hasPart', 2, 'Changed documentation_url.'),
(111, '2012-03-28 13:29:42', 1, 34, '9', 'dcterms.identifier', 2, 'Changed documentation_url.'),
(112, '2012-03-28 13:30:12', 1, 34, '10', 'dcterms.isPartOf', 2, 'Changed documentation_url.'),
(113, '2012-03-28 13:30:26', 1, 34, '11', 'dcterms.isVersionOf', 2, 'Changed documentation_url.'),
(114, '2012-03-28 13:30:45', 1, 34, '12', 'dcterms.language', 2, 'Changed documentation_url.'),
(115, '2012-03-28 13:30:57', 1, 34, '13', 'dcterms.publisher', 2, 'Changed documentation_url.'),
(116, '2012-03-28 13:31:18', 1, 34, '14', 'dcterms.rights', 2, 'Changed documentation_url.'),
(117, '2012-03-28 13:31:51', 1, 34, '15', 'dcterms.source', 2, 'Changed documentation_url.'),
(118, '2012-03-28 13:32:19', 1, 34, '16', 'dcterms.subject', 2, 'Changed documentation_url.'),
(119, '2012-03-28 13:32:32', 1, 34, '17', 'dcterms.type', 2, 'Changed documentation_url.'),
(120, '2012-03-28 13:41:52', 1, 3, '1', 'jfenton', 2, 'Changed first_name and last_name.'),
(121, '2012-03-28 13:44:25', 1, 3, '2', 'bwoolge', 1, ''),
(122, '2012-03-28 13:44:40', 1, 3, '2', 'bwoolge', 2, 'Changed first_name, last_name and email.'),
(123, '2012-03-28 13:44:57', 1, 3, '3', 'bmethot', 1, ''),
(124, '2012-03-28 13:45:10', 1, 3, '3', 'bmethot', 2, 'Changed first_name, last_name and email.'),
(125, '2012-03-28 13:45:23', 1, 3, '4', 'prknigh', 1, ''),
(126, '2012-03-28 13:45:40', 1, 3, '4', 'prknigh', 2, 'Changed first_name, last_name and email.'),
(127, '2012-03-28 13:45:58', 1, 3, '5', 'tbunn', 1, ''),
(128, '2012-03-28 13:46:13', 1, 3, '5', 'tbunn', 2, 'Changed first_name, last_name and email.'),
(129, '2012-03-28 13:46:42', 1, 3, '3', 'bmethot', 2, 'Changed is_staff.'),
(130, '2012-03-28 13:46:47', 1, 3, '2', 'bwoolge', 2, 'Changed is_staff.'),
(131, '2012-03-28 13:46:52', 1, 3, '4', 'prknigh', 2, 'Changed is_staff.'),
(132, '2012-03-28 13:46:56', 1, 3, '5', 'tbunn', 2, 'Changed is_staff.'),
(133, '2012-03-28 13:55:50', 1, 3, '6', 'zwang31', 1, ''),
(134, '2012-03-28 13:56:05', 1, 3, '6', 'zwang31', 2, 'Changed first_name, last_name, email and is_staff.'),
(135, '2012-03-28 13:58:25', 1, 32, '1', 'PUBLIC DOMAIN : Public Domain work', 1, ''),
(136, '2012-03-28 13:58:37', 1, 32, '2', 'C DIG PERM -- WORLD : Copyrighted, permission granted by copyright holder, only to digitize (not for print-on-demand sales), with unrestricted world-wide access', 1, ''),
(137, '2012-03-28 13:58:50', 1, 32, '3', 'C DIG PERM -- CAMPUS : Copyrighted work, with restricted permission granted by copyright holder to digitize, with access only on Emory campus.  No permission for print-on-demand sales', 1, ''),
(138, '2012-03-28 13:59:17', 1, 32, '4', 'C108 -- BUILDING : Copyright Act Section 108 \r\nhttp://www.law.cornell.edu/uscode/usc_sec_17_00000108----000-.html', 1, ''),
(139, '2012-03-28 13:59:46', 1, 32, '5', 'UNDETERMINED >= C108 : Library has at least C108 preservation rights, and may have more.  Unknown whether there are additional donor restrictions.  This rights category provides no public access.', 1, ''),
(140, '2012-03-28 14:22:01', 1, 15, '3', 'LSDI', 1, ''),
(141, '2012-03-28 14:22:26', 1, 16, '8', 'Batch Order Approved (LSDI)', 1, ''),
(142, '2012-03-28 14:22:40', 1, 16, '9', 'Batch Order Created (LSDI)', 1, ''),
(143, '2012-03-28 14:22:53', 1, 16, '10', 'Batch Order Deemed Technically Feasible (LSDI)', 1, ''),
(144, '2012-03-28 14:23:00', 1, 16, '11', 'Batch Order Itemized (LSDI)', 1, ''),
(145, '2012-03-28 14:23:09', 1, 16, '12', 'Batch Order Proposal Rejected (LSDI)', 1, ''),
(146, '2012-03-28 14:23:18', 1, 16, '13', 'Batch Order Proposal Tabled (LSDI)', 1, ''),
(147, '2012-03-28 14:23:55', 1, 16, '14', 'Batch Order Proposed (LSDI)', 1, ''),
(148, '2012-03-28 14:24:10', 1, 16, '15', 'Batch Order Rights OK''d (LSDI)', 1, ''),
(149, '2012-03-28 14:24:28', 1, 16, '15', 'Batch Order Rights Checking (LSDI)', 2, 'Changed name.'),
(150, '2012-03-28 14:24:49', 1, 16, '10', 'Batch Order Technical Feasibility Checking (LSDI)', 2, 'Changed name.'),
(151, '2012-03-28 14:24:56', 1, 16, '8', 'Order Approved (LSDI)', 2, 'Changed name.'),
(152, '2012-03-28 14:25:05', 1, 16, '9', 'Order Created (LSDI)', 2, 'Changed name.'),
(153, '2012-03-28 14:25:09', 1, 16, '11', 'Order Itemized (LSDI)', 2, 'Changed name.'),
(154, '2012-03-28 14:25:13', 1, 16, '12', 'Order Proposal Rejected (LSDI)', 2, 'Changed name.'),
(155, '2012-03-28 14:25:18', 1, 16, '13', 'Order Proposal Tabled (LSDI)', 2, 'Changed name.'),
(156, '2012-03-28 14:25:22', 1, 16, '14', 'Order Proposed (LSDI)', 2, 'Changed name.'),
(157, '2012-03-28 14:25:27', 1, 16, '15', 'Order Rights Checking (LSDI)', 2, 'Changed name.'),
(158, '2012-03-28 14:25:32', 1, 16, '10', 'Order Technical Feasibility Checking (LSDI)', 2, 'Changed name.'),
(159, '2012-03-28 14:26:26', 1, 16, '14', 'Proposal Submitted (LSDI)', 2, 'Changed name.'),
(160, '2012-03-28 14:26:32', 1, 16, '13', 'Proposal Tabled (LSDI)', 2, 'Changed name.'),
(161, '2012-03-28 14:26:39', 1, 16, '12', 'Proposal Rejected (LSDI)', 2, 'Changed name.'),
(162, '2012-03-28 14:26:53', 1, 16, '8', 'Proposal Approved (LSDI)', 2, 'Changed name.'),
(163, '2012-03-28 14:27:23', 1, 16, '15', 'Proposal Rights Checking (LSDI)', 2, 'Changed name.'),
(164, '2012-03-28 14:27:31', 1, 16, '10', 'Proposal Technical Feasibility Checking (LSDI)', 2, 'Changed name.'),
(165, '2012-03-28 14:28:03', 1, 16, '8', 'Proposal Approved / Order Created (LSDI)', 2, 'Changed name.'),
(166, '2012-03-28 14:49:40', 1, 17, '1', 'Chunk Batch Order into two or more batches', 1, ''),
(167, '2012-03-28 14:49:56', 1, 17, '2', 'Table Proposed Batch Order', 1, ''),
(168, '2012-03-28 14:50:23', 1, 17, '3', 'OK Technical Feasibility for Order', 1, ''),
(169, '2012-03-28 14:50:40', 1, 17, '2', 'Table Digitization Proposal', 2, 'Changed name.'),
(170, '2012-03-28 14:50:49', 1, 17, '1', 'Chunk Order into two or more batches', 2, 'Changed name.'),
(171, '2012-03-28 14:52:02', 1, 17, '4', 'OK Rights for Order', 1, ''),
(172, '2012-03-28 14:52:19', 1, 17, '5', 'Approve Digitization Proposal', 1, ''),
(173, '2012-03-28 14:52:59', 1, 17, '6', 'Submit a Digitization Request', 1, ''),
(174, '2012-03-28 14:53:15', 1, 17, '7', 'Reject Digitization Proposal', 1, ''),
(175, '2012-03-28 14:54:27', 1, 17, '8', 'Itemize Order', 1, ''),
(176, '2012-03-28 15:19:17', 1, 10, '1', 'Edit Order (editOrder)', 1, ''),
(177, '2012-03-28 15:19:41', 1, 17, '8', 'Itemize Order', 2, 'Changed destination and permission.'),
(178, '2012-03-28 15:38:09', 1, 13, '1', 'Blah', 1, ''),
(179, '2012-03-28 15:38:37', 1, 11, '1', 'Edit Order / Blah / order - 232', 1, ''),
(180, '2012-03-28 15:55:22', 1, 13, '1', 'Blah', 2, 'No fields changed.'),
(181, '2012-03-28 15:55:35', 1, 13, '1', 'Selection Committee', 2, 'Changed name.'),
(182, '2012-03-28 15:55:42', 1, 13, '2', 'Digitization Team', 1, ''),
(183, '2012-03-28 15:55:50', 1, 13, '3', 'Metadata Editor', 1, ''),
(184, '2012-03-28 15:56:32', 1, 13, '4', 'Preservation Office Member', 1, ''),
(185, '2012-03-28 15:56:52', 1, 13, '5', 'Digitization Manager', 1, ''),
(186, '2012-03-28 15:58:18', 1, 13, '6', 'Stacks (manages Items)', 1, ''),
(187, '2012-03-28 16:16:58', 1, 11, '1', 'Edit Order / Selection Committee / order - 232', 2, 'No fields changed.'),
(188, '2012-03-28 16:28:13', 1, 10, '1', 'Edit Order (editOrder)', 3, ''),
(189, '2012-03-28 16:30:05', 1, 10, '2', 'Edit Metadata (EditMetadata)', 1, ''),
(190, '2012-03-29 16:24:31', 1, 24, '23', 'MARBL MSS 600 : W. B. (William Butler) Yeats collection', 1, ''),
(191, '2012-03-29 16:28:23', 1, 31, '4', 'O''Daniel order 12/19/2011', 1, ''),
(192, '2012-03-29 16:28:37', 1, 31, '4', 'O''Daniel order 12/19/2011', 2, 'No fields changed.'),
(193, '2012-03-29 16:30:00', 1, 24, '24', 'MARBL MSS 558 : William Berry Hartsfield Papers', 1, ''),
(194, '2012-03-29 16:30:12', 1, 31, '5', 'Rapkin order 11/30/11', 1, ''),
(195, '2012-03-29 16:32:19', 1, 31, '6', 'Love Letters 2012 exhibit', 1, ''),
(196, '2012-03-29 16:34:08', 1, 31, '7', 'Georgia Methodist Conference Minutes', 1, ''),
(197, '2012-03-29 16:34:19', 1, 31, '7', 'Georgia Methodist Conference Minutes', 2, 'No fields changed.'),
(198, '2012-03-29 16:36:20', 1, 31, '8', 'Berman papers, last box', 1, ''),
(199, '2012-03-29 16:38:20', 1, 24, '25', 'Berman papers : Harold J. Berman papers', 1, ''),
(200, '2012-03-29 16:41:46', 1, 34, '18', 'dcterms.title', 1, ''),
(202, '2012-03-30 11:42:07', 1, 16, '9', 'Created Order Proposal (LSDI)', 2, 'Changed name.'),
(203, '2012-03-30 11:42:20', 1, 16, '11', 'Itemized Order (LSDI)', 2, 'Changed name.'),
(204, '2012-03-30 11:42:35', 1, 16, '8', 'Approved Order Proposal Order Created (LSDI)', 2, 'Changed name.'),
(205, '2012-03-30 11:42:58', 1, 16, '8', 'Approved Order Request (LSDI)', 2, 'Changed name.'),
(206, '2012-03-30 11:43:06', 1, 16, '9', 'Created Order Request (LSDI)', 2, 'Changed name.'),
(207, '2012-03-30 11:43:20', 1, 16, '12', 'Rejected Order/Proposal (LSDI)', 2, 'Changed name.'),
(208, '2012-03-30 11:43:46', 1, 16, '15', 'Rights Checking Order Request (LSDI)', 2, 'Changed name.'),
(209, '2012-03-30 11:44:01', 1, 16, '14', 'Submitted Order/Request (LSDI)', 2, 'Changed name.'),
(210, '2012-03-30 11:44:11', 1, 16, '14', 'Submitted Order Request (LSDI)', 2, 'Changed name.'),
(211, '2012-03-30 11:44:28', 1, 16, '13', 'Tabled Order Request (LSDI)', 2, 'Changed name.'),
(212, '2012-03-30 11:44:40', 1, 16, '10', 'Technical Feasibility Checking Order Request (LSDI)', 2, 'Changed name.'),
(213, '2012-03-30 11:44:55', 1, 16, '10', 'Feasibility Checking Order Request (LSDI)', 2, 'Changed name.'),
(214, '2012-03-30 11:45:38', 1, 17, '5', 'Approve Order Request', 2, 'Changed name.'),
(215, '2012-03-30 11:45:54', 1, 17, '6', 'Submit Order Request', 2, 'Changed name.'),
(216, '2012-03-30 11:46:08', 1, 17, '7', 'Reject Order Request', 2, 'Changed name.'),
(217, '2012-03-30 11:46:38', 1, 17, '2', 'Table Order Request', 2, 'Changed name.'),
(218, '2012-03-30 11:47:00', 1, 17, '4', 'Rights OK for Order', 2, 'Changed name.'),
(219, '2012-03-30 11:47:09', 1, 17, '3', 'Feasibility OK for Order', 2, 'Changed name.'),
(220, '2012-03-30 11:47:49', 1, 17, '7', 'Reject Order Request', 2, 'Changed destination and permission.'),
(221, '2012-03-30 11:48:17', 1, 17, '6', 'Submit Order Request', 2, 'Changed destination and permission.'),
(222, '2012-03-30 11:48:58', 1, 17, '3', 'Feasibility OK for Order', 2, 'Changed destination and permission.'),
(223, '2012-03-30 11:49:18', 1, 17, '4', 'Rights OK for Order', 2, 'Changed destination and permission.'),
(224, '2012-03-30 11:49:38', 1, 17, '2', 'Table Order Request', 2, 'Changed destination and permission.'),
(225, '2012-03-30 11:50:01', 1, 17, '1', 'Chunk Order into two or more batches', 3, ''),
(226, '2012-03-30 11:51:34', 1, 15, '3', 'LSDI', 2, 'Changed initial_state. Changed transitions for state "Tabled Order Request (LSDI)".'),
(227, '2012-03-30 11:53:45', 1, 15, '3', 'LSDI', 2, 'Added state "Fulfilled Order Request (LSDI)".'),
(228, '2012-03-30 11:54:13', 1, 17, '7', 'Reject the Order Request', 2, 'Changed name.'),
(229, '2012-03-30 11:54:19', 1, 17, '6', 'Submit the Order Request', 2, 'Changed name.'),
(230, '2012-03-30 11:54:30', 1, 17, '6', 'Submit the Order Request', 3, ''),
(231, '2012-03-30 11:55:14', 1, 17, '5', 'Approve the Order Request', 2, 'Changed name, destination and permission.'),
(232, '2012-03-30 11:56:23', 1, 17, '4', 'Clear the Rights for Order Request', 2, 'Changed name.'),
(233, '2012-03-30 11:57:03', 1, 16, '15', 'Rights Cleared for Order Request (LSDI)', 2, 'Changed name.'),
(234, '2012-03-30 11:57:20', 1, 16, '10', 'Feasibility Cleared for Order Request (LSDI)', 2, 'Changed name.'),
(235, '2012-03-30 11:57:43', 1, 17, '3', 'Clear the Feasibility for Order Request', 2, 'Changed name.'),
(236, '2012-03-30 11:57:51', 1, 17, '2', 'Table the Order Request', 2, 'Changed name.'),
(237, '2012-03-30 11:59:24', 1, 17, '8', 'Fulfill the Order', 1, ''),
(238, '2012-03-30 12:26:14', 1, 15, '3', 'LSDI', 2, 'Changed transitions for state "Submitted Order Request (LSDI)".'),
(239, '2012-03-30 12:28:38', 1, 17, '9', 'Itemize the Order', 1, ''),
(240, '2012-03-30 12:31:45', 1, 17, '5', 'Approve the Order Request', 2, 'Changed condition.'),
(241, '2012-03-30 12:36:51', 1, 15, '3', 'LSDI', 2, 'Changed transitions for state "Rejected Order/Proposal (LSDI)". Changed transitions for state "Tabled Order Request (LSDI)".'),
(242, '2012-03-30 12:37:02', 1, 15, '3', 'LSDI', 2, 'Changed transitions for state "Approved Order Request (LSDI)".'),
(243, '2012-03-30 12:37:36', 1, 15, '3', 'LSDI', 2, 'Changed name for state "Fulfilled Order (LSDI)".'),
(244, '2012-03-30 12:37:59', 1, 15, '3', 'LSDI', 2, 'Deleted state "Created Order Request (LSDI)".'),
(245, '2012-04-05 08:37:18', 1, 35, '2', 'Coole Park poem, 2 pages : ', 1, ''),
(246, '2012-04-05 08:37:39', 1, 35, '3', '"On a child''s death" MS Poem : ', 1, ''),
(247, '2012-04-05 08:38:58', 1, 35, '4', 'Photo of Lady Gregory''s library : ', 1, ''),
(248, '2012-04-05 08:40:15', 1, 35, '5', 'Photo of Lady Gregory : ', 1, ''),
(249, '2012-04-05 08:57:51', 1, 31, '4', 'O''Daniel order 12/19/2011', 2, 'Added order item "O''Daniel order 12/19/2011 : Coole Park poem, 2 pages". Added order item "O''Daniel order 12/19/2011 : "On a child''s death" MS Poem".'),
(250, '2012-04-05 08:58:04', 1, 31, '4', 'O''Daniel order 12/19/2011', 2, 'Added order item "O''Daniel order 12/19/2011 : Photo of Lady Gregory". Added order item "O''Daniel order 12/19/2011 : Photo of Lady Gregory''s library".'),
(251, '2012-04-05 08:59:14', 1, 35, '6', 'Lady Gregory Photograph :  : still image', 1, ''),
(252, '2012-04-05 09:24:49', 1, 35, '2', 'Coole Park poem, 2 pages :  : text (non-book)', 2, 'Changed call_no.'),
(253, '2012-04-05 09:25:15', 1, 35, '3', '"On a child''s death" MS Poem :  : text (non-book)', 2, 'Changed call_no.'),
(254, '2012-04-05 09:25:30', 1, 35, '4', 'Photo of Lady Gregory''s library :  : still image', 2, 'Changed call_no.'),
(255, '2012-04-05 09:25:51', 1, 35, '5', 'Photo of Lady Gregory :  : still image', 2, 'Changed call_no.'),
(256, '2012-04-05 09:26:37', 1, 35, '6', 'Lady Gregory Photograph :  : still image', 2, 'Changed collection_id and call_no.'),
(257, '2012-04-05 09:26:51', 1, 35, '5', 'Photo of Lady Gregory :  : still image', 2, 'Changed collection_id.'),
(258, '2012-04-05 09:26:57', 1, 35, '4', 'Photo of Lady Gregory''s library :  : still image', 2, 'Changed collection_id.'),
(259, '2012-04-05 09:27:07', 1, 35, '3', '"On a child''s death" MS Poem :  : text (non-book)', 2, 'Changed collection_id.'),
(260, '2012-04-05 09:27:12', 1, 35, '2', 'Coole Park poem, 2 pages :  : text (non-book)', 2, 'Changed collection_id.'),
(261, '2012-04-05 09:27:47', 1, 35, '2', 'Coole Park poem, 2 pages :  : text (non-book)', 2, 'Changed to_archive.'),
(262, '2012-04-05 09:27:51', 1, 35, '3', '"On a child''s death" MS Poem :  : text (non-book)', 2, 'Changed to_archive.'),
(263, '2012-04-05 09:27:56', 1, 35, '4', 'Photo of Lady Gregory''s library :  : still image', 2, 'Changed to_archive.'),
(264, '2012-04-05 09:28:01', 1, 35, '5', 'Photo of Lady Gregory :  : still image', 2, 'Changed to_archive.'),
(265, '2012-04-05 09:28:07', 1, 35, '6', 'Lady Gregory Photograph :  : still image', 2, 'Changed to_archive.'),
(266, '2012-04-05 09:29:42', 1, 35, '2', 'Coole Park poem, 2 pages :  : monograph', 2, 'Changed is_resource_type.'),
(267, '2012-04-05 09:29:51', 1, 35, '3', '"On a child''s death" MS Poem :  : monograph', 2, 'Changed is_resource_type.'),
(268, '2012-04-05 09:30:00', 1, 35, '4', 'Photo of Lady Gregory''s library :  : monograph', 2, 'Changed is_resource_type.'),
(269, '2012-04-05 09:30:08', 1, 35, '5', 'Photo of Lady Gregory :  : monograph', 2, 'Changed is_resource_type.'),
(270, '2012-04-05 09:30:16', 1, 35, '6', 'Lady Gregory Photograph :  : monograph', 2, 'Changed is_resource_type.'),
(271, '2012-04-05 09:32:24', 1, 35, '7', 'Portrait by Augustus John 1907 :  : still image', 1, ''),
(272, '2012-04-05 09:36:00', 1, 31, '4', 'O''Daniel order 12/19/2011', 2, 'Added order item "O''Daniel order 12/19/2011 : Portrait by Augustus John 1907".'),
(273, '2012-04-05 09:40:47', 1, 35, '8', ' : MARBL MSS 600 : Photo: W.B. Yeats, 1903 :  : still image', 1, ''),
(274, '2012-04-05 09:55:29', 1, 35, '9', '3588 : 0600-013 :  : None : Photo: Yeats and George at Mission Conception in San Antonio, Texas, 1920. :  : still image', 1, ''),
(275, '2012-04-05 09:55:58', 1, 35, '9', '3588 : 0600-013 :  : MARBL MSS 600 : Photo: Yeats and George at Mission Conception in San Antonio, Texas, 1920. :  : still image', 2, 'Changed collection_id.'),
(276, '2012-04-05 09:57:17', 1, 35, '10', '3610 :  :  : MARBL MSS 600 : Photo: W.B. Yeats with daughter, Anne, 1919. :  : still image', 1, ''),
(277, '2012-04-05 10:01:19', 1, 31, '4', 'O''Daniel order 12/19/2011', 2, 'Added order item "O''Daniel order 12/19/2011 : Photo: W.B. Yeats with daughter, Anne, 1919.".'),
(278, '2012-04-05 10:08:50', 1, 35, '11', '4140 :  :  : MARBL MSS 558 : H. on roof of City Hall 1961 :  : still image', 1, ''),
(279, '2012-04-05 10:09:36', 1, 35, '12', 'None :  :  : MARBL MSS 600 : Downtown Atlanta 1960s :  : still image', 1, ''),
(280, '2012-04-05 10:10:34', 1, 35, '13', 'None :  :  : MARBL MSS 558 : Airport (4 photos together) :  : still image', 1, ''),
(281, '2012-04-05 10:11:52', 1, 35, '14', '4130 :  :  : MARBL MSS 558 : WBH age 4-5 :  : still image', 1, ''),
(282, '2012-04-05 10:55:16', 1, 44, '1', 'CALL#', 1, ''),
(283, '2012-04-05 10:56:27', 1, 44, '2', 'OCLC#', 1, ''),
(284, '2012-04-05 10:56:30', 1, 44, '2', 'OCLC#', 2, 'No fields changed.'),
(285, '2012-04-05 10:57:15', 1, 44, '3', 'LCCN#', 1, ''),
(286, '2012-04-05 10:59:15', 1, 44, '4', 'ISBN10', 1, ''),
(287, '2012-04-05 10:59:34', 1, 44, '5', 'ISBN13', 1, ''),
(288, '2012-04-05 11:01:01', 1, 44, '6', 'ISSN', 1, ''),
(289, '2012-04-05 11:01:23', 1, 44, '7', 'Barcode', 1, ''),
(290, '2012-04-05 11:04:42', 1, 44, '8', 'ARK PID', 1, ''),
(291, '2012-04-05 11:05:14', 1, 44, '9', 'DM#', 1, ''),
(292, '2012-04-05 11:10:13', 1, 44, '10', 'DM-OID', 1, ''),
(293, '2012-04-05 11:11:47', 1, 35, '2', 'None :  : PR4728 G5C65 1931 : MARBL RB : Coole Park poem, 2 pages :  : monograph', 2, 'Added item identifier "Coole Park poem, 2 pages : CALL# : PR4728 G5C65 1931".'),
(294, '2012-04-05 11:12:34', 1, 35, '3', 'None :  : PR5900 A3 1899 C2 : MARBL RB : "On a child''s death" MS Poem :  : monograph', 2, 'Added item identifier ""On a child''s death" MS Poem : CALL# : PR5900 A3 1899 C2".'),
(295, '2012-04-05 11:12:48', 1, 35, '4', 'None :  : PR4728 G5Z27 1978a : MARBL RB : Photo of Lady Gregory''s library :  : monograph', 2, 'Added item identifier "Photo of Lady Gregory''s library : CALL# : PR4728 G5Z27 1978a".'),
(296, '2012-04-05 11:12:59', 1, 35, '5', 'None :  : PR4728 G5A19 1971 v2 : MARBL RB : Photo of Lady Gregory :  : monograph', 2, 'Added item identifier "Photo of Lady Gregory : CALL# : PR4728 G5A19 1971 v2".'),
(297, '2012-04-05 11:13:11', 1, 35, '6', 'None :  : PR4728 G5Z5 1973 : MARBL RB : Lady Gregory Photograph :  : monograph', 2, 'Added item identifier "Lady Gregory Photograph : CALL# : PR4728 G5Z5 1973".'),
(298, '2012-04-05 11:13:37', 1, 35, '7', '10211 :  :  : MARBL MSS 600 : Portrait by Augustus John 1907 :  : still image', 2, 'Added item identifier "Portrait by Augustus John 1907 : DM# : 10211".'),
(299, '2012-04-05 11:13:52', 1, 35, '8', '3580 :  :  : MARBL MSS 600 : Photo: W.B. Yeats, 1903 :  : still image', 2, 'Added item identifier "Photo: W.B. Yeats, 1903 : DM# : 3580".'),
(300, '2012-04-05 11:15:38', 1, 35, '9', '3588 : 0600-013 :  : MARBL MSS 600 : Photo: Yeats and George at Mission Conception in San Antonio, Texas, 1920. :  : still image', 2, 'Added item identifier "Photo: Yeats and George at Mission Conception in San Antonio, Texas, 1920. : DM# : 3588". Added item identifier "Photo: Yeats and George at Mission Conception in San Antonio, Texas, 1920. : DM-OID : 0600-013".'),
(301, '2012-04-05 11:16:04', 1, 35, '10', '3610 :  :  : MARBL MSS 600 : Photo: W.B. Yeats with daughter, Anne, 1919. :  : still image', 2, 'Added item identifier "Photo: W.B. Yeats with daughter, Anne, 1919. : DM# : 3610".'),
(302, '2012-04-05 11:16:17', 1, 35, '11', '4140 :  :  : MARBL MSS 558 : H. on roof of City Hall 1961 :  : still image', 2, 'Added item identifier "H. on roof of City Hall 1961 : DM# : 4140".'),
(303, '2012-04-05 11:17:11', 1, 35, '14', '4130 :  :  : MARBL MSS 558 : WBH age 4-5 :  : still image', 2, 'Added item identifier "WBH age 4-5 : DM# : 4130".'),
(304, '2012-04-06 11:45:11', 1, 46, '1', 'DC-XML', 1, ''),
(305, '2012-04-06 11:45:17', 1, 46, '1', 'DC-XML', 2, 'No fields changed.'),
(306, '2012-04-09 15:54:22', 1, 46, '2', 'OCR-ABBYY', 1, ''),
(307, '2012-04-09 15:55:11', 1, 46, '3', 'PDF', 1, ''),
(308, '2012-04-09 15:55:39', 1, 46, '4', 'PDF-A', 1, ''),
(309, '2012-04-09 15:56:05', 1, 46, '5', 'TXT', 1, ''),
(310, '2012-04-09 15:56:28', 1, 46, '6', 'POS', 1, ''),
(311, '2012-04-09 15:56:36', 1, 46, '5', 'TXT', 2, 'Changed name.'),
(312, '2012-04-09 15:57:19', 1, 46, '7', 'MARCXML', 1, ''),
(313, '2012-04-09 15:57:49', 1, 46, '8', 'JP2', 1, ''),
(314, '2012-04-09 15:58:26', 1, 46, '9', 'METS', 1, ''),
(315, '2012-04-09 15:58:44', 1, 46, '10', 'ALTO', 1, ''),
(316, '2012-04-09 15:58:58', 1, 46, '11', 'MODS', 1, ''),
(317, '2012-04-09 15:59:22', 1, 46, '12', 'RAW', 1, ''),
(318, '2012-04-09 16:00:23', 1, 46, '13', 'MASTER', 1, ''),
(319, '2012-04-09 16:00:49', 1, 46, '12', 'RAW', 2, 'Changed default_regex.'),
(320, '2012-04-09 16:00:57', 1, 46, '13', 'MASTER', 2, 'Changed default_regex.'),
(321, '2012-04-09 16:01:48', 1, 46, '14', 'DISPLAY', 1, '');

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
(9, 'migration history', 'south', 'migrationhistory'),
(10, 'permission', 'permissions', 'permission'),
(11, 'object permission', 'permissions', 'objectpermission'),
(12, 'object permission inheritance block', 'permissions', 'objectpermissioninheritanceblock'),
(13, 'role', 'permissions', 'role'),
(14, 'principal role relation', 'permissions', 'principalrolerelation'),
(15, 'workflow', 'workflows', 'workflow'),
(16, 'state', 'workflows', 'state'),
(17, 'transition', 'workflows', 'transition'),
(18, 'state object relation', 'workflows', 'stateobjectrelation'),
(19, 'workflow object relation', 'workflows', 'workflowobjectrelation'),
(20, 'workflow model relation', 'workflows', 'workflowmodelrelation'),
(21, 'workflow permission relation', 'workflows', 'workflowpermissionrelation'),
(22, 'state inheritance block', 'workflows', 'stateinheritanceblock'),
(23, 'state permission relation', 'workflows', 'statepermissionrelation'),
(24, 'collection', 'digwf', 'collection'),
(25, 'publication_ state', 'digwf', 'publication_state'),
(26, 'rejection_ code', 'digwf', 'rejection_code'),
(28, 'agent', 'digwf', 'agent'),
(29, 'person', 'digwf', 'person'),
(31, 'order', 'digwf', 'order'),
(32, 'rights', 'digwf', 'rights'),
(33, 'resource_ type', 'digwf', 'resource_type'),
(34, 'metadata_ term', 'digwf', 'metadata_term'),
(35, 'item', 'digwf', 'item'),
(37, 'metadata', 'digwf', 'metadata'),
(38, 'error_ code', 'digwf', 'error_code'),
(39, 'record', 'repo_checker', 'record'),
(40, 'hathi trust_ item', 'repo_checker', 'hathitrust_item'),
(41, 'organization', 'digwf', 'organization'),
(43, 'order item', 'digwf', 'orderitem'),
(44, 'item identifier type', 'digwf', 'itemidentifiertype'),
(45, 'item identifier', 'digwf', 'itemidentifier'),
(46, 'digital component type', 'digwf', 'digitalcomponenttype'),
(47, 'digital item', 'digwf', 'digitalitem'),
(48, 'digital component', 'digwf', 'digitalcomponent');

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('802e0fa7ecdb03dad461faef771a0eba', 'YWRmZTAwMzRiOWM3M2UwMjJlZTkwZmIzMmI3NzMwNzk5ZDA1ZjQ1NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-04-12 16:25:53');

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

--
-- Dumping data for table `permissions_permission`
--

INSERT INTO `permissions_permission` (`id`, `name`, `codename`) VALUES
(2, 'Edit Metadata', 'EditMetadata');

--
-- Dumping data for table `permissions_permission_content_types`
--

INSERT INTO `permissions_permission_content_types` (`id`, `permission_id`, `contenttype_id`) VALUES
(2, 2, 34),
(3, 2, 37);

--
-- Dumping data for table `permissions_role`
--

INSERT INTO `permissions_role` (`id`, `name`) VALUES
(5, 'Digitization Manager'),
(2, 'Digitization Team'),
(3, 'Metadata Editor'),
(4, 'Preservation Office Member'),
(1, 'Selection Committee'),
(6, 'Stacks (manages Items)');

--
-- Dumping data for table `south_migrationhistory`
--

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`) VALUES
(1, 'digwf', '0001_initial', '2012-03-28 02:20:06'),
(2, 'digwf', '0002_auto__add_field_person_title', '2012-03-28 02:22:26'),
(3, 'digwf', '0003_auto__del_field_resource_type_broad_type', '2012-03-28 13:43:52'),
(4, 'digwf', '0004_auto__del_corporation__add_organization', '2012-03-28 13:55:21'),
(5, 'digwf', '0005_auto__chg_field_agent_phone__chg_field_agent_state', '2012-03-28 14:31:05'),
(6, 'digwf', '0006_auto__del_field_collection_description__del_field_collection_url__del_', '2012-03-28 15:31:20'),
(7, 'digwf', '0007_auto__add_field_metadata_term_documentation_url', '2012-03-28 17:25:44'),
(8, 'digwf', '0008_auto__del_field_order_customer_id', '2012-03-29 20:20:27'),
(9, 'digwf', '0009_auto__del_workflow_step__del_field_item_user__del_field_item_workflow_', '2012-04-02 19:40:19'),
(10, 'digwf', '0010_auto__del_field_item_is_digitized__add_field_item_is_already_digitized', '2012-04-04 16:07:04'),
(11, 'digwf', '0011_auto__add_orderitems__del_field_item_order_id', '2012-04-04 16:36:02'),
(12, 'digwf', '0012_auto__del_orderitems__add_orderitem', '2012-04-04 16:47:14'),
(13, 'digwf', '0013_auto__del_field_item_item_title__add_field_item_title', '2012-04-04 17:10:12'),
(14, 'digwf', '0014_auto__chg_field_item_time_spent', '2012-04-04 17:13:24'),
(15, 'digwf', '0015_auto__add_field_item_call_no', '2012-04-05 12:50:46'),
(16, 'digwf', '0016_auto__add_itemidentifiertype__add_itemidentifier', '2012-04-05 14:45:14'),
(17, 'digwf', '0017_auto__del_field_item_isbn__del_field_item_barcode__del_field_item_pid_', '2012-04-05 15:18:12'),
(18, 'digwf', '0018_auto__del_digital_files__add_digitalcomponenttype__add_digitalcomponen', '2012-04-05 18:11:16'),
(19, 'digwf', '0019_auto__del_field_item_bit_depth__del_field_item_dpi__add_field_digitali', '2012-04-06 15:24:09'),
(20, 'digwf', '0020_auto__add_field_digitalcomponenttype_default_regex', '2012-04-06 15:45:01'),
(21, 'digwf', '0021_auto__del_field_digitalitem_images_master_regex__del_field_digitalitem', '2012-04-09 20:07:27');

--
-- Dumping data for table `workflows_state`
--

INSERT INTO `workflows_state` (`id`, `name`, `workflow_id`) VALUES
(8, 'Approved Order Request', 3),
(10, 'Feasibility Cleared for Order Request', 3),
(11, 'Itemized Order', 3),
(12, 'Rejected Order/Proposal', 3),
(13, 'Tabled Order Request', 3),
(14, 'Submitted Order Request', 3),
(15, 'Rights Cleared for Order Request', 3),
(16, 'Fulfilled Order', 3);

--
-- Dumping data for table `workflows_state_transitions`
--

INSERT INTO `workflows_state_transitions` (`id`, `state_id`, `transition_id`) VALUES
(8, 8, 8),
(6, 12, 5),
(7, 13, 5),
(5, 14, 5);

--
-- Dumping data for table `workflows_transition`
--

INSERT INTO `workflows_transition` (`id`, `name`, `workflow_id`, `destination_id`, `condition`, `permission_id`) VALUES
(2, 'Table the Order Request', 3, 13, '', 2),
(3, 'Clear the Feasibility for Order Request', 3, 10, '', 2),
(4, 'Clear the Rights for Order Request', 3, 15, '', 2),
(5, 'Approve the Order Request', 3, 8, 'only if passes rights, feasibility and value OKs', 2),
(7, 'Reject the Order Request', 3, 12, '', 2),
(8, 'Fulfill the Order', 3, 16, '', 2),
(9, 'Itemize the Order', 3, 11, 'a pull list must be uploaded, or 1+ items created', 2);

--
-- Dumping data for table `workflows_workflow`
--

INSERT INTO `workflows_workflow` (`id`, `name`, `initial_state_id`) VALUES
(3, 'LSDI', 14);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
