<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://cahierspip.ww7.be/xhtml1-transitional.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->
<html>
<head>
<?php require 'config.pinc'; ?> <?php include 'meta.php';  ?> 
</head>

<body>

<?php include 'header.php'; ?>
<?php include 'header2.php'; ?>
<?php include 'menu.php';    ?>

<?php
$requete_INDEX_INTRO="SELECT * from text where name_text='INDEX_INTRO'";
$req = mysql_query($requete_INDEX_INTRO) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
 $table_ent= get_html_translation_table(HTML_ENTITIES);
 $reverse_translation = array_flip( $table_ent );
 $tmp_content=strtr( stripslashes($data['content_text']), $reverse_translation);
 $content_text = htmlspecialchars( $tmp_content );

$index_intro_text = $tmp_content;
echo $index_intro_text;

$requete_BUY_PIXELS="SELECT * from text where name_text='BUY_PIXELS'";
$req = mysql_query($requete_BUY_PIXELS) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$buy_pixels=$data['content_text'];
//echo "<h3>$buy_pixels</h3>";
?>

<?php
echo "<hr /><hr />";
echo "<div id='pixels'>";
echo "<form method='post' action='choosepixels.php'>";
echo "<input name='blue' type='image' title='$buy_pixels' src='img/empty.gif' width='1400' height='250' style='position:absolute;left:0px;top:0px;margin:0px;z-index:1;' />";
echo "<table class='deepsea' cellspacing='0' cellpadding='0' >";
echo "<tr  cellspacing='0' cellpadding='0'>";
echo "<td height='250' valign='top' width='1400'>";
$requete="SELECT * FROM `site` where state_site='active'  LIMIT 0 , 30";
$req = mysql_query($requete) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$nb_sites_traites=0;
while($data = mysql_fetch_assoc($req))
{
  $nb_sites_traites ++; $id_site = $data['id_site']; $image_url = $data['image_url']; $title_site = $data['title_site']; $nom_site = $data['name_site'] ; $xpos_site = $data['x_pos'] ; $ypos_site = $data['y_pos'] ; $xsize_site = $data['x_size'] ; $ysize_site = $data['y_size'] ;
echo "<a href='".$pix_relative_path."out.php?site=".$id_site."' title='".$title_site."' ><img src='".$pix_relative_path."sites/".$image_url."' style='border: 0pt none ; position: absolute; left: ".$xpos_site."px; top: ".$ypos_site."px; z-index: 2;' alt='".$title_site."' height='".$ysize_site."' width='".$xsize_site."' /></a>";
}

echo "&nbsp;</td></tr>";
echo "</table>";
echo "<input name='green' type='image' title='$buy_pixels' src='img/empty.gif' width='1400' height='250' style='position:absolute;z-index:1;' />";
echo "<table class='deepsea2'  cellspacing='0' cellpadding='0'>";
echo "<tr  cellspacing='0' cellpadding='0'>";
echo "<td height='250' valign='top' width='1400' >";
echo "</td></tr>";
echo "</table>";
echo "<input name='pink' type='image' title='$buy_pixels' src='img/empty.gif' width='1400' height='500' style='position:absolute;z-index:1;' />";
echo "<table class='deepsea3'  cellspacing='0' cellpadding='0'>\n";
echo "<tr  cellspacing='0' cellpadding='0'>";
echo "<td height='500' valign='top' width='1400'>";
echo "</td></tr>";
echo "</tr></table>\n";
echo "</div>";
echo "</form>";
echo "<br />".$nb_sites_traites;
?>

<?php include 'footer.php'; ?>
</body>
</html>
