<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->

<HTML>

<HEAD>
<?php require 'config.pinc'; ?>
<?php include 'meta.php';  ?>
</HEAD>

<BODY>
<?php
include 'header.php';
include 'header2.php';
include 'menu.php';
require_once 'fonctions.php';

echo "<h3>";
//--------------------------------------
//  DEFINITION DES VARIABLES
//--------------------------------------

$target = "./sites/";		// Repertoire cible
$max_size = 5000000;		// Taille max en octets du fichier
$width_max = 1400;		// Largeur max de limage en pixels
$height_max = 1400;		// Hauteur max de limage en pixels

$extensions_ok = array ("jpg", "gif", "png", "jpeg", "GIF", "JPG", "JPEG");

//------------------------------------------------------------
//  DEFINITION DES VARIABLES LIEES AU FICHIER
//------------------------------------------------------------

$nom_file = $_FILES['fichier']['name'];
$taille = $_FILES['fichier']['size'];
$tmp = $_FILES['fichier']['tmp_name'];
$chemin = $target.$_FILES['fichier']['name'];

$nom ="";$prenom = "";$email = "";$color ="";$adresse1="";$adresse2 ="";$cp = "";$ville = "";$tel = "";$name_site="";$title_site="";$url_site="";$description="";$tel="";

//echo "$nom_file $taille $tmp $chemin<br />";

$extension = substr ($nom_file, -3);	// Récupération de lextension


//---------------------------
//  SCRIPT DUPLOAD
//---------------------------

