-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: sedna.neofutur.net
-- Generation Time: Feb 22, 2006 at 04:19 AM
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

-- 
-- Dumping data for table `FAQ`
-- 

INSERT INTO `FAQ` VALUES (1, 'Qu''est ce que l''InformEthique ?', 1, '<a href="http://neoskills.com">NeoSkills.com</a>\r\n', '');
INSERT INTO `FAQ` VALUES (2, 'Pourquoi ReInventer ?', 2, ' Parce que l''informatique pionniere etait ethique au demarrage, dans les annees soixante les chercheurs s''echangaient en permanence des bouts de code avec les resultats de leurs recherches.<br />\r\n<br />\r\n L''informatique s''est perdue dans des tarifs prohibitifs et le plumage generalise des clients, NeoSkills se propose d''y remedier en offrant a tous une informatique digne de confiance et de qualite.<br />\r\n<br />\r\n\r\n\r\n ', '');
INSERT INTO `FAQ` VALUES (3, 'Mais alors NeoSKills c''est quoi ?', 3, ' Voir <a href="http://neoskills.com/all/html/BP/"> Le business Plan de NeoSkills</a> et tout particulièrement <a href="http://neoskills.com/all/html/BP/statuts/statuts.html"> La proposition de statuts pour la SCIC</a>', '');
INSERT INTO `FAQ` VALUES (4, 'C''est quoi ce statut de SCIC ?', 4, ' Voir <a href="http://scic.coop">scic.coop</a> ansi que les textes de lois qui regissent les <a href="http://neoskills.com/all/html/BP/lois/">Societes cooperatives d interet collectif</a>\r\n\r\n', '');
INSERT INTO `FAQ` VALUES (5, 'Et il vous faut combien ?', 5, '\r\n C est tres relatif, le projet pourrait demarrer petit avec quelques milliers d''euros, mais il faudrait de nombreux contributeurs benevoles, notament un responsable financier, un responsable commercial, un responsable juridique . . .<br />\r\n<br />\r\n Avec un capital de depart important nous pourrons mettre toutes les chances de notre cote.<br />\r\n<br />', '');
INSERT INTO `FAQ` VALUES (6, 'J''aimerai bien acheter quelques blocs de pixels mais je n''ai pas de logo, pas de banniere ;( Que faire ?', 6, '<h3>\r\n <blink> Visitez donc :</blink><br />\r\n<table>\r\n<tr>\r\n<td>\r\n <a href=''http://cooltext.com'' target="_top">\r\n <img src=''http://cooltext.com/images/ctb4.gif'' width=''88'' height=''31'' alt=''Logo and Graphics Generator'' border=''0'' align=''center''>\r\n </a>\r\n</td><td> <a href=''http://ww7.be/neofutur/img/graphisme/''>\r\n <img src=''http://pixels.ww7.be/img/FrenchPixels_1_180x40_animated.gif'' width=''180'' height=''40'' alt=''Mes ressources graphiques '' border=''0'' align=''center''>\r\n </a>\r\n</td><td>\r\n <a href=''http://www.rewindforward.com''>L''excellent rewindforward.com \r\n </a>\r\n</td><td>\r\n<a href=''http://store.templatemonster.com?aff=neofutur''><img src=''http://www.templatehelp.com/banners/1/120x90_1.gif'' width=''120'' height=''90'' border=''0'' alt=''template monster'' ></a>\r\n</td><td>\r\n<a href="http://www.babylon-design.com/site"><img src="img/babylondesign.gif" alt="BabylonDesign" /></a>\r\n</td>\r\n</tr>\r\n</table>\r\n</h3>\r\n', '');

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

-- 
-- Dumping data for table `bloglines`
-- 


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

-- 
-- Dumping data for table `bysite`
-- 


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

-- 
-- Dumping data for table `cheatcodes`
-- 

INSERT INTO `cheatcodes` VALUES (1, 'DEFAULT_FREE', 'PERCENT', 100, 'this gives a FREE link ;)', 0);
INSERT INTO `cheatcodes` VALUES (2, '20PERCENT', 'PERCENT', 20, 'gives 20% saving on a link', 0);

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

-- 
-- Dumping data for table `metadata`
-- 

INSERT INTO `metadata` VALUES (1, 'CHARSET', 'UTF-8', '');
INSERT INTO `metadata` VALUES (2, 'author', 'waisse.org', 'meta tag author');
INSERT INTO `metadata` VALUES (3, 'keywords', 'pixels, add, annonces, referencement, pagerank, visiteurs, traffic, pub, projet', 'keywords, separated, with, commas');
INSERT INTO `metadata` VALUES (4, 'description', 'achetez des pixels pour sponsoriser un projet coopératif', 'website description ( meta description )');
INSERT INTO `metadata` VALUES (5, 'backend', 'rss backend url', 'rss backend url');
INSERT INTO `metadata` VALUES (6, 'PMPP_version', '0.44', 'PhpMyPixelPage currently Installed version');

-- --------------------------------------------------------

-- 
-- Table structure for table `out`
-- 

CREATE TABLE `out` (
  `id_out` int(11) NOT NULL auto_increment,
  `site_id_out` int(11) NOT NULL default '0',
  `datetime_out` datetime NOT NULL default '0000-00-00 00:00:00',
  `tmp1` int(11) default NULL,
  PRIMARY KEY  (`id_out`),
  KEY `site_id_out` (`site_id_out`,`datetime_out`)
) TYPE=MyISAM AUTO_INCREMENT=2034 ;

-- 
-- Dumping data for table `out`
-- 

INSERT INTO `out` VALUES (1, 3, '2005-11-01 00:00:00', NULL);
INSERT INTO `out` VALUES (2, 3, '2005-11-01 00:00:00', NULL);

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

