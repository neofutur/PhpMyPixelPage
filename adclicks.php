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

<hr />

<?php
$requete_INTRO_ADCLICKS="SELECT * from `text` where `name_text`='INTRO_ADCLICKS'";
$req = mysql_query($requete_INTRO_ADCLICKS) or die('<h3>Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error()."<br />");
while($data = mysql_fetch_assoc($req))
{
  //echo "<h3>".var_dump($data)." hiiii</h3>";
  $intro_adclicks = $data['content_text'];
  echo $intro_adclicks."\n";
}

// translations ADCL_*
$req="SELECT * FROM `text` WHERE `name_text` LIKE 'ADCL_%'";
$res_FORMNAMES = mysql_query($req) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());

while($data = mysql_fetch_assoc($res_FORMNAMES))
{
 $myform[$data['name_text']]= $data['content_text'];
}
//echo "<h3>".$myform['ADCL_TOTALCLICK']."</h3>";
//echo "<h3>".$myform['ADCL_TOTAL_PEOPLE']."</h3>";
//echo "<h3>".$myform['ADCL_TOTALSITE']."</h3>";
//echo "<h3>".$myform['ADCL_WEBSITES']."</h3>";
//echo "<h3>".$myform['ADCL_MEDIUMCLICK']."</h3>";
//echo "<h3>".$myform['ADCL_VERYTHIS']."</h3>";
//echo "<h3>".$myform['']."</h3>";
//echo "<h3>".$myform['']."</h3>";

?>

<hr />
<?php
$requete="SELECT * FROM `site` ORDER BY `total_size` Desc  LIMIT 0 , 30 ";
$req = mysql_query($requete) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());

$nb_sites_traites=0; $total_clicks=0; $table_code = "";

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

 $table_code.= "<tr>";

 $table_code=$table_code. "<td> <a href='".$pix_relative_path."out.php?site=$id_site'>";
 $table_code=$table_code. "<img src='".$pix_relative_path."sites/".$image_url."' alt='".$title_site."' height='".$ysize_site."' width='".$xsize_site."'>";
 $table_code=$table_code. "</a></td>\n";
 $table_code=$table_code. "<td><H1><blink>$nb_clicks</blink> Clics Recus</H1></td>\n";
 $table_code=$table_code. "<td><h3><a href='".$pix_relative_path."out.php?site=$id_site'>$title_site</a></h3></td>";
 $table_code=$table_code. "</tr>";
 $table_code=$table_code. "<tr><td colspan='3'><hr /></td><tr>";

 $total_clicks+=$nb_clicks;
}
$total_clicks_code="";

$total_clicks_code=$total_clicks_code. "<tr><td>";
$total_clicks_code=$total_clicks_code. "<h2>".$myform['ADCL_TOTALCLICK']." :</h2>";
$total_clicks_code=$total_clicks_code. "</td><td>";
$total_clicks_code=$total_clicks_code. "<h1><blink>$total_clicks</blink></h1>";
$total_clicks_code=$total_clicks_code. "</td><td>";
$total_clicks_code=$total_clicks_code. "<h2>".$myform['ADCL_TOTAL_PEOPLE']."</h2>";
$total_clicks_code=$total_clicks_code. "</td></tr>";
$medium_nb_click=round($total_clicks/$nb_sites_traites);


$total_site_code= "<tr><td>".$myform['ADCL_TOTALSITE']."</td><td><h1><blink>".$nb_sites_traites."</blink></h1></td><td><h3>".$myform['ADCL_WEBSITES']."</h3></td></tr>";
$medium_click_code= "<tr><td>".$myform['ADCL_MEDIUMCLICK']."</td><td><h1><blink>".$medium_nb_click."</blink></h1></td><td>".$myform['ADCL_VERYTHIS']."</td></tr>";

// print them all now
echo $total_clicks_code;
echo "<tr><td colspan='3'><hr /></td></tr>\n";
echo $total_site_code;
echo "<tr><td colspan='3'><hr /></td></tr>\n";
echo $medium_click_code;
echo "<tr><td colspan='3'><hr /><br /><hr /></td></tr>\n";
echo $table_code;
echo "<tr><td colspan='3'><hr /><br /><hr /></td></tr>\n";
echo $total_clicks_code;
echo "<tr><td colspan='3'><hr /></td></tr>\n";
echo $total_site_code;
echo "<tr><td colspan='3'><hr /></td></tr>\n";
echo $medium_click_code;
echo "<tr><td colspan='3'><hr /></td></tr>\n";

echo "</table>";

?>

<?php include 'footer.php'; ?>
</BODY>

</HTML>


