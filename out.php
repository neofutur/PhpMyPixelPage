<?php
 include 'config.pinc';

 $id_site=$_GET['site'];

 if ( $id_site )
 {
 $db = mysql_connect($pix_db_host, $pix_db_user, $pix_db_passwd);
 mysql_select_db($pix_db_dbname,$db);
 $requete="SELECT * FROM `site` where id_site=".$id_site;
 $req = mysql_query($requete) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
 $data = mysql_fetch_assoc($req);
 $url_site = $data['url_site'];
 $auj_timestamp = mktime( 1,1,1,date("m"),date("d"),date("Y")  );
 $date_aujourdhui = strftime( "%Y-%m-%d", $auj_timestamp ) ;
 
 $requete_hit="INSERT into out ( site_id_out, datetime_out ) values ( $id_site, '$date_aujourdhui' )";
 //echo $requete_hit;
 $req = mysql_query($requete_hit) or die('Erreur SQL2 !<br>'.$sql.'<br>'.mysql_error());
  header("Location: $url_site");
 }
?>

<HTML>

<HEAD>
</HEAD>

<BODY>

</BODY>

</HTML>