<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->

<HTML>

<HEAD>
<?php include 'meta.php';  ?>
<HEAD>

<BODY>
<?php include 'header.php'; ?>
<?php include 'menu.php'; ?>


<?php

if ( $_SERVER['REQUEST_METHOD'] == 'POST' )
{
 $requete_affichage="SELECT * from text WHERE name_text='VALID_MODIF'";
 $req = mysql_query($requete_affichage) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
 $data = mysql_fetch_assoc($req);
 $valid_modif=$data['content_text'];

 $setting_id=$_POST['setting_id'];
 $setting_type=$_POST['setting_type'];;

 //echo $setting_type."<BR />".$setting_id."<BR />";

 $requete_setting_to_change="SELECT * from text WHERE id_text=$setting_id";
 $req = mysql_query($requete_setting_to_change) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
 $data = mysql_fetch_assoc($req);
 $setting_name=$data['name_text'];
 $table_ent= get_html_translation_table(HTML_ENTITIES);
 $reverse_translation = array_flip( $table_ent );
 $tmp_content=strtr( $data['content_text'], $reverse_translation);

 $setting_content=htmlspecialchars(stripslashes($tmp_content));
?>
 <form action='admin.php' method="POST">
<table><tr>
 <td class="table_settings">
  <input type ='submit' value='<?php echo $valid_modif; ?>'/>
  <input type="hidden", name="setting_type" value="TXT" />
  <input type="hidden", name="setting_id" value="<?php echo $setting_id; ?>" />
 </td>
 <td class="table_settings">
  <H2><?php echo $setting_name; ?></H2>

 </td><td class="table_settings">
 <textarea name="setting_content" cols="77" ><?php echo $setting_content;?> </textarea>
 </td>
</tr></table>
 </form>

<?php
}
 include 'footer.php'; ?>

</BODY>
</HTML>
