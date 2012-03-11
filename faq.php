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
 echo "<h3><ul>";

$requete_FAQ="SELECT * from FAQ order by FAQ_position";
$req = mysql_query($requete_FAQ) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
while($data = mysql_fetch_assoc($req))
{
  echo "<li>";
  $faq_title = $data['FAQ_title'];
  $faq_text  = $data['FAQ_text'];
  echo "<H2>$faq_title</H2>\n";
  echo "<H3>$faq_text</H3>\n";
  echo "</li>";
}
 echo "</ul></h3>";
?>

<hr />
<?php include 'prices_table.php'; ?>
<hr />

<?php
$requete_MORE_STATS="SELECT * from text where name_text='MORE_STATS'";
$req = mysql_query($requete_MORE_STATS) or die('Erreur SQL21 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$MORE_STATS = $data['content_text'];
echo $MORE_STATS;

?>
<hr />

<?php include 'footer.php'; ?>
</BODY>

</HTML>


