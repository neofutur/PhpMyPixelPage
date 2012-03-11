<?php
 require_once 'header.php';

 if ( isset ( $_GET['site'] ) ) $id_site=mysql_real_escape_string($_GET['site']); else $id_site="";

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
 
 $requete_hit="INSERT INTO outvisit(site_id_out, datetime_out ) values( $id_site, '$date_aujourdhui' )";
 //echo $requete_hit;
 $req = mysql_query($requete_hit) or die('Erreur SQL2 !<br>'.$requete_hit.'<br>'.mysql_error());
  header("Location: $url_site");
 }
?>

<HTML>

<HEAD>
</HEAD>

<BODY>

</BODY>

</HTML>
