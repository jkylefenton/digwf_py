-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2012 at 06:19 PM
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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'jfenton', '', '', 'kyle.fenton@emory.edu', 'sha1$50920$7f133322618a99c8e4e6f4398386b4db820a5dd0', 1, 1, 1, '2012-01-25 18:16:05', '2012-01-20 09:43:10');

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
(18, 'Pitts RG #', '53', 'Association of Professional Chaplains', 'http://www.pitts.emory.edu/Archives/text/rg053.html');

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
(8, '', 'Katharine Rapkin', '', '', '', '', NULL, NULL, 'rapkin@georgiahistory.com', 'customer');

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
(3, 'monograph', '', ''),
(4, 'serial', '', ''),
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

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cdde4472606d766544b9a4e218daa27a', 'YWRmZTAwMzRiOWM3M2UwMjJlZTkwZmIzMmI3NzMwNzk5ZDA1ZjQ1NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-02-08 18:16:05');

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
