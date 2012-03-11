<div id="pixelmenu">

<?php
$requete_TITLES="SELECT * from text where name_text like 'TITLE_%'";
$req = mysql_query($requete_TITLES) or die('Erreur SQL4 !<br>'.$sql.'<br>'.mysql_error());
$title_home="";$title_buy="";$title_list="";$title_partners="";$title_faq="";$title_contact="";
while($data = mysql_fetch_assoc($req))
{
 if ( $data['name_text'] == 'TITLE_HOME' ){ $title_home = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_BUY' ){ $title_buy = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_LIST' ){ $title_list = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_PARTNERS' ){ $title_partners = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_FAQ' ){ $title_faq = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_CONTACT' ){ $title_contact = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_GRTPR' ){ $title_grtpr = $data['content_text']; }
 if ( $data['name_text'] == 'TITLE_ADCLICKS' ){ $title_adclicks = $data['content_text']; }
}

?>


<table border="1" cellspacing="1" cellpadding="1" ><tr valign="top"><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>"><?php echo $title_home ?> </a></div></td><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>buy.php"><?php echo $title_buy ?></a></div></td><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>adclicks.php"><?php echo $title_adclicks ?></a></div></td><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>pixellist.php"><?php echo $title_list ?></a></div></td><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>partners.php"><?php echo $title_partners ?></a></div></td><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>faq.php"><?php echo $title_faq ?></a></div> </td><td>
<div class="flashy"><a href="<?php echo $pix_relative_path; ?>contact.php"><?php echo $title_contact ?></a></div> </td><td>
<div class="flashy"><a href="http://rankit.free.fr/site.php?<?php echo $site_url; ?>" target="_new"><?php echo $title_grtpr ?></a></div></td><td>
<a href="http://www.yagoort.org/googledance.html?domain=<?php echo $site_url; ?>" target="_blank" title="GPTR"><img src="http://www.yagoort.org/pagerank.php?domain=<?php echo $site_url; ?>&rtcolor=AABBDD&gdcolor=CCAACC&bgcolor=BBBB88&textcolor=000000&width=35&height=16&type=RKPR"></a>
</td>
</tr></table>

</div>