-- 
-- Dumping data for table `partners`
-- 

INSERT INTO `partners` VALUES (1, 'NeoSkills', 'http://neoskills.com', 'Le projet de SCIC NeoSkills', 'Inventons l InformEthique Cooperative', '2005-11-01', '2012-11-01');
INSERT INTO `partners` VALUES (2, 'feeder.ww7.be', 'http://feeder.ww7.be', 'Le portail de news du reseau NeoSkills', 'Toutes les news libres du nouveau monde, vos news', '2005-11-01', '2012-11-01');
INSERT INTO `partners` VALUES (3, 'blip.ww7.be', 'http://blip.ww7.be', ' Le blog du projet NeoSkills', 'Information Wants to be Free', '2005-11-01', '2006-11-01');
INSERT INTO `partners` VALUES (4, 'CahierSpip', 'http://cahierspip.ww7.be', 'CahierSpip, un squelette XHTML 1.0 pour SPIP', 'CahierSpip, tout pour débuter avec Spip, XHTML, CSS, le referencement . . .', '2005-11-01', '2012-11-01');
INSERT INTO `partners` VALUES (5, 'Games', 'http://games.ww7.be', 'Le portail jeux de NeoSkills', 'Jeux libres et jeux gratuits en ligne', '2005-11-01', '2006-11-01');
INSERT INTO `partners` VALUES (7, 'Yagoort.org', 'http://annuaire.yagoort.org', 'Annuaire avec rapports d''indexation Google', 'Annuaire Webmaster avec rapports d''indexation Google', '2006-01-01', '2012-01-01');
INSERT INTO `partners` VALUES (8, 'CreateAPlanet', 'http://www.createaplanet.com/', 'Create you own Planet in the Pixel Galaxy', 'Create you own Planet in the Pixel Galaxy', '2006-01-01', '2010-01-01');
INSERT INTO `partners` VALUES (9, 'Project Penthouse', 'http://www.projectpenthouse.com/index.aspx?ref=22', 'Project Penthouse', NULL, '2006-01-01', '2010-01-01');
INSERT INTO `partners` VALUES (10, 'rentpixelads', 'http://www.rentpixelads.com', NULL, 'http://www.rentpixelads.com/en/rentpixelads.gif', '2006-01-01', '2010-01-01');
INSERT INTO `partners` VALUES (11, 'PixelAdNet', 'http://pixeladnet.com', 'Service de mutualisation des PixelAds', 'http://pixeladnet.com', '2006-01-01', '2010-01-01');
INSERT INTO `partners` VALUES (12, 'TrafficFlare', 'http://trafficflare.com/index.cgi?162044', 'traffic exchange', NULL, '2006-01-01', '2010-01-01');
INSERT INTO `partners` VALUES (13, 'BabylonDesign', 'http://www.babylon-design.com', 'BabylonDesign', 'BabylonDesign', '2006-01-01', '2008-01-01');

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
) TYPE=MyISAM AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `paypal_users`
-- 

INSERT INTO `paypal_users` VALUES (35, 'I7RGZluBnR', NULL, 'a', 'b', '1', '2', '3', '4', '5', '6', '', '0000-00-00', 0);

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

-- 
-- Dumping data for table `pixeltypes`
-- 

INSERT INTO `pixeltypes` VALUES (2, 1, 'bleu', 'bg13.gif', ' Le pixel  Bleu coute  0.50EUR ( le bloc de 10x10=100 pixels bleus coute donc 50EUR )', 50, 25);
INSERT INTO `pixeltypes` VALUES (3, 2, 'vert', 'bg11.gif', ' Le pixel  Vert coute  0.25 EUR ( le bloc de 10x10=100 pixels bleus coute donc 25 EUR )', 25, 25);
INSERT INTO `pixeltypes` VALUES (4, 3, 'rose', 'bg17.gif', ' Le pixel  Rose coute  0.10 EUR ( le bloc de 10x10=100 pixels bleus coute donc seulement 10 EUR )', 10, 50);

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

-- 
-- Dumping data for table `prices`
-- 

INSERT INTO `prices` VALUES (1, 'blue', ' toutes les case en haut de la grille et en fond bleu clair', 1, 100, 'bleu', 'img/bg13.gif', 'choosepixels_blue.php', '<form action="https://www.paypal.com/cgi-bin/webscr" method="post">\r\n<input type="hidden" name="cmd" value="_s-xclick">\r\n<input type="image" src="https://www.paypal.com/fr_FR/i/btn/x-click-butcc.gif" border="0" name="submit" alt="Effectuez vos paiements via PayPal : une solution rapide, gratuite et sécurisée !">\r\n<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----\r\n">\r\n</form>\r\n');
INSERT INTO `prices` VALUES (2, 'green', ' toutes les case au milieu de la grille et en fond vert', 0.25, 25, 'vert', 'img/bg11.gif', 'choosepixels_green.php', '<form action="https://www.paypal.com/cgi-bin/webscr" method="post">\r\n<input type="hidden" name="cmd" value="_s-xclick">\r\n<input type="image" src="https://www.paypal.com/fr_FR/i/btn/x-click-butcc.gif" border="0" name="submit" alt="Effectuez vos paiements via PayPal : une solution rapide, gratuite et sécurisée !">\r\n<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----\r\n">\r\n</form>');
INSERT INTO `prices` VALUES (3, 'pink', 'toutes les case en bas de la grille et en fond rose', 0.1, 10, 'rose', 'img/bg17.gif', 'choosepixels_pink.php', '<form action="https://www.paypal.com/cgi-bin/webscr" method="post">\r\n<input type="hidden" name="cmd" value="_s-xclick">\r\n<input type="image" src="https://www.paypal.com/fr_FR/i/btn/x-click-butcc.gif" border="0" name="submit" alt="Effectuez vos paiem\r\nents via PayPal : une solution rapide, gratuite et sécurisée !">\r\n<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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\r\nw9P3LQ2jQ1YjbtxBU=-----END PKCS7-----\r\n">\r\n</form>');

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

