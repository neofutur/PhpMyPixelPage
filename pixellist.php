<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->

<HTML>

<HEAD>
<?php require 'config.pinc'; ?>
<?php include 'meta.php';  ?>
</HEAD>

<BODY>
<?php include 'header.php'; ?>
<?php include 'header2.php'; ?>
<?php include 'menu.php'; ?>

<?php

// GET translations
$requete_LIST_INTRO="SELECT * from text where name_text='LIST_INTRO'";
$req = mysql_query($requete_LIST_INTRO) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$index_intro_text = $data['content_text'];
echo $index_intro_text;

$requete="SELECT * FROM `site`  LIMIT 0 , 30";
$req = mysql_query($requete) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());

$nb_sites_traites=0;
echo "<br />";

echo "<table>";

while($data = mysql_fetch_assoc($req))
{
 $nb_sites_traites ++;
 $id_site = $data['id_site']; $image_url = $data['image_url']; $title_site = $data['title_site'];
 $nom_site = $data['name_site'] ; $xpos_site = $data['x_pos'] ; $ypos_site = $data['y_pos'] ;
 $xsize_site = $data['x_size'] ; $ysize_site = $data['y_size'] ;

 echo "<tr>";

 echo "<td><h3><a href='$relative_path"."out.php?site=$id_site' title='$title_site'>$title_site</a></h3></td>";
echo "<td><a href='$relative_path"."out.php?site=$id_site' title='$title_site'>";
echo "<img src='".$relative_path."sites/".$image_url."' alt='".$title_site."' height='".$ysize_site."' width='".$xsize_site."'>";
echo "</a></td>\n";
echo "</tr>";

}
echo "</table>";
echo "<br />".$nb_sites_traites;


?>

<?php include 'prices_table.php'; ?>

<?php include 'footer.php'; ?>

</BODY>

</HTML>

