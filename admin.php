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
 // user modified a setting
 $setting_id=$_POST['setting_id'];
 $setting_content=addslashes(htmlspecialchars($_POST['setting_content'] ) );
 $setting_type=$_POST['setting_type'];

 $requete_update_setting="UPDATE text SET content_text='$setting_content' WHERE id_text='$setting_id'";
 $req = mysql_query($requete_update_setting) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
 //echo $requete_update_setting."<BR />";
 
}
 
 // need text
 $requete_affichage="SELECT * from text WHERE name_text='MODIFY_SETTING'";
 $req = mysql_query($requete_affichage) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
 $data = mysql_fetch_assoc($req);
 $modify_text=stripslashes($data['content_text']);

 //printing all the text settings
 $requete_TEXTS="SELECT * from text order by id_text";
 $req = mysql_query($requete_TEXTS) or die('Erreur SQL22!<br>'.$sql.'<br>'.mysql_error());
 ?>
 <table >
 <?php
 while($data = mysql_fetch_assoc($req))
 {
  $id_text      = $data['id_text'];
  $name_text    = $data['name_text'];
  $type_text    = $data['type_text'];
  // htmlentities needed to display html tags in a textatea form
 $table_ent= get_html_translation_table(HTML_ENTITIES);
 $reverse_translation = array_flip( $table_ent );
 $tmp_content=strtr( stripslashes($data['content_text']), $reverse_translation);
 $content_text = htmlspecialchars( $tmp_content );
  ?>
  <tr><td class="table_settings">
  <form action ="setting_edit.php" method="POST">
  <input type ='submit' value='<?php echo $modify_text; ?>'/>
  </td><td class="table_settings">
  <H2><?php echo $name_text; ?></H2>
   
  <input type="hidden", name="setting_type" value="TXT" />
  <input type="hidden", name="setting_id" value="<?php echo $id_text; ?>" />
  </td><td class="table_settings">
  <textarea cols="55" readonly="readonly" ><?php echo $content_text; ?></H4></textarea>
  </td></tr>
  </form>
  
  <?php
 }?>
</tr></table>

<?php include 'footer.php'; ?>

</BODY>
</HTML>