-- 
-- Dumping data for table `referers`
-- 


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
) TYPE=MyISAM COMMENT='million dollar homepage' AUTO_INCREMENT=49 ;

-- 
-- Dumping data for table `site`
-- 

INSERT INTO `site` VALUES (1, 'NeoSkills', 'NeoSkills.com, l InformEthique', 'http://neoskills.com', 'active', 40, 40, 1, 1600, 460, 60, 'neoskills.jpg', 'william@waisse.org', 'first one', 16, 0, '2005-10-31', '2006-10-31', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (2, 'CahierSpip', 'CahierSpip, tout pour debuter avec SPIP', 'http://cahierspip.ww7.be', 'active', 40, 40, 1, 1600, 500, 60, 'cahierspip.gif', 'cahierspip@ww7.be', NULL, 16, 0, '2005-10-31', '2006-10-31', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (3, 'WesnothFr', 'La communaute francophone des joueurs de Wesnoth', 'http://wesnothfr.ww7.be', 'active', 40, 40, 1, 1600, 480, 100, 'wesnothfr.png', 'wesnothfr@ww7.be', NULL, 16, 0, '2005-10-31', '2006-10-31', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (4, 'NeoSkills News Feeder', 'Toutes les meilleures news libres', 'http://feeder.ww7.be', 'active', 180, 40, 1, 7200, 400, 140, 'free_news_small.png', 'feeder@waisse.org', NULL, 72, 0, '2005-10-31', '2006-10-31', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (5, 'PunBB', 'PunBB The Real PHP Forum', 'http://punbb.org', 'active', 30, 30, 1, 900, 450, 100, 'punbb.gif', 'rickard@punbb.org', 'Le meilleur forum PHP de tous les temps', 90, 0, '2005-10-31', '2006-10-31', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (6, 'Games', 'games.ww7.be', 'http://games.ww7.be', 'active', 60, 20, 1, 1200, 520, 120, 'games.png', 'games@ww7.be', NULL, 120, 0, '2005-11-01', '2006-11-01', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (7, 'CahierSpip', 'CahierSpip', 'http://cahierspip.ww7.be', 'active', 80, 10, 1, 800, 400, 130, 'cahierspip2.gif', 'cahierspip@ww7.be', NULL, 80, 0, '2005-11-04', '2006-11-04', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (8, 'Blip', 'Blip, le blog de NeoSkills', 'http://blip.ww7.be', 'active', 20, 10, 1, 200, 430, 120, 'blip1.png', 'blip@waisse.org', NULL, 20, 0, '2005-11-08', '2006-11-08', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (9, 'ZeroDollars', 'Zero Dollars HomePage, Free Advertisement worldwide', 'http://www.zerodollarshomepage.com', 'active', 100, 20, 1, 2000, 520, 100, 'zerobanner.gif', 'contact@zerodollarshomepage.com', 'free exchange', 200, 0, '2005-11-10', '2005-11-10', 365, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (10, 'MultiSpip votre Spip en 3 clics', 'MultiSpip votre Spip en 3 clics', 'http://multispip.ww7.be', 'active', 250, 80, 2, 20000, 200, 250, 'multispip_en_3_clics_252x80.png', 'multispip@waisse.org', ' Votre site web en 3 minutes, c''est possible avec multispip', 600, 0, '2006-01-01', '2008-01-01', 704, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (11, 'GeekNode.org, le reseau IRC qui Trolle dur', 'GeekNode.org, le reseau IRC qui Trolle dur', 'http://geeknode.org', 'active', 60, 50, 1, 3000, 380, 80, 'geeknode_small.png', 'bragon@geenode.org', NULL, 60, 0, '2005-01-01', '2005-01-01', 0, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (12, 'PixWars', ' PixWars, la guerre des pixels', 'http://www.thepixelwars.com/', 'active', 150, 30, 2, 4500, 450, 250, 'logopixwars.gif', 'ads@thepixelwars.com', NULL, 60, 0, '2006-01-10', '2008-01-10', 730, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (13, 'FrTags', 'FrTags, les meilleurs URLs francophones a votre portee', 'http://frtags.ww7.be', 'active', 120, 60, 2, 7200, 600, 250, 'FrTags_1_animated_120x60.gif', 'frtags@waisse.org', 'Chaque jour les informations les plus bookmarkees', 200, 0, '2006-01-01', '2016-01-01', 3650, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (14, 'AntiBush', 'Des pixels pour enterrer Bush', 'http://www.antibushpixels.com', 'active', 120, 40, 2, 4800, 600, 310, 'antibush_1_120x40.png', 'antibushpixels@gmail.com', NULL, 0, 0, '2006-01-01', '2020-01-00', 1500, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (15, 'Paris Pixels', 'La pixel Publicite, publicite Parisienne econome', 'http://parispixels.ww7.be', 'active', 80, 30, 1, 2400, 80, 30, 'ParisPixels_animated_80x30.gif', 'ventes@ww7.be', 'La pixel Publicite, publicite Parisienne econome', 0, 0, '2006-01-01', '2010-01-01', 1400, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (16, 'PhpMyPixelPage', 'Free PhpMyPixelPage Creative Commons Code', 'http://freshmeat.net/projects/phpmypixelpage/', 'active', 80, 30, 1, 2400, 100, 150, 'PhpMyPixPage_80x30_animated.gif', 'ventes@ww7.be', 'Avec PhpMyPixelPage, commencez votre PixelPage dans les meilleures conditions', 100, 0, '2006-01-01', '2010-01-01', 1400, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (17, 'Annonceur Quebec Pixels', 'Quebec Pixel - Annoncez-vous originalement!', 'http://www.quebecpixel.com', 'temporary', 70, 30, 1, 2100, 100, 80, 'tag_pubqcpix.jpg', 'webmaster@quebecpixel.com', NULL, 0, 0, '2006-01-01', '2012-01-01', 2000, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (32, 'cluster', 'cluster', 'http://cluster.pixels.ww7.be', 'active', 20, 20, 3, 400, 0, 0, '20x20_animated_2.gif', 'acheteur@ww7.be', 'cluster', 40, 40, '2006-02-14', '2011-05-07', 1825, 'web_accept', '2006-02-14', 'w', 'w', 'unilateral', 'Achat de pixels sur http://pixels.ww7.be', 'EUR', 'w@waisse.org', 'instant', 'AiPC9BjkCyDFQXbSkoZcgqH3hpacAiQDmuyT6Xw74jT2m4sFTXU3uhVU', 'verified', 1, 'acheteur@ww7.be', 0, 1, 'w@waisse.org', 'YYXLHMQ6US6DN', 'Pending', 0, 'XQX4HXa3bR', '2.0');
INSERT INTO `site` VALUES (33, 'neofutur.net', 'Le monde de neo', 'http://neofutur.net', 'active', 20, 20, 3, 400, 0, 500, '20x20_animated_2.gif', 'acheteur@ww7.be', 'ressources diverses de neofutur', 40, 40, '2006-02-14', '2011-05-07', 1825, 'web_accept', '2006-02-14', 'w', 'w', 'unilateral', 'Achat de pixels sur http://pixels.ww7.be', 'EUR', 'w@waisse.org', 'instant', 'ACUe-E7Hjxmeel8FjYAtjnx-yjHAA2lMoBmkuRY8-.Re7aeFT6sgJexJ', 'verified', 1, 'acheteur@ww7.be', 0, 1, 'w@waisse.org', 'YYXLHMQ6US6DN', 'Pending', 0, 'XesQpemg08', '2.0');
INSERT INTO `site` VALUES (34, 'Pixel Explosion', '10 Cent Pixels', 'http://www.pixelexplosion.net', 'active', 10, 10, 3, 100, 270, 510, '1x1redheart.gif', 'joehurl@comcast.net', '10 cents A Pixels Site', 0, 0, '0000-00-00', '0000-00-00', 0, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, 'fFSmezhtOE', '');
INSERT INTO `site` VALUES (35, 'LDD.fr', 'Les Développements Durables', 'http://ldd.fr', 'temporary', 20, 20, 3, 400, 550, 500, '20x20_animated_2.gif', 'contact@ldd.fr', 'InformEthique', 0, 0, '0000-00-00', '0000-00-00', 0, '', NULL, '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, 'T6uUTIVu9E', '');
INSERT INTO `site` VALUES (40, 'BelleField.net', 'Bellefield.net -- A Pixel Ads -- Internet Directory', 'http://www.bellefield.net', 'active', 20, 20, 3, 400, 540, 80, '20x20_Bellefield.gif', 'links@bellefield.net', 'Bellefield.net -- A Pixel Ads -- Internet Directory', 200, 0, '2006-01-01', '2011-01-01', 1825, 'partner', '2006-01-01', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', '', 0, '', '');
INSERT INTO `site` VALUES (42, 'Annuaire Pixel', 'Annuaire des meilleurs pixels Francophones', 'http://dir.pixels.ww7.be', 'active', 160, 60, 3, 9600, 40, 300, 'PixelFr_160x60.gif', 'acheteur@ww7.be', 'Annuaire des meilleurs pixels Francophones', 960, 960, '2006-02-22', '2011-05-15', 1825, 'web_accept', '2006-02-22', 'w', 'w', 'unilateral', 'Achat de pixels sur pixels.ww7.be', 'EUR', '', 'instant', 'A3mN4yhk-GtnjV5HcZAuxQff.PWKAmVZ05bPc3cf.Ba1o0U7Wph5n0YG', 'verified', 1, 'acheteur@ww7.be', 0, 1, 'paypal@waisse.org', 'YYXLHMQ6US6DN', 'Pending', 0, 'HUoeE0X5kQ', '2.0');
INSERT INTO `site` VALUES (48, 'perso', 'perso', 'http://waisse.org', 'active', 10, 20, 3, 200, 0, 520, '10x10_animated_2.gif', 'acheteur@ww7.be', 'perso', 20, 20, '2006-02-22', '2011-05-15', 1825, 'web_accept', '2006-02-22', 'w', 'w', 'unilateral', 'Achat de pixels sur pixels.ww7.be', 'EUR', '', 'instant', 'Af1s6syKAtkd4XFEhd3pFIwm17CgAnQs5.FSTJo4weOyiDGYF43E2pv7', 'verified', 1, 'acheteur@ww7.be', 0, 1, 'paypal@waisse.org', 'YYXLHMQ6US6DN', 'Pending', 0, 'gzgPHazvda', '2.0');

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
) TYPE=MyISAM AUTO_INCREMENT=66 ;

-- 
-- Dumping data for table `text`
-- 

INSERT INTO `text` VALUES (1, 'INDEX_INTRO', 'HTML', '<h3>Bienvenue Sur la page de la Pixel Publicite Francophone</h3>\r\n\r\n\r\n    ');
INSERT INTO `text` VALUES (2, 'BUY_INTRO', 'HTML', '<p><balise id="achat"><h1>Acheter des pixels</h1></balise></p>\r\n<center><h3><em>Achetez des pixels, gagnez des visiteurs et aidez-nous a ouvrir notre coopérative !</em></h3></center>\r\n<p>\r\nMais avant d''aller plus loin, veuillez lire attentivement ce qui suit :\r\n</p>\r\n<ul><p>\r\n<h5><li>L achat minimal est de 100 pixels (soit 10EUR) et le maximum est toute l espace restante;</li>\r\n<li>Pour l instant, les paiments se font par Paypal uniquement. Toutefois, si vous n''avez pas de compte Paypal mais souhaitez quand meme acheter des pixels, <a href="mailto:ventes@ww7.be">dites-le nous</a>;</li>\r\n<li>L espace que vous achetez sert e placer une image uniquement. Cette image sera exposee, en principe, indefiniment, jusqu''a la fin du monde, ou, pire encore, la fin du cyber-espace. Par contre, nous ne sommes pas responsable des eventuels problemes techniques d''hebergement, nous garantissons dans tous les cas une durée d''affichage minimale de 5 ans.</li>\r\n\r\n<li>Vous pouvez changer l image, le lien, titre ou la position de votre publicite <strong>une seule fois</strong>, et seulement en cas d une erreur ou un malentendu.\r\n Pour effectuer ces changements, vous devez nous <a href="mailto:ventes@ww7.be"> envoyer un email</a>. Si votre site web n existe plus ou que l adresse a changee (ou tout autre chose de ce genre), <a href="mailto:ventes@ww7.be">contactez-nous</a> et nous effectuerons les changements desires;</li>\r\n<li>Une fois votre image et votre lien publies sur notre site, vous ne pouvez pas etre rembourse;</li>\r\n<li>Nous avons l entiere liberte de refuser une image si nous la trouvons trop offensante ou lui attribuons une quelconque conotation raciste ou pornographique;</li>\r\n<li>Votre site doit etre en francais, ou au moins posseder une section francophone;</li>\r\n<li>Votre site web ne doit pas avoir de contenu illegal : warez, roms, etc.;</li>\r\n\r\n<li>Votre site web ne doit pas avoir de contenu pornographique, raciste ou sectaire;</li>\r\n<li>Ce que vous achetez sur ce site est simplement le droit d afficher une image. En achetant des pixels, vous n avez achete aucune partie de ce site, en aucun cas, et n avez donc aucun droit legal le concernant;</li>\r\n<li>Si, pour certaines raisons, vous voulez que votre image et votre lien soit retires, <a href="mailto:ventes@ww7.be">contactez-nous</a> et nous l enleverons le plus vite possible. <em>Note : Vous <strong>n</strong> allez <strong>pas</strong> etre rembourse</em>;</li>\r\n<li>L image (ou les images) que vous nous enverrez apres avoir dument paye doivent etre de la grandeur exact de ce que vous avez paye (100 pixels = une image de 10x10 pixels);</li>\r\n\r\n<li>Les imagent peuvent etre au format JPEG, PNG ou GIF. <strong>Elle ne doivent pas etre animees pour bénéficier du tarif normal, si vous tenez à soumettre une image animee le tarif et double</strong>;</li>\r\n<li>Votre lien doit obligatoirement rediriger vers un site web (et non une publicite quelconque);</li>\r\n<li>Les pixels que vous avez achete seront affiches sur le site seulement quand nous aurons reeu confirmation du paiement. Ce faisant, votre image sera presente sur le site dans un maximum de 24 heures;</li>\r\n<li>Nous nous reservons le droit de changer quoi que ce soit sur cette page concernant les avertissements, n importe quand et ce, sans preavis.</li></h5>\r\n</p></ul>\r\n<p>Si vous acceptez toutes ces conditions et ces reglements, vous pouvez poursuivre.</p>\r\n<p><h5><ul>\r\n* La grandeur minimale est un carre de 100 pixels (10x10 pixels).<br>\r\n* La planche de pixels est constituee de 10 000 de ces carres, contenant un million de pixels en tout.<br>\r\n\r\n* Chaque pixel coute un prix entre 0.10 EUR et 1 EUR selon son positionnement dans la grille ( voir tarifs ci dessous ), donc un carre de 10x10 coute entre 10EUR et 100 EUR.<br>\r\n* Le paiement minimal est donc de 10EUR (100 pixels = un carre de 10x10).<br>\r\n* La quantite demandee correspond au nombre de carre de 10x10 pixels que vous voulez acheter.\r\n</ul></h5></p>\r\n<p>Premierement, cliquez sur le bouton pour effectuer le paiement via <strong>Paypal</strong> :</p>\r\n\r\n<p><h5><ul>\r\nVotre nom ou pseudonyme;<br>\r\nL''image en fichier attache ou l''adresse URL de l''image (maximum 900 pixels en tout);<br>\r\nLe titre de l''image (le message qui apparaitra quand le curseur survolera l image);<br>\r\nLe lien desire;<br>\r\nLa position desiree ( position x et y ), ainsi que la largeur et la hauteur d''affichage de votre image.\r\n\r\n</ul></h5></p>\r\n<p>L''image sera presente sur le site en 24 heures ou moins. Votre image sera presente sur le site pendant <strong>2 semaines</strong> éventuellement renouvelables. Pour afficher indefiniment votre image, <a href="#achat">achetez des pixels</a>.</p>\r\n\r\n<br>\r\n\r\n<center>\r\n<a href="/" title="Acheter des maintenant avec paypal votre publicité sur ce site"><img src="https://www.paypal.com/fr_FR/i/btn/x-click-but5.gif" alt="acheter" /></a><br />\r\n</center>\r\n\r\n<p>Une fois le paiment effectue, envoyez-nous un email (<a href="mailto:ventes@ww7.be">ventes@ww7.be</a>) avec les informations suivantes :</p>\r\n<p><h5><ul>\r\nVotre compte Paypal (un email);<br>\r\nLa quantite de carre 10x10 achetes (afin de s''assurer qu''il n''y ait pas d''erreur);<br>\r\nLe titre de(des) l''image(s) (le message qui apparaitra quand le curseur sulvolera l image);<br>\r\nLe lien desire;<br>\r\nL''image en fichier attache ou l''adresse URL de l''image;<br>\r\nLa position desiree ( position x et y ), ainsi que la largeur et la hauteur d''affichage de votre image.\r\n\r\n</ul></h5></p>\r\n<p>L''image sera presente sur le site en 24 heures ou moins. Votre image sera presente sur le site indefiniement, ou jusqu''e ce qu''une bombe nuclaire tombe sur notre serveur.</p>\r\n<br>\r\n<p><balise id="gratuit"><h1>Affichez vos pixels gratuitement</h1></balise></p>\r\n<p>Il est desormais possible d''afficher votre pub gratuitement sur pixels.ww7.be.\r\n Sachez neanmoins que les publicites placees gratuitement seront automatiquement enlevees apres 1 mois d''activites. Ceci dans le but de laisser de la place e tout le monde et, bien evidemment, de vous faire acheter nos pixels ! Par contre, quelques conditions s''appliquent : Votre image doit etre d''une grandeur de 900 pixels maximum (soit 30x30 ou 10x90 ou etc.) et respecter les <a href="#achat">contraintes</a> listees dans "Acheter des pixels". De plus, ceux qui acheteront des pixels auront la priorite d''emplacement. Donc si l''acheteur veut son image e 0,0 et qu''une image gratuite est deje e cette position, l''image gratuite sera deplacee (mais non supprimee).</p>\r\n<p>Si vous acceptez ces petites restrictions, envoyez un email e <a href="mailto:ventes@ww7.be">ventes@ww7.be</a> avec les informations suivantes, en <strong>specifiant dans le sujet qu''il s''agit du service gratuit </strong>:</p>\r\n\r\n<p><balise id="don"><h1>Faire un don</h1></balise></p>\r\n<p>Si vous ne voulez pas acheter de pixels mais souhaitez quand meme soutenir le projet en donnant un peu d''argent, vous pouvez faire un don :<br>\r\n<center>\r\n<!-- Debut du code paypal   -->\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post">\r\n<input type="hidden" name="cmd" value="_s-xclick">\r\n<input type="image" src="https://www.paypal.com/fr_FR/i/btn/x-click-but04.gif" border="0" name="submit" alt="Effectuez vos paiements via PayPal : une solution rapide, gratuite et securisee !">\r\n<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----\r\n">\r\n</form>\r\n<!-- fin du code paypal   -->\r\n\r\n\r\n</center>\r\n</p>\r\n\r\n ');
INSERT INTO `text` VALUES (19, 'INTRO_ADCLICKS', 'HTML', '<h3> Nous visons l''excellence et comptons bien rester parmi les meilleures pages de Pixel Publicite Francophone, et nous prouvons la qualite de notre espace en vous donnant le nombre de clics ( visiteurs ) envoyes a chacun de nos annonceurs ou partenaires :</h3>');
INSERT INTO `text` VALUES (3, 'LIST_INTRO', 'HTML', '<h4> Voici la liste de nos partenaires :</h4>\r\n\r\n');
INSERT INTO `text` VALUES (4, 'BANNER_CODE', 'HTML', '<a href="http://neoskills.com"> NeoSkills - </a> &nbsp;&nbsp; <a href="http://cahierspip.ww7.be">CahierSpip - </a> &nbsp;&nbsp; <a href="http://wesnothfr.ww7.be">WesnothFr - </a>&nbsp;&nbsp; <a href="http://feeder.ww7.be">Feeder - </a> &nbsp;&nbsp; <a href="http://geeknode.org"> geeknode - </a> &nbsp;&nbsp; <a href="http://spip.net/fr">Spip.net - </a> &nbsp;&nbsp;<a href="http://cometeinternational.neoskills.org">comete - </a> &nbsp;&nbsp;<a href="http://www.artisandelatoile.com/">artisan - </a> &nbsp;&nbsp; <a href="http://games.ww7.be/">NeoGames </a>\r\n');
INSERT INTO `text` VALUES (5, 'LOGO_CODE', 'HTML', '<img src="img/banniere1_h44.png" alt="Des pixels pour réinventer "><a href="http://neoskills.com"><img src="img/InformEthique_3_44.png" alt="l''Inform''Ethique"></a>\r\n');
INSERT INTO `text` VALUES (6, 'TITLE_HOME', 'TXT', '&nbsp; Accueil &nbsp;');
INSERT INTO `text` VALUES (7, 'TITLE_BUY', 'TXT', '&nbsp; Acheter &nbsp;');
INSERT INTO `text` VALUES (8, 'TITLE_LIST', 'TXT', '&nbsp; Liste des Pixels &nbsp;');
INSERT INTO `text` VALUES (9, 'TITLE_PARTNERS', 'TXT', '&nbsp; Partenaires &nbsp;');
INSERT INTO `text` VALUES (10, 'TITLE_FAQ', 'TXT', '&nbsp; FAQ &nbsp;');
INSERT INTO `text` VALUES (11, 'TITLE_CONTACT', 'TXT', '&nbsp; Contact &nbsp;');
INSERT INTO `text` VALUES (12, 'TITLE_GRTPR', 'TXT', 'RT PageRank(GRTPR):');
INSERT INTO `text` VALUES (13, 'MODIFY_SETTING', 'TXT', 'Modifier');
INSERT INTO `text` VALUES (14, 'VALID_MODIF', 'TXT', 'Valider');
INSERT INTO `text` VALUES (15, 'TEXT_PARTNERS', 'HTML', '<h3> Si vous souhaitez faire partie de nos partenaires, n''hesitez pas a nous <a href="contact.php">contacter</a></h3>\r\n\r\n<h3> Si vous avez fait votre propre <a href="http://freshmeat.net/projects/phpmypixelpage/">PhpMyPixelPage</a>, rejoignez nous sur \r\n<a href="http://groups.google.com/group/Publicite-Pixel-Francophones?lnk=li"> le Google Group Pixel Publicite Francophone</a><br />\r\n\r\nN hesitez pas aussi a vous inscrire sur <a href="http://sympa.ww7.be/wws/info/pixels">la mailing liste des pixels francophones</a><br />\r\n\r\n<hr />\r\n\r\n');
INSERT INTO `text` VALUES (59, 'IMAGE_ACCESS_BUY', 'TXT', 'Acceder au Règlement de ');
INSERT INTO `text` VALUES (60, 'IMAGE_BUY_TOTAL', 'TXT', ' EUR pour un total de ');
INSERT INTO `text` VALUES (61, 'IMAGE_PIXELS_TYPE', 'TXT', 'pixels de type');
INSERT INTO `text` VALUES (17, 'TITLE_ADCLICKS', 'TXT', 'AdClicks');
INSERT INTO `text` VALUES (18, 'MORE_STATS', 'HTML', '<table>\r\n <tr>\r\n  <td>\r\n   <SCRIPT type=''text/javascript'' language=''JavaScript'' src=''http://xsltcache.alexa.com/traffic_graph/js/g/c/1y?&u=<?php echo $site_url; ?>''></SCRIPT>\r\n</td>\r\n<td>\r\n\r\n<a href=''http://www.alexa.com/data/details/traffic_details?&range=6m&size=large&compare_sites=&y=r&url=<?php echo $site_url; ?>''><SCRIPT type=''text/javascript'' language=''JavaScript'' src=''http://xslt.alexa.com/site_stats/js/s/a?url=pixels.ww7.be''></SCRIPT></a>\r\n<br />\r\n<a href=''http://www.webdesign.org?aff=neofutur''><img src=''http://www.mytemplatestorage.com/banners/1/1/wdl-125x125b.gif'' width=''125'' height=''125'' border=''0'' alt='' templates ''></a>\r\n</td>\r\n<td>\r\n\r\n <h3>Voir aussi :</h3>\r\n <ul>\r\n  <li><h3> Notre <a href=''http://rankit.free.fr/site.php?pixels.ww7.be''>PageRank temps reel avec rankit.fr</a></h3></li>\r\n  <li><h3> Nos  <a href=''http://www.promopixels.net/topsites/index.php?a=stats&u=neofutur''> stats sur promopixels.net</a> </h3></li>\r\n  <li> <h3>Nos <a href=''http://pixels.ww7.be/stats/''>stats ( awstats ) completes </a></h3></li>\r\n  <li> <h3> Notre <a href=''http://annuaire.yagoort.org/reports/pixels.ww7.be.html''> rapport referencement sur yagoort.org</a> </h3></li>\r\n  <li><h3> La repartition geographique de nos visiteurs <a href=''http://clustrmaps.com/counter/maps.php?url=http://pixels.ww7.be&type=small&clusters=no&map=Europe''> en Europe</a> et <a href=''http://clustrmaps.com/counter/maps.php?url=http://pixels.ww7.be&type=small&clusters=no&map=world''> dans le monde</a></h3>\r\n  </li>\r\n  <li><h3>Notre <a href=''http://outils.yagoort.org/pageranksearch.html?q=ww7.be&hl=fr''>reseau de referencement ww7.be</a></h3>\r\n  </li>\r\n  <li>\r\n <h3>Nos <a href="http://www.alexa.com/search?q=link%3A+pixels.ww7.be%2F"> liens entrants</a>, qui vous garantissent un traffic de qualite</h3>\r\n  </li>\r\n  <li>\r\n   <h3> notre classement sur <a href="http://www.pixelwebmaster.com/alexa/?id=wrank"> pixelwebmaster.com</a></h3>\r\n  </li>\r\n </ul>\r\n</td>\r\n\r\n</tr></table>\r\n');
INSERT INTO `text` VALUES (20, 'BUY_PIXELS', 'TXT', 'Achetez ces pixels');
INSERT INTO `text` VALUES (21, 'OUR_PRICES', 'HTML', '<h1> Nos tarifs </h1>');
INSERT INTO `text` VALUES (22, 'MORE_PRICES', 'HTML', '<tr><td>\r\n <h4>tarif special</h4>\r\n</td><td>\r\n <blink><h4>image animee</h4></blink>\r\n</td><td>\r\n <h3>Vous souhaitez utiliser une image GIF animee, le prix sera double</h3>\r\n</td><td>\r\n</td><td>\r\n <h1> prix X2 </H1>\r\n</td><td>\r\n <h1>prix X2</H1>\r\n</td></tr>\r\n\r\n<tr><td>\r\n <h4>tarif special</h4>\r\n</td><td>\r\n <blink><h4>bonnes causes, projets libres ...</h4></blink>\r\n</td><td>\r\n <h3>25% a 75% de reduction pour toutes les bonnes causes, <a href=''/contact.php''>Contactez nous</a> </h3>"; echo "</td><td>";\r\n</td><td><h1> -25% a -75% </H1>\r\n</td><td>\r\n <h1>-25% a -75%</H1> \r\n</td></tr>\r\n');
INSERT INTO `text` VALUES (24, 'YOUR_IMAGE', 'TXT', 'Votre image');
INSERT INTO `text` VALUES (25, 'YOUR_NAME', 'TXT', 'Votre nom');
INSERT INTO `text` VALUES (26, 'YOUR_SURNAME', 'TXT', 'Votre prenom');
INSERT INTO `text` VALUES (27, 'YOUR_PAYPAL_EMAIL', 'HTML', 'E-Mail ( de votre compte <a href=''https://www.paypal.com/fr/mrb/pal=L5HFB9GXFQUY6''>paypal</a>\r\n');
INSERT INTO `text` VALUES (28, 'YOUR_ADRESS_1', 'TXT', 'Adresse');
INSERT INTO `text` VALUES (29, 'YOUR_ADRESS_2', 'TXT', '  ');
INSERT INTO `text` VALUES (30, 'YOUR_ZIPCODE', 'TXT', 'Code Postal');
INSERT INTO `text` VALUES (31, 'YOUR_TOWN', 'TXT', 'Ville ');
INSERT INTO `text` VALUES (32, 'YOUR_COLOR', 'TXT', 'Couleur choisie');
INSERT INTO `text` VALUES (33, 'YOUR_SITE_NAME', 'TXT', ' Nom de votre site');
INSERT INTO `text` VALUES (34, 'YOUR_SITE_DESC', 'TXT', 'Description de votre site');
INSERT INTO `text` VALUES (35, 'YOUR_SITE_URL', 'TXT', 'URL de votre site ( avec le http:// au debut )\r\n');
INSERT INTO `text` VALUES (36, 'YOUR_WEB_EMAIL', 'TXT', 'Email du webmaster');
INSERT INTO `text` VALUES (37, 'YOUR_SITE_LONGDESC', 'TXT', 'Description longue du site');
INSERT INTO `text` VALUES (40, 'YOUR_UPLOAD_IMAGE', 'TXT', 'Uploader votre image');
INSERT INTO `text` VALUES (41, 'IMAGE_EXTENSION', 'TXT', 'extension de votre image');
INSERT INTO `text` VALUES (42, 'IMAGE_SIZE', 'TXT', 'taille de votre image');
INSERT INTO `text` VALUES (43, 'IMAGE_X10SIZE', 'TXT', 'L image doit avoir une taille multiple de 10 en longueur et en largeur');
INSERT INTO `text` VALUES (44, 'IMAGE_FIELDEMPTY', 'TXT', 'Aucun champ ne doit rester vide !');
INSERT INTO `text` VALUES (45, 'IMAGE_ACCEPTED', 'TXT', 'Image acceptee avec succes !');
INSERT INTO `text` VALUES (46, 'IMAGEFIELD_SIZE', 'TXT', 'Taille en octets');
INSERT INTO `text` VALUES (47, 'IMAGEFIELD_NAME', 'TXT', 'Nom');
INSERT INTO `text` VALUES (48, 'IMAGEFIELD_SURNAME', 'TXT', 'Prenom');
INSERT INTO `text` VALUES (49, 'IMAGEFIELD_EMAIL', 'TXT', 'Email');
INSERT INTO `text` VALUES (50, 'IMAGEFIELD_ADRESS1', 'TXT', 'Adresse1');
INSERT INTO `text` VALUES (51, 'IMAGEFIELD_ADRESS2', 'TXT', 'Adresse2');
INSERT INTO `text` VALUES (52, 'IMAGEFIELD_ZIP', 'TXT', 'Code Postal');
INSERT INTO `text` VALUES (53, 'IMAGEFIELD_TOWN', 'TXT', 'Ville');
INSERT INTO `text` VALUES (54, 'IMAGEFIELD_COLOR', 'TXT', 'Couleur choisie');
INSERT INTO `text` VALUES (55, 'IMAGE_TOTAL_PRICE', 'TXT', 'Prix total');
INSERT INTO `text` VALUES (62, 'IMAGE_THANKYOU', 'TXT', ' merci pour votre inscription');
INSERT INTO `text` VALUES (64, 'THANK_PAYOK_PAYPAL', 'TXT', 'Paiement recu, vous devriez recevoir bientot un email de confirmation de la part de Paypal');
INSERT INTO `text` VALUES (65, 'THANK_ADDED', 'TXT', 'Votre site a et ajoute sur ');

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
) TYPE=MyISAM AUTO_INCREMENT=4821 ;

-- 
-- Dumping data for table `visits`
-- 

INSERT INTO `visits` VALUES (1, '/', 'http://neoskills.com/', 1, '2005-11-01 00:00:00', '00000000000000', '');
INSERT INTO `visits` VALUES (2, '/', 'http://neoskills.com/', 1, '2005-11-01 00:00:00', '00000000000000', '');
INSERT INTO `visits` VALUES (3, '/', 'http://neoskills.com/', 1, '2005-11-01 00:00:00', '00000000000000', '');
INSERT INTO `visits` VALUES (4, '/', 'http://cahierspip.ww7.be/', 1, '2005-11-01 00:00:00', '00000000000000', '');
INSERT INTO `visits` VALUES (5, '/', 'http://cahierspip.ww7.be/', 1, '2005-11-01 01:49:39', '00000000000000', '');
INSERT INTO `visits` VALUES (6, '/', 'http://cahierspip.ww7.be/', 1, '2005-11-01 01:50:17', '20001201090217', '');
INSERT INTO `visits` VALUES (7, '/', 'http://cahierspip.ww7.be/', 1, '2005-11-01 02:00:49', '20001201090849', '');
INSERT INTO `visits` VALUES (8, '/', 'http://pixels.ww7.be/', 1, '2005-11-01 02:00:56', '20001201090856', '');
INSERT INTO `visits` VALUES (9, '/', 'http://pixels.ww7.be/', 1, '2005-11-01 02:02:21', '20001201090941', '');
