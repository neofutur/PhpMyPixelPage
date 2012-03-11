
<table>
<tr>
<td colspan="8">
<?php
$db = mysql_connect($pix_db_host, $pix_db_user, $pix_db_passwd);
mysql_select_db($pix_db_dbname,$db);
$requete_BANNER_CODE="SELECT * from text where name_text='BANNER_CODE'";
$req = mysql_query($requete_BANNER_CODE) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$banner_code = $data['content_text'];
echo $banner_code;

//$requete_CHARSET="SET CHARACTER SET 'utf8'";
//$req = mysql_query($requete_CHARSET) or die('Erreur SQLH1 !<br>'.$sql.'<br>'.mysql_error());
//$requete_CHARSET="SET collation_connection = 'utf8_general_ci";
//$req = mysql_query($requete_CHARSET) or die('Erreur SQLH2 !<br>'.$sql.'<br>'.mysql_error());

?>
</td></tr>
<tr><td colspan="5"><?php
$requete_LOGO_CODE="SELECT * from text where name_text='LOGO_CODE'";
$req = mysql_query($requete_LOGO_CODE) or die('Erreur SQLH3 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$logo_code = $data['content_text'];
echo $logo_code;
?></td><td colspan="2">
<table>
<tr><td>
<!-- <a href="http://www.123pagerank.com/" target="_blank"><img src="http://www.123pagerank.com//sme_rank.php?site=pixels.ww7.be" border="0" alt="Referencement 123pagerank.com"></a><br />-->
<!--DEBUT WEBOSCOPE FREE - Weborama -->
<!--<script type="text/javascript" language="javascript">
WEBO_ZONE=1;
WEBO_PAGE=1;
webogold_ok=0;</script>
<script type="text/javascript" language="javascript" src="http://script.weborama.fr/gold.js"></script>
<script type="text/javascript" language="javascript">
if(webogold_ok==1){webogold_zpi(WEBO_ZONE,WEBO_PAGE,220442);}</script>
<NOSCRIPT><A HREF="http://www.weboscope.com">Weboscope</A> mesure d'audience, statistiques, ROI<BR>
<A HREF="http://www.weborama.fr">Classement des meilleurs sites</A> et positionnement </NOSCRIPT>-->
<!--FIN WEBOSCOPE FREE - Weborama -->

</td><td>
 <a href="http://www.myrank.org" target="_blank"><img src="http://www.myrank.org/sme_rank.php?site=<?php echo $site_url; ?>" border="0" width="66" height="13" alt="Google PageRank? - Afficher son PR avec MyRank.org"></a><br />
<a href="http://top.pixeldir.com/">
<img src="http://top.pixeldir.com/button.php?u=neofutur" alt="Top Pixel Sites" border="0" />
</a>

</td><td>
<!-- begin PixelTrafficWatcher.com code -->
<a href="http://www.pixeltrafficwatcher.com/" target="_blank"><img src="http://www.pixeltrafficwatcher.com/hit.php?sid=10668" border="0" title="Click Here to get your own pixel traffic counter!"></a>
<!-- end PixelTrafficWatcher.com code -->
</td>
<td rowspan="2">
<SCRIPT type='text/javascript' language='JavaScript' src='http://xslt.alexa.com/site_stats/js/s/a?url=<?php echo $site_url; ?>'></SCRIPT>
</td>
</tr>
<tr><td>
<!--Begin Cool Text Code -->
<A HREF="http://cooltext.com" TARGET="_top">
<IMG SRC="http://cooltext.com/images/ctb4.gif" WIDTH="88" HEIGHT="31" ALT="Logo and Graphics Generator" BORDER="0" ALIGN="BOTTOM"></A>
<!-- End Cool Text Code -->
</td>
<td>
<a href="http://www.pixelbannerswap.com" title="Join a pixel banner group today!"><img src="img/pixbs.gif" title="Join a pixel banner group today!" border="0"></a>
</td>
<td>
<a href="http://www.pixeladsbycontent.com/">
<img src="http://www.pixeladsbycontent.com/button.php?u=neofutur" alt="Pixel Ads by Content.com" border="0" />
</a>
</td>
</tr>
</table>
</td>
</tr>
</table>

<br />  



