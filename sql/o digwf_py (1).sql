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

