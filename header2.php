<?php include 'config.pinc'; ?>

<table>
<tr><td>
<script type="text/javascript"><!--
 google_ad_client = "pub-7383532407326303"; google_ad_width = 125; google_ad_height = 125; google_ad_format = "125x125_as"; google_ad_type = "text"; google_ad_channel ="4438979417"; google_color_border = "000000"; google_color_bg = "000000"; google_color_link = "FFFF66"; google_color_url = "CC99FF"; google_color_text = "FF9900";
 //-->
</script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</td>
<td colspan=3>
 <table style="border:1px solid #aa0033; font-size:small" align=center>
  <tr> 
    <td colspan=6 align=center ><a href="http://groups.google.com/group/Publicite-Pixel-Francophones?lnk=li">Rejoignez Publicite Pixel Francophones</a></td>
  </tr>
  <tr>
    <td>
     <img src="http://groups.google.com/groups/img/groups_medium.gif" height=58 width=150 alt="Google Groups">
    </td>
    <form action="http://groups.google.com/group/Publicite-Pixel-Francophones/boxsubscribe">
    <td> <h4>Email:</h4> <input type=text name=email></td>
    <td> <input type=submit name="sub" value="Subscribe"> </td>
    </form>
  </tr>
  <tr><td colspan="4" align=center>
   <a href="http://groups.google.com/group/Publicite-Pixel-Francophones">Browse Archives</a> at <a href="http://groups.google.com/">groups.google.com</a>
  </td></tr>
 </table>
</td>
<td>
<a href="http://clustrmaps.com/counter/maps.php?url=http://<?php echo $site_url; ?>" id="clustrMapsLink"><img src="http://clustrmaps.com/counter/index2.php?url=<?php echo $site_url; ?>" border=1 alt="Locations of visitors to this page"onError="this.onError=null; this.src='http://www.meetomatic.com/images/clustrmaps-back-soon.jpg'; document.getElementById('clustrMapsLink').href='http://clustrmaps.com/'"><br />
<table><tr><td><a href=http://www.todoomasters.com target=_blank><img src=http://www.todoomasters.com/logo2.gif border=0 alt="affiliations"></a></td><td><a href="http://www.promopixels.net/topsites/"> <img src="http://www.promopixels.net/topsites/button.php?u=neofutur" alt="PromoPixels.net TopSites" border="0" /></a></td></tr></table>
</a>

</script>
</td>
<td colspan="2">
<script language='JavaScript' src='http://www.pixeladnet.com/js/pixeladnetbanner.js'></script>
<script language='JavaScript'>pixeladnetbanner_byid(322,135,110);</script> 

</td>
<td>
<script type="text/javascript"> <!--
 google_ad_client = "pub-7383532407326303"; google_ad_width = 125; google_ad_height = 125; google_ad_format = "125x125_as"; google_ad_type = "text"; google_ad_channel ="4438979417"; google_color_border = "000000"; google_color_bg = "000000"; google_color_link = "FFFF66"; google_color_url = "CC99FF"; google_color_text = "FF9900";
 //-->
</script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</td>

</tr>
</table>

<br />  

<?php

 $referer= $_SERVER['HTTP_REFERER']; $uri=$_SERVER['REQUEST_URI']; $user_agent=$_SERVER['$HTTP_USER_AGENT']; 
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


