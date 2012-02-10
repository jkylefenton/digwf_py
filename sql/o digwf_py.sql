
--
-- Table structure for table `digwf_batch_order`
--

CREATE TABLE IF NOT EXISTS `digwf_batch_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_type` varchar(25) NOT NULL,
  `customer_id_id` int(11) NOT NULL,
  `delivery_id_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_order_created` date NOT NULL,
  `date_order_due` date NOT NULL,
  `date_order_completed` date NOT NULL,
  `date_originals_received` date DEFAULT NULL,
  `date_originals_returned` date DEFAULT NULL,
  `originals_received_by` varchar(30) NOT NULL,
  `originals_returned_to` varchar(30) NOT NULL,
  `rush` tinyint(1) NOT NULL,
  `delivery_method` varchar(25) NOT NULL,
  `customer_notes` longtext NOT NULL,
  `processing_notes` longtext NOT NULL,
  `archive_surrogates` tinyint(1) NOT NULL,
  `owner_originals` varchar(50) NOT NULL,
  `release_on_file` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_batch_order_f05b416b` (`customer_id_id`),
  KEY `digwf_batch_order_4dbd3cbb` (`delivery_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `digwf_batch_order`
--

INSERT INTO `digwf_batch_order` (`id`, `order_type`, `customer_id_id`, `delivery_id_id`, `description`, `date_order_created`, `date_order_due`, `date_order_completed`, `date_originals_received`, `date_originals_returned`, `originals_received_by`, `originals_returned_to`, `rush`, `delivery_method`, `customer_notes`, `processing_notes`, `archive_surrogates`, `owner_originals`, `release_on_file`) VALUES
(1, 'marbl_patron', 1, 7, 'O''Daniel order 12/19/2011', '2012-01-23', '2011-12-22', '2012-01-20', '2012-01-19', '2012-01-20', 'BMM', 'SC', 1, 'yousendit', '', 'check w/preservation on vellum bound vault book, spine may be too tight.  keep item #11 in locked cabinet', 1, 'marbl', 0),
(2, 'marbl_patron', 1, 8, 'Rapkin order', '2012-01-24', '2011-12-14', '2011-12-02', '2011-11-30', '2011-12-07', 'PK', 'EC', 0, 'yousendit', '', '', 1, 'marbl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `digwf_collection`
--

CREATE TABLE IF NOT EXISTS `digwf_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `coll_id` varchar(15) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `digwf_contact`
--

CREATE TABLE IF NOT EXISTS `digwf_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) NOT NULL,
  `person` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `contact_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `digwf_error_code`
--

CREATE TABLE IF NOT EXISTS `digwf_error_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `digwf_item`
--

CREATE TABLE IF NOT EXISTS `digwf_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `oclc` varchar(50) NOT NULL,
  `lccn` varchar(50) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `issn` varchar(50) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `enumcron` varchar(20) NOT NULL,
  `base_path` varchar(100) NOT NULL,
  `pdf_regex` varchar(100) NOT NULL,
  `ocr_regex` varchar(100) NOT NULL,
  `txt_regex` varchar(100) NOT NULL,
  `pos_regex` varchar(100) NOT NULL,
  `mrc_regex` varchar(100) NOT NULL,
  `jp2_regex` varchar(100) NOT NULL,
  `mets_regex` varchar(100) NOT NULL,
  `alto_regex` varchar(100) NOT NULL,
  `pdfa_regex` varchar(100) NOT NULL,
  `mods_regex` varchar(100) NOT NULL,
  `dc_regex` varchar(100) NOT NULL,
  `images_captured_regex` varchar(100) NOT NULL,
  `images_master_regex` varchar(100) NOT NULL,
  `images_presentation_regex` varchar(100) NOT NULL,
  `pid` varchar(10) NOT NULL,
  `images_captured_count` int(11) DEFAULT NULL,
  `foldout_count` int(11) DEFAULT NULL,
  `has_foldouts` tinyint(1) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `rush` tinyint(1) NOT NULL,
  `notification_email` varchar(75) NOT NULL,
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
  `pub_place` varchar(10) NOT NULL,
  `pub_year` date DEFAULT NULL,
  `has_typeset_text` tinyint(1) NOT NULL,
  `note` longtext NOT NULL,
  `rejection_code_id` int(11) DEFAULT NULL,
  `workflow_step_id` int(11) NOT NULL,
  `batch_order_id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `dpi` int(11) DEFAULT NULL,
  `time_spent` time NOT NULL,
  `bit_depth` varchar(2) NOT NULL,
  `owner_originals` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_item_fabadb12` (`is_resource_type_id`),
  KEY `digwf_item_b9399c7c` (`has_rights_id`),
  KEY `digwf_item_59f93f8e` (`pub_state_id`),
  KEY `digwf_item_aa87ecd5` (`rejection_code_id`),
  KEY `digwf_item_5d02db27` (`workflow_step_id`),
  KEY `digwf_item_346109ee` (`batch_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `digwf_metadata`
