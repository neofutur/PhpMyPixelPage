
INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'ADCL_TOTALCLICK', 'TXT', ' Nombre total de clics '
), (
NULL , 'ADCL_TOTAL_PEOPLE', 'TXT', 'visiteurs envoyes a nos sites announceurs'
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'ADCL_TOTALSITE', 'HTML', '<h2>Nombre total<br /> de sites inscrits :</h2>'
), (
NULL , 'ADCL_WEBSITES', 'TXT', 'sites web beneficient de notre service de PixelAds permanentes au meilleur prix. '
);

INSERT INTO `text` ( `id_text` , `name_text` , `type_text` , `content_text` )
VALUES (
NULL , 'ADCL_MEDIUMCLICK', 'HTML', '<h2>Nombre moyen de clics<br /> par site inscrit :</h2> '
), (
NULL , 'ADCL_VERYTHIS', 'HTML', '<h3>Vous pouvez meme verifier vous meme la veracite de ces chiffres en cliquant et en revenant verifier <blink>lol</blink></h3>'
);

UPDATE `metadata` SET `meta_value` = '0.50' WHERE `meta_id` =6 LIMIT 1 ;

