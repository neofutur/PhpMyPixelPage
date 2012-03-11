<?php require_once 'config.pinc'; ?>

<?php

 //var_dump($_SERVER);
 if ( isset( $_SERVER['HTTP_REFERER'] )) $referer= mysql_real_escape_string($_SERVER['HTTP_REFERER']); else $referer="";
 if ( isset( $_SERVER['REQUEST_URI'] )) $uri=mysql_real_escape_string($_SERVER['REQUEST_URI']); else $uri="";
 if ( isset( $_SERVER['HTTP_USER_AGENT'] )) $user_agent=mysql_real_escape_string($_SERVER['HTTP_USER_AGENT']); else  $user_agent=""; 

 if ( $referer )
 {
  $auj_timestamp = mktime( date("H"), date("i"), date("s"), date("m"),date("d"),date("Y")  );
  $date_aujourdhui = strftime( "%Y-%m-%d %H-%M-%S", $auj_timestamp ) ;
  $requete="INSERT INTO visits ( page_visit, referer_visit, referer_id_visit, date_visit, update_visit, browser_visit ) VALUES ('$uri', '$referer', 1, '$date_aujourdhui', $auj_timestamp, '$user_agent' )";
  //echo "<h3>$requete</h3>\n";
  $req = mysql_query($requete) or die('Erreur SQLH4 !<br>'.$sql.'<br>'.mysql_error());
 
  // We also need an insert in the referer table here
  //Check if this referer exists
  $requete_select="SELECT * FROM referers where referer='$referer'";
  $req = mysql_query($requete_select) or die('Erreur SQL5 !<br>'.$sql.'<br>'.mysql_error());
  if (!$req)
  {
   //does not yet exist
  $nb_hits_referer=1;
  $requete_insert="INSERT INTO referers ( referer, visits ) VALUES ( $referer, $nb_hits_referer ) ";

  }else
  {
   //already exist, update stats
  $nb_hits_referer=0;
  $nb_hits_referer++;
  //depends on last update date

  
  $requete_update="UPDATE FROM referers SET visits=$nb_hits_referer";
 
 }

}

/*function correction_accents($texte)
{
                if ($texte) {
                        //echo "$texte<br>\n";

                        $fichier = ereg_replace(chr(233), '&eacute;', $texte);
                        $fichier = ereg_replace(chr(201), '&Eacute;', $texte);

                        $fichier = ereg_replace(chr(224), '&agrave;', $texte);
                        $fichier = ereg_replace(chr(232), '&egrave;', $texte);
                        $fichier = ereg_replace(chr(249), '&ugrave;', $texte);
                        $fichier = ereg_replace(chr(192), '&Agrave;', $texte);
                        $fichier = ereg_replace(chr(200), '&Egrave;', $texte);
                        $fichier = ereg_replace(chr(217), '&Ugrave;', $texte);

                        $fichier = ereg_replace(chr(226), '&acirc;', $texte);
                        $fichier = ereg_replace(chr(234), '&ecirc;', $texte);
                        $fichier = ereg_replace(chr(238), '&icirc;', $texte);
                        $fichier = ereg_replace(chr(244), '&ocirc;', $texte);
                        $fichier = ereg_replace(chr(251), '&ucirc;', $texte);
                        $fichier = ereg_replace(chr(194), '&Acirc;', $texte);
                        $fichier = ereg_replace(chr(202), '&Ecirc;', $texte);
                        $fichier = ereg_replace(chr(206), '&Icirc;', $texte);
                        $fichier = ereg_replace(chr(212), '&Ocirc;', $texte);
                        $fichier = ereg_replace(chr(219), '&Ucirc;', $texte);

                        $fichier = ereg_replace(chr(231), '&ccedil;', $texte);
                        $fichier = ereg_replace(chr(199), '&Ccedil;', $texte);

                        $fichier = ereg_replace(chr(171), '&laquo;', $texte);
                        $fichier = ereg_replace(chr(187), '&raquo;', $texte);

                        $fichier = eregi_replace("(face *= *['\"\\]+)[^'\"\\]*georgia[^'\"\\]*(['\"\\]+)", "\\1Georgia,Garamond,Times,serif\\2", $fichier);
                        $fichier = eregi_replace("(face *= *['\"\\]+)[^'\"\\]*verdana[^'\"\\]*(['\"\\]+)", "\\1Verdana,Arial,Helvetica,sans-serif\\2", $fichier);

                }

  return $texte;
}*/
?>