--

CREATE TABLE IF NOT EXISTS `digwf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `value` varchar(510) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `digwf_metadata_67b70d25` (`item_id`),
  KEY `digwf_metadata_f1e83452` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `digwf_metadata_term`
--

CREATE TABLE IF NOT EXISTS `digwf_metadata_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

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
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
  `code` varchar(5) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

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
  `type` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `broad_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

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



CREATE TABLE IF NOT EXISTS `digwf_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
  `code` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-01-20 09:44:14', 1, 16, '1', 'cartographic : ', 1, ''),
(2, '2012-01-20 09:44:42', 1, 16, '2', 'notated music : ', 1, ''),
(3, '2012-01-20 09:44:47', 1, 16, '3', 'monograph : ', 1, ''),
(4, '2012-01-20 09:44:49', 1, 16, '4', 'serial : ', 1, ''),
(5, '2012-01-20 09:44:53', 1, 16, '5', 'still image : ', 1, ''),
(6, '2012-01-20 09:45:01', 1, 16, '6', 'text (non-book) : ', 1, ''),
(7, '2012-01-20 09:45:09', 1, 16, '7', 'sound recording : ', 1, ''),
(8, '2012-01-20 09:45:12', 1, 16, '8', 'moving image : ', 1, ''),
(9, '2012-01-20 09:45:47', 1, 16, '9', 'microform : ', 1, ''),
(16, '2012-01-20 09:49:24', 1, 12, '1', 'PREP : preparing batch order', 1, ''),
(17, '2012-01-20 09:49:37', 1, 12, '2', 'CAPTURE : Scan or photograph item', 1, ''),
(18, '2012-01-20 09:49:58', 1, 12, '3', 'EDIT : Editing digital outputs', 1, ''),
(19, '2012-01-20 09:50:28', 1, 12, '4', 'OCR : Generating OCR / PDF etc.', 1, ''),
(20, '2012-01-20 09:50:49', 1, 12, '5', 'COMPLETED : Digitization process finished', 1, ''),
(21, '2012-01-20 09:51:07', 1, 12, '6', 'MDATA RVW : Metadata Review/Enhancement', 1, ''),
(22, '2012-01-20 09:51:41', 1, 12, '7', 'ERROR : Error state needing action', 1, ''),
(23, '2012-01-20 09:52:04', 1, 12, '8', 'PENDING : Pending 3rd party action', 1, ''),
(24, '2012-01-20 09:52:28', 1, 12, '9', 'REJECTED : Item rejected, reason recorded', 1, ''),
(25, '2012-01-20 09:56:08', 1, 14, '1', 'Berman papers, last box', 1, ''),
(26, '2012-01-20 09:56:35', 1, 14, '2', 'Views of Rome batch 1', 1, ''),
(27, '2012-01-20 09:57:27', 1, 14, '3', 'Departmental library materials', 1, ''),
(28, '2012-01-20 09:57:59', 1, 14, '4', 'Triple Deckers, 2nd truck', 1, ''),
(29, '2012-01-20 10:01:50', 1, 17, '1', 'Soviet Heirs in American Courts', 1, ''),
(30, '2012-01-20 16:01:12', 1, 12, '10', 'TEMPLATING : Batch Templated Editiing', 1, ''),
(31, '2012-01-23 10:01:03', 1, 14, '1', 'Berman papers, last box', 1, ''),
(32, '2012-01-23 10:01:43', 1, 14, '2', 'Views of Rome batch 1', 1, ''),
(33, '2012-01-23 12:28:38', 1, 14, '3', 'Surgery - Departmental Library', 1, ''),
(34, '2012-01-23 13:53:24', 1, 35, '7', ' : Shannon O''Daniel', 1, ''),
(35, '2012-01-23 14:02:18', 1, 14, '1', 'O''Daniel order 12/19/2011', 1, ''),
(36, '2012-01-23 14:20:15', 1, 35, '1', 'MARBL : Liz Chase', 2, 'Changed company, person and email.'),
(37, '2012-01-23 14:20:26', 1, 35, '7', 'ECIT : Shannon O''Daniel', 2, 'Changed company.'),
(38, '2012-01-23 14:21:00', 1, 35, '6', 'EU SOM Dept. of Surgery : ', 2, 'Changed company and person.'),
(39, '2012-01-23 14:21:08', 1, 35, '6', 'EUSOM Dept. of Surgery : ', 2, 'Changed company.'),
(40, '2012-01-23 14:27:37', 1, 35, '3', 'Center for the Study of Law and Religion : April Bogle', 2, 'Changed company, person and email.'),
(41, '2012-01-23 14:29:13', 1, 35, '2', 'DiSC : Brian Croxall', 2, 'Changed company, person and email.'),
(42, '2012-01-23 14:30:05', 1, 35, '4', 'Emory Data Center : Michael Page', 2, 'Changed company, person and email.'),
(43, '2012-01-23 14:30:18', 1, 35, '4', 'Data Center : Michael Page', 2, 'Changed company.'),
(44, '2012-01-23 14:31:02', 1, 35, '5', 'Pitts Theology Library : Pat Graham', 2, 'Changed company, person and email.'),
(45, '2012-01-23 15:12:11', 1, 14, '1', 'O''Daniel order 12/19/2011', 1, ''),
(46, '2012-01-23 15:30:03', 1, 15, '5', 'Undetermined - C108 at minimum : Library has at least C108 preservation rights, and may have more.  Unknown whether there are additional donor restrictions.  This rights category provides no public ac', 1, ''),
(47, '2012-01-23 15:31:08', 1, 15, '5', 'UNDETERMINED >= C108 : Library has at least C108 preservation rights, and may have more.  Unknown whether there are additional donor restrictions.  This rights category provides no public access.', 2, 'Changed status.'),
(48, '2012-01-23 15:31:19', 1, 15, '4', 'C108 -- BUILDING : Copyright Act Section 108 \r\nhttp://www.law.cornell.edu/uscode/usc_sec_17_00000108----000-.html', 2, 'Changed status.'),
(49, '2012-01-23 15:31:44', 1, 15, '3', 'C DIG PERM -- CAMPUS : Copyrighted work, with restricted permission granted by copyright holder to digitize, with access only on Emory campus.  No permission for print-on-demand sales', 2, 'Changed status.'),
(50, '2012-01-23 15:31:54', 1, 15, '2', 'C DIG PERM -- WORLD : Copyrighted, permission granted by copyright holder, only to digitize (not for print-on-demand sales), with unrestricted world-wide access', 2, 'Changed status.'),
(51, '2012-01-23 15:32:11', 1, 15, '1', 'PUBLIC DOMAIN : Public Domain work', 2, 'Changed status.'),
(52, '2012-01-23 15:35:31', 1, 17, '1', 'Coole Park poem, 2 pages', 1, ''),
(53, '2012-01-24 16:00:50', 1, 38, '1', 'Metadata_Term object', 1, ''),
(54, '2012-01-24 16:01:04', 1, 38, '2', 'Metadata_Term object', 1, ''),
(55, '2012-01-24 16:01:13', 1, 38, '3', 'Metadata_Term object', 1, ''),
(56, '2012-01-24 16:02:35', 1, 38, '4', 'Metadata_Term object', 1, ''),
(57, '2012-01-24 16:02:52', 1, 38, '5', 'Metadata_Term object', 1, ''),
(58, '2012-01-24 16:03:00', 1, 38, '6', 'Metadata_Term object', 1, ''),
(59, '2012-01-24 16:03:11', 1, 38, '7', 'Metadata_Term object', 1, ''),
(60, '2012-01-24 16:03:21', 1, 38, '8', 'Metadata_Term object', 1, ''),
(61, '2012-01-24 16:03:30', 1, 38, '9', 'Metadata_Term object', 1, ''),
(62, '2012-01-24 16:03:50', 1, 38, '10', 'Metadata_Term object', 1, ''),
(63, '2012-01-24 16:04:03', 1, 38, '11', 'Metadata_Term object', 1, ''),
(64, '2012-01-24 16:04:19', 1, 38, '12', 'Metadata_Term object', 1, ''),
(65, '2012-01-24 16:04:34', 1, 38, '13', 'Metadata_Term object', 1, ''),
(66, '2012-01-24 16:04:45', 1, 38, '14', 'Metadata_Term object', 1, ''),
(67, '2012-01-24 16:04:54', 1, 38, '15', 'Metadata_Term object', 1, ''),
(68, '2012-01-24 16:05:03', 1, 38, '16', 'Metadata_Term object', 1, ''),
(69, '2012-01-24 16:05:12', 1, 38, '17', 'Metadata_Term object', 1, ''),
(70, '2012-01-24 16:05:19', 1, 38, '18', 'Metadata_Term object', 1, ''),
(71, '2012-01-24 16:12:45', 1, 35, '8', ' : Katharine Rapkin', 1, ''),
(72, '2012-01-24 16:14:51', 1, 14, '2', 'Rapkin order', 1, ''),
(73, '2012-01-24 16:17:36', 1, 17, '1', 'Hartsfield on roof of City Hall', 1, ''),
(74, '2012-01-24 16:19:22', 1, 37, '1', 'Metadata object', 1, ''),
(75, '2012-01-24 16:19:31', 1, 37, '1', 'Metadata object', 3, ''),
(76, '2012-01-24 16:24:46', 1, 37, '1', 'Metadata object', 1, ''),
(77, '2012-01-24 16:24:54', 1, 37, '2', 'Metadata object', 1, ''),
(78, '2012-01-25 15:51:06', 1, 9, '1', 'Emory Digital Editions Methodism: Methodism', 1, ''),
(79, '2012-01-25 15:51:18', 1, 9, '2', 'Emory Digital Editions Yellowbacks: Yellowbacks', 1, ''),
(80, '2012-01-25 15:52:02', 1, 9, '3', 'Emory Digital Editions Theo Ref: Theology Reference ', 1, ''),
(81, '2012-01-25 15:52:21', 1, 9, '4', 'Emory Digital Editions Reg Hist: Regimental histories', 1, ''),
(82, '2012-01-25 15:53:01', 1, 9, '5', 'Emory Digital Editions Civil War: Civil War Literature', 1, ''),
(83, '2012-01-25 15:53:18', 1, 9, '6', 'Emory Digital Editions Ga Hse Jrnl: Georgia State House Journals', 1, ''),
(84, '2012-01-25 15:53:46', 1, 9, '7', 'Emory Digital Editions Ga Snte Jrnl: Georgia State Senate Journals', 1, ''),
(85, '2012-01-25 15:54:45', 1, 9, '8', 'Emory Digital Editions : Emory Yearbooks : Emory Yearbooks', 1, ''),
(86, '2012-01-25 15:55:04', 1, 9, '9', 'Emory Digital Editions : Emory Pubs : Emory Publications (non-yearbook)', 1, ''),
(87, '2012-01-25 15:55:22', 1, 9, '10', 'Emory Digital Editions : AfAm Lit : African American Literature', 1, ''),
(88, '2012-01-25 15:55:35', 1, 9, '11', 'Emory Digital Editions : Triple Deckers : Triple Deckers', 1, ''),
(89, '2012-01-25 15:56:32', 1, 9, '12', 'MARBL MSS # : 558 : William Berry Hartsfield Papers', 1, ''),
(90, '2012-01-25 15:57:27', 1, 9, '13', 'MARBL MSS # : 872 : Josephus Roosevelt Coan papers', 1, ''),
(91, '2012-01-25 15:58:01', 1, 9, '14', 'MARBL MSS # : 612 : Calvin Fred Craig papers', 1, ''),
(92, '2012-01-25 15:59:48', 1, 9, '15', 'MARBL MSS # : 600 : W. B. (William Butler) Yeats collection', 1, ''),
(93, '2012-01-25 16:00:52', 1, 9, '16', 'EUA Series # : EUPIX 5.3 : Atlanta Students', 1, ''),
(94, '2012-01-25 16:03:35', 1, 9, '17', 'Pitts MSS # : 283 : William Newman Ainsworth papers', 1, ''),
(95, '2012-01-25 16:08:36', 1, 9, '18', 'Pitts RG # : 53 : Association of Professional Chaplains', 1, ''),
(96, '2012-01-25 16:08:41', 1, 9, '18', 'Pitts RG # : 53 : Association of Professional Chaplains', 2, 'No fields changed.'),
(97, '2012-01-25 16:09:00', 1, 9, '17', 'Pitts MSS # : 283 : William Newman Ainsworth papers', 2, 'Changed url.'),
(98, '2012-01-25 16:09:36', 1, 9, '15', 'MARBL MSS # : 600 : W. B. (William Butler) Yeats collection', 2, 'Changed url.'),
(99, '2012-01-25 16:10:05', 1, 9, '13', 'MARBL MSS # : 872 : Josephus Roosevelt Coan papers', 2, 'Changed url.'),
(100, '2012-01-25 16:10:57', 1, 9, '14', 'MARBL MSS # : 612 : Calvin Fred Craig papers', 2, 'Changed url.');


