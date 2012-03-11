-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: sedna.neofutur.net
-- Generation Time: Mar 04, 2006 at 03:25 AM
-- Server version: 4.0.15
-- PHP Version: 4.3.3
-- 
-- Database: `milliondollar`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `FAQ`
-- 

CREATE TABLE `FAQ` (
  `id_FAQ` int(11) NOT NULL auto_increment,
  `FAQ_title` varchar(255) NOT NULL default '',
  `FAQ_position` int(11) NOT NULL default '0',
  `FAQ_text` longtext NOT NULL,
  `FAQ_link` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_FAQ`),
  KEY `FAQ_title` (`FAQ_title`,`FAQ_position`)
) TYPE=MyISAM AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `bloglines`
-- 

CREATE TABLE `bloglines` (
  `bl_idea` int(11) NOT NULL auto_increment,
  `bl_date` date NOT NULL default '0000-00-00',
  `bl_type` smallint(6) NOT NULL default '0',
  `bl_title` varchar(255) NOT NULL default '',
  `bl_subtitle` varchar(255) default NULL,
  `bl_intro` text,
  `bl_text` longtext NOT NULL,
  PRIMARY KEY  (`bl_idea`),
  KEY `bl_date` (`bl_date`,`bl_type`,`bl_title`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `bysite`
-- 

CREATE TABLE `bysite` (
  `bysite_id` int(11) NOT NULL default '0',
  `bysite_referer_id` varchar(255) NOT NULL default '',
  `bysite_site_id` int(11) NOT NULL default '0',
  `bysite_amount` int(11) NOT NULL default '0',
  `bysite_type` date NOT NULL default '0000-00-00',
  `bysite_comment` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`bysite_id`),
  KEY `bysite_referer_id` (`bysite_referer_id`),
  KEY `bysite_site_id` (`bysite_site_id`),
  KEY `bysite_type` (`bysite_type`),
  KEY `bysite_amount` (`bysite_amount`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `cheatcodes`
-- 

CREATE TABLE `cheatcodes` (
  `cheatcode_id` int(11) NOT NULL auto_increment,
  `cheatcode_name` varchar(16) NOT NULL default '',
  `cheatcode_type` varchar(8) NOT NULL default '',
  `cheatcode_value` int(11) NOT NULL default '0',
  `cheatcode_comment` varchar(255) NOT NULL default '',
  `cheatcode_stock` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cheatcode_id`),
  KEY `cheatcode_name` (`cheatcode_name`,`cheatcode_type`,`cheatcode_value`),
  KEY `cheatcode_stock` (`cheatcode_stock`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `metadata`
-- 

CREATE TABLE `metadata` (
  `meta_id` int(11) NOT NULL auto_increment,
  `meta_name` varchar(32) NOT NULL default '',
  `meta_value` varchar(255) NOT NULL default '',
  `meta_comment` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`meta_id`),
  KEY `meta_name` (`meta_name`)
) TYPE=MyISAM AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `outvisit
-- 

CREATE TABLE `outvisit` (
  `id_out` int(11) NOT NULL auto_increment,
  `site_id_out` int(11) NOT NULL default '0',
  `datetime_out` datetime NOT NULL default '0000-00-00 00:00:00',
  `tmp1` int(11) default NULL,
  PRIMARY KEY  (`id_out`),
  KEY `site_id_out` (`site_id_out`,`datetime_out`)
) TYPE=MyISAM AUTO_INCREMENT=2229 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `partners`
-- 

CREATE TABLE `partners` (
  `id_partner` int(11) NOT NULL auto_increment,
  `name_partner` varchar(128) NOT NULL default '',
  `url_partner` varchar(255) NOT NULL default '',
  `desc_partner` varchar(255) default NULL,
  `comment_partner` varchar(255) default NULL,
  `from_date` date NOT NULL default '0000-00-00',
  `to_date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id_partner`),
  KEY `name_partner` (`name_partner`),
  KEY `from_date` (`from_date`,`to_date`)
) TYPE=MyISAM AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `paypal_users`
-- 

CREATE TABLE `paypal_users` (
  `Id` int(11) NOT NULL auto_increment,
  `idUnique` varchar(50) default NULL,
  `idTransaction` varchar(50) default NULL,
  `nom` varchar(50) default NULL,
  `prenom` varchar(50) default NULL,
  `adresse1` varchar(50) default NULL,
  `adresse2` varchar(50) default NULL,
  `cp` varchar(50) default NULL,
  `ville` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `pass` varchar(50) default NULL,
  `date` date default '0000-00-00',
  `autorisation` tinyint(4) default NULL,
  PRIMARY KEY  (`Id`)
) TYPE=MyISAM AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `pixeltypes`
-- 

CREATE TABLE `pixeltypes` (
  `id_pixeltype` int(11) NOT NULL auto_increment,
  `order_pixeltype` int(11) NOT NULL default '0',
  `name_pixeltype` varchar(64) NOT NULL default '',
  `url_image_pixeltype` varchar(255) NOT NULL default '',
  `description_pixeltype` text NOT NULL,
  `price_pixeltype` int(11) NOT NULL default '0',
  `pixeltype_nblines` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_pixeltype`),
  KEY `name_pixeltype` (`name_pixeltype`,`price_pixeltype`),
  KEY `order_pixeltype` (`order_pixeltype`),
  KEY `pixeltype_nblines` (`pixeltype_nblines`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `prices`
-- 

CREATE TABLE `prices` (
  `id_price` int(11) NOT NULL auto_increment,
  `name_price` varchar(16) NOT NULL default '',
  `comment_price` varchar(255) default NULL,
  `ppp_price` float NOT NULL default '0',
  `pblock10x10_price` int(11) NOT NULL default '0',
  `color_price` varchar(8) NOT NULL default '',
  `image_price` varchar(128) NOT NULL default '',
  `url_buy` varchar(255) NOT NULL default '',
  `button_buy1` text NOT NULL,
  PRIMARY KEY  (`id_price`),
  KEY `name_price` (`name_price`,`ppp_price`,`pblock10x10_price`),
  KEY `color_price` (`color_price`,`image_price`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `referers`
-- 

CREATE TABLE `referers` (
  `referer_md5` bigint(20) unsigned NOT NULL auto_increment,
  `date` date NOT NULL default '0000-00-00',
  `referer` varchar(255) NOT NULL default '',
  `visits` int(10) unsigned NOT NULL default '0',
  `visits_today` int(10) unsigned NOT NULL default '0',
  `visites_yesterday` int(10) unsigned NOT NULL default '0',
  `visites_thisweek` int(10) unsigned NOT NULL default '0',
  `update` timestamp(14) NOT NULL,
  PRIMARY KEY  (`referer_md5`),
  KEY `date` (`date`,`referer`,`visits`,`update`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `site`
-- 

CREATE TABLE `site` (
  `id_site` int(11) NOT NULL auto_increment,
  `name_site` varchar(64) NOT NULL default '',
  `title_site` varchar(255) NOT NULL default '',
  `url_site` varchar(128) NOT NULL default '',
  `state_site` varchar(16) NOT NULL default 'temporary',
  `x_size` int(11) NOT NULL default '0',
  `y_size` int(11) NOT NULL default '0',
  `price_id` int(11) NOT NULL default '0',
  `total_size` bigint(20) NOT NULL default '0',
  `x_pos` int(11) NOT NULL default '0',
  `y_pos` int(11) NOT NULL default '0',
  `image_url` varchar(255) NOT NULL default '',
  `email_webmaster` varchar(128) NOT NULL default '',
  `comments` varchar(255) default NULL,
  `normal_price` int(11) NOT NULL default '0',
  `final_price` int(11) NOT NULL default '0',
  `from_date` date NOT NULL default '0000-00-00',
  `until_date` date NOT NULL default '0000-00-00',
  `for_nb_days` int(11) NOT NULL default '0',
  `txn_type` varchar(16) NOT NULL default '',
  `payment_date` date default NULL,
  `first_name` varchar(64) NOT NULL default '',
  `last_name` varchar(64) NOT NULL default '',
  `pending_reason` varchar(16) NOT NULL default '',
  `item_name` varchar(128) NOT NULL default '',
  `mc_currency` varchar(8) NOT NULL default '',
  `business` varchar(128) NOT NULL default '',
  `payment_type` varchar(16) NOT NULL default '',
  `verify_sign` varchar(128) NOT NULL default '',
  `payer_status` varchar(16) NOT NULL default '',
  `test_ipn` smallint(6) NOT NULL default '0',
  `payer_email` varchar(128) NOT NULL default '',
  `txn_id` int(11) NOT NULL default '0',
  `quantity` int(11) NOT NULL default '0',
  `receiver_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(16) NOT NULL default '',
  `payment_status` varchar(16) NOT NULL default '',
  `shipping` float NOT NULL default '0',
  `custom` varchar(16) NOT NULL default '',
  `notify_version` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`id_site`),
  KEY `id_site` (`id_site`,`name_site`,`x_size`,`y_size`),
  KEY `name_site` (`name_site`),
  KEY `x_size` (`x_size`),
  KEY `y_size` (`y_size`),
  KEY `x_pos` (`x_pos`),
  KEY `y_pos` (`y_pos`),
  KEY `total_size` (`total_size`),
  KEY `price_id` (`price_id`),
  KEY `state_site` (`state_site`),
  KEY `custom` (`custom`)
) TYPE=MyISAM COMMENT='million dollar homepage' AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `text`
-- 

CREATE TABLE `text` (
  `id_text` int(11) NOT NULL auto_increment,
  `name_text` varchar(128) NOT NULL default '',
  `type_text` varchar(16) NOT NULL default '',
  `content_text` longtext NOT NULL,
  PRIMARY KEY  (`id_text`),
  KEY `name_text` (`name_text`,`type_text`)
) TYPE=MyISAM AUTO_INCREMENT=72 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `visits`
-- 

CREATE TABLE `visits` (
  `id_visit` int(11) NOT NULL auto_increment,
  `page_visit` varchar(255) NOT NULL default '',
  `referer_visit` varchar(255) NOT NULL default '',
  `referer_id_visit` int(11) NOT NULL default '0',
  `date_visit` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_visit` timestamp(14) NOT NULL,
  `browser_visit` varchar(255) default NULL,
  PRIMARY KEY  (`id_visit`),
  KEY `date_visit` (`date_visit`,`update_visit`),
  KEY `referer_id_visit` (`referer_id_visit`)
) TYPE=MyISAM AUTO_INCREMENT=5419 ;
