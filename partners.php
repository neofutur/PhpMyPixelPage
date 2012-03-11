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

<?php
//$db = mysql_connect($pix_db_host, $pix_db_user, $pix_db_passwd);
//mysql_select_db($pix_db_dbname,$db);
$requete_INDEX_INTRO="SELECT * from text where name_text='INDEX_INTRO'";
$req = mysql_query($requete_INDEX_INTRO) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$index_intro_text = $data['content_text'];
echo $index_intro_text;
?>

<?php
//$db = mysql_connect($pix_db_host, $pix_db_user, $pix_db_passwd);
//mysql_select_db($pix_db_dbname,$db);
$requete_TEXT_PARTNERS="SELECT * from text where name_text='TEXT_PARTNERS'";
$req = mysql_query($requete_TEXT_PARTNERS) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$index_intro_text = $data['content_text'];
echo $index_intro_text;
?>

<table>
<tr><td width="55%">
<h3><b><blink>  Partenaires  </blink></b></h3>
<h3>
<?php
$requete_PARTNERS="SELECT * from partners order by id_partner desc";
$req = mysql_query($requete_PARTNERS) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
while($data = mysql_fetch_assoc($req))
{
  $name_partner = $data['name_partner'];
  $desc_partner = $data['desc_partner'];
  $comment_partner = $data['comment_partner'];
  $url_partner = $data['url_partner'];

  echo "<a href='$url_partner' title='$comment_partner' alt='$desc_partner'>$name_partner</a><br />";
}

?>
</h3>
</td>
<td width="10%"></td>
<td width="45%">

<script src="http://feeds.feedburner.com/http/feederww7be?format=sigpro" type="text/javascript"></script><noscript><p>Subscribe to RSS headline updates from: <a href="http://feeds.feedburner.com/http/feederww7be"></a><br/>Powered by FeedBurner</p> </noscript>
</td>
</tr>
</table>
<?php include 'footer.php'; ?>

</BODY>
</HTML>

