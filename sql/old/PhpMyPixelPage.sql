-- phpMyAdmin SQL Dump
-- version 2.6.0-rc1
-- http://www.phpmyadmin.net
-- 

-- 
-- Structure de la table `FAQ`
-- 

DROP TABLE IF EXISTS `FAQ`;
CREATE TABLE IF NOT EXISTS `FAQ` (
  `id_FAQ` int(11) NOT NULL auto_increment,
  `FAQ_title` varchar(255) NOT NULL default '',
  `FAQ_position` int(11) NOT NULL default '0',
  `FAQ_text` longtext NOT NULL,
  `FAQ_link` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_FAQ`),
  KEY `FAQ_title` (`FAQ_title`,`FAQ_position`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `metadata`
-- 

DROP TABLE IF EXISTS `metadata`;
CREATE TABLE IF NOT EXISTS `metadata` (
  `id_meta` int(11) NOT NULL auto_increment,
  `total_pixel` int(11) NOT NULL default '0',
  `total_sites` int(11) NOT NULL default '0',
  `tmp1` varchar(255) NOT NULL default '',
  `tmp2` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_meta`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `out`
-- 

DROP TABLE IF EXISTS `out`;
CREATE TABLE IF NOT EXISTS `out` (
  `id_out` int(11) NOT NULL auto_increment,
  `site_id_out` int(11) NOT NULL default '0',
  `datetime_out` datetime NOT NULL default '0000-00-00 00:00:00',
  `tmp1` int(11) default NULL,
  PRIMARY KEY  (`id_out`),
  KEY `site_id_out` (`site_id_out`,`datetime_out`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `partners`
-- 

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id_partner` int(11) NOT NULL auto_increment,
  `name_partner` varchar(128) NOT NULL default '',
  `url_partner` varchar(255) NOT NULL default '',
  `tmp1` int(11) NOT NULL default '0',
  `tmp2` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_partner`),
  KEY `name_partner` (`name_partner`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `referers`
-- 

DROP TABLE IF EXISTS `referers`;
CREATE TABLE IF NOT EXISTS `referers` (
  `referer_md5` bigint(20) unsigned NOT NULL auto_increment,
  `date` date NOT NULL default '0000-00-00',
  `referer` varchar(255) NOT NULL default '',
  `visites` int(10) unsigned NOT NULL default '0',
  `visites_jour` int(10) unsigned NOT NULL default '0',
  `visites_veille` int(10) unsigned NOT NULL default '0',
  `visites_week` int(10) unsigned NOT NULL default '0',
  `update` timestamp(14) NOT NULL,
  PRIMARY KEY  (`referer_md5`),
  KEY `date` (`date`,`referer`,`visites`,`update`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `site`
-- 

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id_site` int(11) NOT NULL auto_increment,
  `name_site` varchar(64) NOT NULL default '',
  `title_site` varchar(255) NOT NULL default '',
  `url_site` varchar(128) NOT NULL default '',
  `x_size` int(11) NOT NULL default '0',
  `y_size` int(11) NOT NULL default '0',
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
  PRIMARY KEY  (`id_site`),
  KEY `id_site` (`id_site`,`name_site`,`x_size`,`y_size`),
  KEY `name_site` (`name_site`),
  KEY `x_size` (`x_size`),
  KEY `y_size` (`y_size`),
  KEY `x_pos` (`x_pos`),
  KEY `y_pos` (`y_pos`)
) TYPE=MyISAM COMMENT='million dollar homepage' AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `visits`
-- 

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
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
) TYPE=MyISAM AUTO_INCREMENT=20 ;


