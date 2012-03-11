<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->

<HTML>

<HEAD>
<?php include 'meta.php';  ?>
<HEAD>

<BODY>
<?php include 'header.php'; ?>
<?php include 'header2.php'; ?>
<?php include 'menu.php'; ?>

<?php
$requete_FAQ="SELECT * from text where name_text='TITLE_REFERER'";
$req = mysql_query($requete_FAQ) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
while($data = mysql_fetch_assoc($req))
{
  $title_adclick = $data['TITLE_REFERER'];
  echo "$faq_title\n";
}
?>

<hr />
<?php
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

 $requete_count_clicks="SELECT COUNT(*) FROM `out` WHERE site_id_out =".$id_site;
 $req2 = mysql_query($requete_count_clicks) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
 $data_count_clicks= mysql_fetch_assoc($req2);
 $nb_clicks=$data_count_clicks['COUNT(*)'];

 echo "<tr>";
 echo "<td> <a href='http://$site_url/out.php?site=$id_site'>";
 echo "<img src='/sites/".$image_url."' alt='".$title_site."' height='".$ysize_site."' width='".$xsize_site."'>";
 echo "</a></td>\n";
 echo "<td><H1><blink>$nb_clicks</blink> Clics Recus</H1></td>\n";

 echo "<td><h3><a href='http://$site_url/out.php?site=$id_site'>$title_site</a></h3></td>";
 echo "</tr>";
 echo "<tr><td colspan='3'><hr /></td><tr>";

}
echo "</table>";
echo "<br />".$nb_sites_traites;

?>

<?php include 'footer.php'; ?>
</BODY>

</HTML>


