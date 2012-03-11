<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->

<HTML>

<HEAD>
<?php include 'meta.php';  ?>
</HEAD>

<BODY>

<?php require 'config.pinc'; ?>
<?php
include 'header.php'; 
include 'header2.php'; 
include 'menu.php';
include 'fonctions.php'
?>

<?php
$requete_INDEX_INTRO="SELECT * from text where name_text='CHOOSE_INTRO'";
$req = mysql_query($requete_INDEX_INTRO) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
 $table_ent= get_html_translation_table(HTML_ENTITIES);
 $reverse_translation = array_flip( $table_ent );
 $tmp_content=strtr( stripslashes($data['content_text']), $reverse_translation);
 $content_text = htmlspecialchars( $tmp_content );

$index_intro_text = $tmp_content;
//echo "Hi...";
echo $index_intro_text;

?>

<?php

 //echo "<H3>".var_dump($_POST)."</H3>";
 // parameters received here
 // array(4) { ["gr"]=>  string(1) "3" ["pa"]=>  string(1) "0" ["green_x"]=>  string(3) "106" ["green_y"]=>  string(2) "38" }
if ( $_POST["blue_x"] && $_POST["blue_y"] )
{
 $height=250;
 $x = $_POST['blue_x']; 
 $y = $_POST['blue_y'];
 $from=0;
 $to=250;
 $color = "blue";
}
else if ( $_POST["green_x"] && $_POST["green_y"] )
{
 $height=250;
 $from=250;
 $to=500;
 $x = $_POST['green_x'];
 $y = $_POST['green_y'] + $height;
 $color = "green";
}
else if ( $_POST["pink_x"] && $_POST["pink_y"] )
{
 $height=500;
 $x = $_POST['pink_x'];
 $y = $_POST['pink_y'] + $height;
 $color = "pink";
 $from = 500;
 $to   = 1000;
}
$divname="pixels_$color";

$back_image="img/bg$color.gif";
$x = $x - $x%10;
$y = $y - $y%10;

echo "<p class='coordonnees'> vous avez choisi des pixels de couleur :<b> $color</b></h2>  coordonnees :  x=<blink>$x</blink> y=<blink>$y</blink> voir les tarifs plus bas </p>";
echo "<div id='$divname'>";
echo "<table border='0' padding='0' margin='0' cellpadding='0' cellspacing='0'>\n";
echo "<tr><td background='$back_image' height='".$height."' valign='top' width='1400'>\n";

$requete="SELECT * FROM `site` where  state_site='active' AND y_pos >=$from AND y_pos<$to  LIMIT 0 , 30";
$req = mysql_query($requete) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());

$nb_sites_traites=0;
while($data = mysql_fetch_assoc($req))
{
 $nb_sites_traites ++; $id_site = $data['id_site']; $image_url = $data['image_url']; $title_site = $data['title_site']; $nom_site = $data['name_site'] ; $xpos_site = $data['x_pos'] ; $ypos_site = $data['y_pos']-$from ; $xsize_site = $data['x_size'] ; $ysize_site = $data['y_size'] ;
 
 echo "<a href='/out.php?site=".$id_site."' title='".$title_site."'>";
 echo "<img src='/sites/".$image_url."' style='border: 0pt none ; position: absolute; left: ".$xpos_site."px; top: ".$ypos_site."px; z-index: 1;' alt='".$title_site."' height='".$ysize_site."' width='".$xsize_site."'>";
 echo "</a>\n";
}

echo "</td>";
echo "</tr>";
echo "</table>";
echo "</div>";
echo "<div>";
include 'one_price_table.php'; 
echo "</div>";
echo "<div>";
echo "<br />".$nb_sites_traites;

// GET tranlations 
$req="SELECT * FROM `text` WHERE `name_text` LIKE 'YOUR%'";
$res_FORMNAMES = mysql_query($req) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());

while($data = mysql_fetch_assoc($res_FORMNAMES))
{
 $myform[$data['name_text']]= $data['content_text'];
 //=$data[''];

}
//var_dump($myform);

/*YOUR_IMAGE
YOUR_NAME
YOUR_SURNAME
YOUR_PAYPAL_EMAIL
YOUR_ADRESS_1
YOUR_ADRESS_2
YOUR_ZIPCODE
YOUR_TOWN
YOUR_COLOR
YOUR_SITE_NAME
YOUR_SITE_DESC
YOUR_SITE_URL
YOUR_WEB_EMAIL
YOUR_SITE_LONGDESC
 */


echo "<form enctype='multipart/form-data' action='image.php' method='POST'> ";
echo "<p class='coordonnees'>".$myform['YOUR_IMAGE']." :<input type='hidden' name='posted' value='1'>";
echo "<input name='fichier' type='file'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_NAME']." : <input name='nom' type='text'</p>";
echo "<p class='coordonnees'>".$myform['YOUR_SURNAME']." : <input name='prenom' type='text'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_PAYPAL_EMAIL']." : <input name='email' type='text'></p>";
//echo "<p class='coordonnees'>Mot de passe  ( de votre compte paypal ) : <input name='pass' type='password'</p>";
echo "<p class='coordonnees'>".$myform['YOUR_ADRESS_1']." : <br / <input name='adresse1' type='text'</p>";
echo "<p class='coordonnees'>".$myform['YOUR_ADRESS_2']."                  <input name='adresse2' type='text'</p>";
echo "<p class='coordonnees'>".$myform['YOUR_ZIPCODE']." : <input name='cp' type='text'</p>";
echo "<p class='coordonnees'>".$myform['YOUR_TOWN']." : <input name='ville' type='text'</p>";
//echo "<p class='coordonnees'>Telephone : <input name='tel' type='text'</p>";
echo "<p class='coordonnees'>".$myform['YOUR_COLOR']." : <input name='color' type='text' readonly='readonly' value='".$color."'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_SITE_NAME']." : <input name='name_site' type='text'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_SITE_DESC']." : <input name='title_site' type='text'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_SITE_URL']." : <input name='url_site' type='text'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_WEB_EMAIL']." : <input name='email' type='text'></p>";
echo "<p class='coordonnees'>".$myform['YOUR_SITE_LONGDESC']." : <input name='description' type='text'></p>";

echo "<input name='ppp_price' type='hidden' value='".$ppp_price."'>";
echo "<input name='x_pos' type='hidden' value='".$x."'><input name='y_pos' type='hidden' value='".$y."'><input type='submit' value='".$myform['YOUR_UPLOAD_IMAGE']."'> ";
echo "</form>";
//echo "<p class='coordonnees'> * Les champs marquées d'une étoile ne sont pas obligatoire</p>";
echo "</div>";
?>

<?php include 'footer.php'; ?>

</BODY>

</HTML>
