
CREATE TABLE `cheatcodes` (
`cheatcode_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`cheatcode_name` VARCHAR( 16 ) NOT NULL ,
`cheatcode_type` VARCHAR( 8 ) NOT NULL ,
`cheatcode_value` INT NOT NULL ,
`cheatcode_comment` VARCHAR( 255 ) NOT NULL ,
INDEX ( `cheatcode_name` , `cheatcode_type` , `cheatcode_value` )
) TYPE = MYISAM ;
INSERT INTO `cheatcodes` ( `cheatcode_id` , `cheatcode_name` , `cheatcode_type` , `cheatcode_value` , `cheatcode_comment` )
VALUES (
NULL , 'DEFAULT_FREE', 'PERCENT', '100', 'this gives a FREE link ;)'
), (
NULL , '20PERCENT', 'PERCENT', '20', 'gives 20% saving on a link'
);

ALTER TABLE `cheatcodes` ADD `cheatcode_stock` INT NOT NULL DEFAULT '0';

ALTER TABLE `cheatcodes` ADD INDEX ( `cheatcode_stock` ) ;

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'BUY_PIXELS', 'TXT', 'Achetez ces pixels'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'INTRO_ADCLICKS', 'HTML', '<h3> Nous visons lexcellence et comptons bien rester parmi les meilleures pages de Pixel Publicite Francophone, et nous prouvons la qualite de notre espace en vous donnant le nombre de clics ( visiteurs ) envoyes a chacun de nos annonceurs ou partenaires :</h3>'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'OUR_PRICES', 'HTML', '<h1> Nos tarifs </h1>'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'MORE_PRICES', 'HTML', '<tr><td> <h4>tarif special</h4> </td><td> <blink><h4>image animee</h4></blink> </td><td> <h3>Vous souhaitez utiliser une image GIF animee, le prix sera double</h3> </td><td></td><td> <h1> prix X2 </H1> </td><td> <h1>prix X2</H1> </td></tr> <tr><td> <h4>tarif special</h4> </td><td> <blink><h4>bonnes causes, projets libres ...</h4></blink> </td><td> <h3>25% a 75% de reduction pour toutes les bonnes causes, <a href=''/contact.php''>Contactez nous</a> </h3>"; echo "</td><td>"; </td><td><h1> -25% a -75% </H1> </td><td> <h1>-25% a -75%</H1> </td></tr> '
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_IMAGE', 'TXT', 'Votre image'
), (
NULL , 'YOUR_NAME', 'TXT', 'Votre nom'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_SURNAME', 'TXT', 'Votre prenom'
), (
NULL , 'YOUR_PAYPAL_EMAIL', 'HTML', 'E-Mail ( de votre compte <a href=''https://www.paypal.com/fr/mrb/pal=L5HFB9GXFQUY6''>paypal</a> '
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_ADRESS_1', 'TXT', 'Adresse'
), (
NULL , 'YOUR_ADRESS_2', 'TXT', ' '
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_ZIPCODE', 'TXT', 'Code Postal'
), (
NULL , 'YOUR_TOWN', 'TXT', 'Ville '
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_COLOR', 'TXT', 'Couleur choisie'
), (
NULL , 'YOUR_SITE_NAME', 'TXT', ' Nom de votre site'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_SITE_DESC', 'TXT', 'Description de votre site'
), (
NULL , 'YOUR_SITE_URL', 'TXT', 'URL de votre site ( avec le http:// au debut ) '
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_WEB_EMAIL', 'TXT', 'Email du webmaster'
), (
NULL , 'YOUR_SITE_LONGDESC', 'TXT', 'Description longue du site'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'YOUR_UPLOAD_IMAGE', 'TXT', 'Uploader votre image'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_EXTENSION', 'TXT', 'extension de votre image'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_SIZE', 'TXT', 'taille de votre image'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_X10SIZE', 'TXT', 'L image doit avoir une taille multiple de 10 en longueur et en largeur'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_FIELDEMPTY', 'TXT', 'Aucun champ ne doit rester vide !'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_ACCEPTED', 'TXT', 'Image acceptee avec succes !'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_SIZE', 'TXT', 'Taille en octets'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_NAME', 'TXT', 'Nom'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_SURNAME', 'TXT', 'Prenom'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_EMAIL', 'TXT', 'Email'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_ADRESS1', 'TXT', 'Adresse1'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_ADRESS2', 'TXT', 'Adresse2'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_ZIP', 'TXT', 'Code Postal'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_TOWN', 'TXT', 'Ville'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGEFIELD_COLOR', 'TXT', 'Couleur choisie'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_TOTAL_PRICE', 'TXT', 'Prix total'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_ACCESS_BUY', 'TXT', 'Acceder au Règlement de '
), (
NULL , 'IMAGE_BUY_TOTAL', 'TXT', ' EUR pour un total de '
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_PIXELS_TYPE', 'TXT', 'pixels de type'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'IMAGE_THANKYOU', 'TXT', 'merci pour votre inscription'
);
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'THANK_PAYOK_PAYPAL', 'TXT', 'Paiement recu, vous devriez recevoir bientot un email de confirmation de la part de Paypal'
), (
NULL , 'THANK_ADDED', 'TXT', 'Votre site a et ajoute sur '
);

