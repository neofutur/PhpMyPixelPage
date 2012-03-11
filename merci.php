<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://cahierspip.ww7.be/xhtml1-strict.dtd">
<!--squelette sous licence http://creativecommons.org/licenses/by-nc-sa/2.5/ -->
<HTML>
<HEAD>
<?php require 'config.pinc'; ?> <?php include 'meta.php';  ?>
<script type="text/javascript">
/*************************************************************************
  This code is from Dynamic Web Coding at dyn-web.com
  Copyright 2003-5 by Sharon Paine
  See Terms of Use at http://www.dyn-web.com/bus/terms.html
  regarding conditions under which you may use this code.
  This notice must be retained in the code as is!
*************************************************************************/
function doTooltip(e, msg) { if ( typeof Tooltip == "undefined" || !Tooltip.ready ) return; Tooltip.show(e, msg); }

function hideTip() { if ( typeof Tooltip == "undefined" || !Tooltip.ready ) return; Tooltip.hide(); }
</script>
</HEAD>

<BODY>
<?php
include 'header.php';
include 'header2.php';
include 'menu.php';
include 'fonctions.php';
echo "<h3>";
// GET tranlations
$req="SELECT * FROM `text` WHERE `name_text` LIKE 'THANK%'";
$res_FORMNAMES = mysql_query($req) or die('Erreur SQL1 !<br>'.$sql.'<br>'.mysql_error());

while($data = mysql_fetch_assoc($res_FORMNAMES))
{
 $myform[$data['name_text']]= $data['content_text'];
 //=$data[''];

}

echo "<H1>".$myform['THANK_PAYOK_PAYPAL']."</H1>";
// Paiement recu, vous devriez recevoir bientot un email de confirmation de la part de Paypal.</H1>


// Paypal data example :
//array(26) { ["txn_type"]=> string(10) "web_accept" ["payment_date"]=> string(25) "18:48:49 Feb 13, 2006 PST" ["last_name"]=> string(1) "w" ["pending_reason"]=> string(10) "unilateral" ["item_name"]=> string(40) "Achat de pixels sur http://pixels.ww7.be" ["payment_gross"]=> string(0) "" ["mc_currency"]=> string(3) "EUR" ["business"]=> string(12) "w@waisse.org" ["payment_type"]=> string(7) "instant" ["verify_sign"]=> string(56) "ArXDV.lAWnPz1SLE-Nq7jOhCmBiOAi8eoWrpXz4g9Vt6reLtGhNv1YdK" ["payer_status"]=> string(8) "verified" ["test_ipn"]=> string(1) "1" ["tax"]=> string(4) "0.00" ["payer_email"]=> string(15) "acheteur@ww7.be" ["txn_id"]=> string(1) "0" ["quantity"]=> string(1) "1" ["first_name"]=> string(1) "w" ["receiver_email"]=> string(12) "w@waisse.org" ["payer_id"]=> string(13) "YYXLHMQ6US6DN" ["item_number"]=> string(0) "" ["payment_status"]=> string(7) "Pending" ["shipping"]=> string(4) "0.00" ["mc_gross"]=> string(6) "400.00" ["custom"]=> string(10) "MM6QnGby8o" ["charset"]=> string(12) "windows-1252" ["notify_version"]=> string(3) "2.0" }

// ["txn_type"]=>  string(10) "web_accept"
// ["payment_date"]=>  string(25) "03:58:20 Jan 28, 2006 PST"
// ["last_name"]=>  string(1) "w"
// ["pending_reason"]=>  string(10) "unilateral"
// ["item_name"]=>  string(40) "Achat de pixels sur http://pixels.ww7.be"
// ["payment_gross"]=>  string(0) ""
// ["mc_currency"]=>  string(3) "EUR"
// ["business"]=>  string(12) "w@waisse.org"
// ["payment_type"]=>  string(7) "instant"
// ["verify_sign"]=>  string(56) "Ak5Q9bMBsSqswT3-C78OsdQEOGvQATg3ow7pH2KG9YOkhvfZX.xJS07a"
// ["payer_status"]=>  string(10) "unverified"
// ["test_ipn"]=>  string(1) "1"
// ["tax"]=>  string(4) "0.00"
// ["payer_email"]=>  string(15) "acheteur@ww7.be"
// ["txn_id"]=>  string(1) "0"
// ["quantity"]=>  string(1) "1"
// ["first_name"]=>  string(1) "w"
// ["receiver_email"]=>  string(12) "w@waisse.org"
// ["payer_id"]=>  string(13) "YYXLHMQ6US6DN"
// ["item_number"]=>  string(0) ""
// ["payment_status"]=>  string(7) "Pending"
// ["shipping"]=>  string(4) "0.00"
// ["mc_gross"]=>  string(4) "1.00"
// ["custom"]=>  string(10) "Lodnl3LCxP"
// ["charset"]=>  string(12) "windows-1252"
// ["notify_version"]=>  string(3) "2.0"

//var_dump($_POST);

 $prix = $_POST['mc_gross'];
 $custom = $_POST['custom'];
 $date = date("Y-m-d");
 $five_years_seconds = 5*365*24*60*60;
 $ans =date("Y-m-d", mktime(date("Y-m-d"))+$five_years_seconds);
 
 //echo "<br />$date -- $ans<br />";
 $sql = "UPDATE site SET  normal_price=$prix, final_price=$prix, from_date='$date', for_nb_days=1825, until_date='$ans', email_webmaster='".$_POST['payer_email']."', state_site='active' ";
 $sql=$sql.", txn_type='".$_POST['txn_type']."', payment_date='".$date."', first_name='".$_POST['first_name']."', last_name='".$_POST['last_name']."', pending_reason='".$_POST['pending_reason']."', item_name='".$_POST['item_name']."', mc_currency='".$_POST['mc_currency']."', business='".$_POST['business']."', payment_type='".$_POST['payment_type']."', verify_sign='".$_POST['verify_sign']."', payer_status='".$_POST['payer_status']."', test_ipn=".$_POST['test_ipn'].", payer_email='".$_POST['payer_email']."', txn_id=".$_POST['txn_id'].", quantity=".$_POST['quantity'].", receiver_email='".$_POST['receiver_email']."', payer_id='".$_POST['payer_id']."', payment_status='".$_POST['payment_status']."', shipping=".$_POST['shipping'].", notify_version='".$_POST['notify_version']."' ";
 $sql=$sql." WHERE custom='".$custom."' ";
 $query = mysql_query($sql) or die('<h3>Erreur SQL !<br />'.$sql.'<br>'.mysql_error()."</h3>");
 echo "<h3>".$myform['THANK_ADDED']."<a href='http://$site_url'>$site_url</a> !";

?>

<?php 
 // il faut envoyer un mail de confirmation
?>

</h3>
<?php include 'footer.php'; ?>
</BODY>
</HTML>