if ( $_POST['posted'] && $_FILES['fichier']['name'] && in_array ( $extension, $extensions_ok ) )
{
 $infos_img = getimagesize ($_FILES['fichier']['tmp_name']);
 $x_size= $infos_img[0];
 $y_size=$infos_img[1];
 $total_size= $x_size * $y_size;

// GET tranlations
$req="SELECT * FROM `text` WHERE `name_text` LIKE 'IMAGE%'";
$res_FORMNAMES = mysql_query($req) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
while($data = mysql_fetch_assoc($res_FORMNAMES))
{
 $myform[$data['name_text']]= $data['content_text'];
 //=$data[''];
}

 // IMAGE_EXTENSION 
 // IMAGE_SIZE
 // IMAGE_X10SIZE
 // IMAGE_FIELDEMPTY
 // IMAGE_ACCEPTED
 // IMAGEFIELD_SIZE
 // IMAGEFIELD_FILE
 // IMAGEFIELD_HEIGHT
 // IMAGEFIELD_WIDTH
 // IMAGEFIELD_PIXELSIZE
 // IMAGEFIELD_NAME
 // IMAGEFIELD_SURNAME
 // IMAGEFIELD_EMAIL
 // IMAGEFIELD_ADRESS1
 // IMAGEFIELD_ADRESS2
 // IMAGEFIELD_ZIP
 // IMAGEFIELD_TOWN
 // IMAGEFIELD_COLOR
 // IMAGE_TOTAL_PRICE
 echo $myform['IMAGE_EXTENSION']." : $extension                             [OK] <br />\n";
 echo $myform['IMAGE_SIZE']."      : $x_size X $y_size = $total_size pixels [OK] <br />\n";

// $myform[''].

    if (($x_size <= $width_max)
	&& ($y_size <= $height_max) && ($taille <= $max_size))
      {
        // verifier aussi la taille de l'image
        if ( ($x_size%10 != 0 ) || ($y_size%10 != 0 ) ){ echo $myform['IMAGE_X10SIZE']; }

       // Si tout est OK, on essaye de uploadé
       //echo "$tmp $chemin";
                // verifier d'abord ce nom d'image n'est pas deja la ( renommer si besoin avec id_site ?)
		if (move_uploaded_file ($tmp, $chemin))
		  {
			if ( isset ($_POST['nom']))        $nom = mysql_real_escape_string($_POST['nom']);
			if ( isset ($_POST['prenom'] ))    $prenom = mysql_real_escape_string($_POST['prenom']);
			if ( isset ($_POST['email']))      $email = mysql_real_escape_string($_POST['email']);
			if ( isset ($_POST['adresse1']))   $adresse1 = mysql_real_escape_string($_POST['adresse1']);
			if ( isset ($_POST['adresse2']))   $adresse2 = mysql_real_escape_string($_POST['adresse2']);
			if ( isset ($_POST['cp']))         $cp = mysql_real_escape_string($_POST['cp']);
			if ( isset ($_POST['ville']))      $ville = mysql_real_escape_string($_POST['ville']);
			if ( isset ($_POST['tel']))        $tel = mysql_real_escape_string($_POST['tel']);
			if ( isset ($_POST['name_site']))  $name_site=mysql_real_escape_string($_POST['name_site']);
			if ( isset ($_POST['title_site'])) $title_site=mysql_real_escape_string($_POST['title_site']);
			if ( isset ($_POST['url_site']))   $url_site=mysql_real_escape_string($_POST['url_site']);
			if ( isset ($_POST['description'])) $description=mysql_real_escape_string($_POST['description']);
			$x_pos = $_POST['x_pos']; $y_pos = $_POST['y_pos'];
			$color = mysql_real_escape_string($_POST['color']);
                        if ( $color="blue" ) {$price_id=1 ;  }
                        if ( $color="green" ) {$price_id=2 ;  }
                        if ( $color="pink" ) {$price_id=3 ;  }
		    // Si upload OK alors on affiche le message de réussite et on vérifie que tout les autres champs sont remplis
			echo '<p>'.$myform['IMAGE_ACCEPTED'].'</p>';
			if ( isset($myform['IMAGEFIELD_FILE'] ))
			echo '<ul><li>'.$myform['IMAGEFIELD_FILE'].' : '.$_FILES['fichier']['name'].
			  '</li>';
			if ( isset($myform['IMAGEFIELD_SIZE'] ))
			echo '<li>'.$myform['IMAGEFIELD_SIZE'].' : '.$_FILES['fichier']['size'].
			  ' Octets</li>';
			if ( isset($myform['IMAGEFIELD_WIDTH'] ))
			echo '<li>'.$myform['IMAGEFIELD_WIDTH'].' : '.$x_size.' px</li>';
			if ( isset($myform['IMAGEFIELD_HEIGHT'] ))
			echo '<li>'.$myform['IMAGEFIELD_HEIGHT'].' : '.$y_size.' px</li>';
			if ( isset($myform['IMAGEFIELD_PIXELSIZE'] ))
                        echo '<li>'.$myform['IMAGEFIELD_PIXELSIZE'].' :'.$total_size.' pixels</li>';
			echo '<li>'.$myform['IMAGEFIELD_NAME'].' : '.$nom.'</li>';
			echo '<li>'.$myform['IMAGEFIELD_SURNAME'].' : '.$prenom.'</li>';
			echo '<li>'.$myform['IMAGEFIELD_EMAIL'].' : '.$email.'</li>';
			/* echo '<li>Mot de passe : '.$pass.'</li>'; */
			echo '<li>'.$myform['IMAGEFIELD_ADRESS1'].' : '.$adresse1.'</li>';
			echo '<li>'.$myform['IMAGEFIELD_ADRESS2'].' : '.$adresse2.'</li>';
			echo '<li>'.$myform['IMAGEFIELD_ZIP'].' : '.$cp.'</li>';
			echo '<li>'.$myform['IMAGEFIELD_TOWN'].' : '.$ville.'</li>';
			//echo '<li>Telephone : '.$tel.'</li>';
			echo '<li>'.$myform['IMAGEFIELD_COLOR'].' : '.$color.'</li></ul>';
			$photo = $_FILES['fichier']['name'];
			$sql_price = "SELECT * FROM prices WHERE name_price='".$color."'";
                        //echo "requete = |$sql_price|<br />\n";
			$req_price = mysql_query ($sql_price,$db) or die ('Erreur SQL !');
			$res_price = mysql_fetch_array ($req_price);
			$price = $res_price['ppp_price'];
			$prix = $price * $infos_img[0] * $infos_img[1];
			if ( isset($myform['IMAGEFIELD_TOTALPRICE'] ))
			echo "<h2>".$myform['IMAGEFIELD_TOTALPRICE']."Le prix total pour cette image est de seulement :<blink> $prix </blink>EUR pour 5 ans d'affichage garanti </h2>";
			$idUnique = idUnique (10);
                        $pass="";
                        $tell=" ";
                
			$sql = "insert into paypal_users ( idUnique, nom, prenom, adresse1, adresse2, cp, ville, tel, email, pass, autorisation ) values ( '$idUnique', '$nom', '$prenom', '$adresse1', '$adresse2', '$cp', '$ville', '$tel', '$email', '$pass', 'waiting' )";
                        //echo "requete = |$sql|<br />\n";
			$rs = mysql_query ($sql, $db);
                        //echo "$requete<br />\n";

			$sql2 = "insert into site ( name_site,  title_site,  url_site,  state_site,  email_webmaster, comments, image_url, x_size, y_size, total_size, x_pos, y_pos, custom, price_id, normal_price,  for_nb_days )";
                        $sql2=$sql2."values ('$name_site','$title_site','$url_site','temporary', '$email', '$description', '$photo', $x_size, $y_size, $total_size, '$x_pos','$y_pos', '$idUnique', $price_id, $prix, 1825 )";

			$rs2 = mysql_query ($sql2, $db);
			if ($rs)
			  {
			    echo "<h2>".$myform['IMAGE_THANKYOU']."</h2><br />";
			    echo "<center><form action='$paypal_action' method='post'><input name='cmd' type='hidden' value='_xclick'><input name='business' type='hidden' value='$paypal_email'><input name='item_name' type='hidden' value='$product_name'><input name='amount' type='hidden' value='".$prix."'><input name='currency_code' type='hidden' value='EUR'><input name='no_shipping' type='hidden' value='".$prix."'><input name='return' type='hidden' value='http://".$site_url."/merci.php'>";
//			    echo "<center><form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post'><input name='cmd' type='hidden' value='_xclick'><input name='business' type='hidden' value='w@waisse.org'><input name='item_name' type='hidden' value='Achat de pixels sur http://pixels.ww7.be'><input name='amount' type='hidden' value='".$prix."'><input name='currency_code' type='hidden' value='EUR'><input name='no_shipping' type='hidden' value='".$prix."'><input name='return' type='hidden' value='http://".$site_url."/merci.php'>";

			    echo
			      "<input name='last_name' type='hidden' value='$nom'><input name='first_name' type='hidden' value='".$prenom."'><input name='address1' type='hidden' value='$adresse1'><input name='address2' type='hidden' value='".$adresse2."'><input name='city' type='hidden' value='".$ville."'><input name='zip' type='hidden' value='$cp'><input name='country' type='hidden' value='FR'><input name='email' type='hidden' value='".$email."'><input name='custom' type='hidden' value='".$idUnique."'><input name='night_phone_a' type='hidden' value='".$tel."'>";

// 'IMAGE_ACCESS_BUY', 'IMAGE_BUY_TOTAL', 'IMAGE_PIXELS_TYPE',
$buy_button_text=$myform['IMAGE_ACCESS_BUY']. $prix. $myform['IMAGE_BUY_TOTAL'].  $x_size." X ". $y_size." = ". $total_size.$myform['IMAGE_PIXELS_TYPE']. $color;


			    echo
			      "<input type='submit' name='Submit' value='$buy_button_text'><input type='hidden' name='notify_url' value='http://pixels.ww7.be/pix_nip.php'></form></center>";

			  }
			else
			  {
			    echo "echec de l'inscription";
			  }
		      }
		}
		else
		  {
// Sinon on affiche une erreur pour lextension
		    echo
		      "<p>Votre image ne comporte pas une extension valide !</p>";
		  }
	      }
	    else
	      {
// Sinon on affiche une erreur pour le champ vide
		echo '<p>Le champ du formulaire est vide !</p>';
	      }
?>
</h3>
<?php include 'footer.php'; ?>

</BODY>

</HTML>

