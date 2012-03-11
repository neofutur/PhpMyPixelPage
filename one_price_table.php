
<?php

$requete_OUR_PRICES="SELECT * from text where name_text='OUR_PRICES'";
$req = mysql_query($requete_OUR_PRICES) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$our_prices=$data['content_text'];


//echo "<h1> Nos tarifs </h1>";
echo $our_prices."<br />\n";

echo "<table class='table_prices' background-image='img/bg13.gif'>";

$requete_PRICES="SELECT * from prices where  name_price='$color'";
$req = mysql_query($requete_PRICES) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
while($data = mysql_fetch_assoc($req))
{
$name_price = $data['name_price'];
$comment_price = $data['comment_price'];
$ppp_price = $data['ppp_price'];
$pblock10x10_price = $data['pblock10x10_price'];
$image_price = $data['image_price'];
$url_buy = $data['url_buy'];
$button_buy1 = $data['button_buy1'];

 echo "<tr><td background='$image_price'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>";
 echo "<td align='center'><h4>$name_price</h4>";

 echo "</td>";
 echo "<td><h3>$comment_price</h3><br /><td>";
 echo "<td><h4>PpP ( Prix par Pixel ) :</h4> <h1>$ppp_price EUR</h1> </td>";
 echo "<td><h4>Prix du bloc ( de 10x10=100 pixels ) :</h4> <h1>$pblock10x10_price EUR</H1></td>";
 echo "</tr>";

}

 // Print your special Prices ( can give a CHEATCODE pro promotion
$requete_MORE_PRICES="SELECT * from text where  name_text='MORE_PRICES'";
$req = mysql_query($requete_MORE_PRICES) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$more_prices=$data['content_text'];


 echo $more_prices;

 echo "</table>";
?>

