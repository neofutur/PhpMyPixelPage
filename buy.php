<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->

<HTML>

<HEAD>
<?php require 'config.pinc'; ?>
<?php include 'meta.php';  ?>
<HEAD>

<BODY>
<?php include 'header.php'; ?>
<?php include 'header2.php'; ?>
<?php include 'menu.php'; ?>

<?php include 'prices_table.php'; ?>

<a href="#buy"></a>
<?php
//$db = mysql_connect($pix_db_host, $pix_db_user, $pix_db_passwd);
//mysql_select_db($pix_db_dbname,$db);
$requete_BUY_INTRO="SELECT * from text where name_text='BUY_INTRO'";
$req = mysql_query($requete_BUY_INTRO) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$buy_intro_text = $data['content_text'];
echo $buy_intro_text;
?>


<?php include 'footer.php'; ?>
</BODY>

</HTML>

