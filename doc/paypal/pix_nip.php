<html>
<body>

<?php



/*

Toute cette partie est fournie sur le site de Paypal,  j'ai juste corrigé les erreurs du traducteur qui s'est amusé à traduire des portions de code ...

*/



$req = 'cmd=_notify-validate';

foreach ($_POST as $key => $value)

{

  $value = urlencode(stripslashes($value));

  $req .= "&$key=$value";

}



/*

renvoyer au système PayPal pour validation

*/



$header = "POST /cgi-bin/webscr HTTP/1.0\r\n";

$header .= "Content-Type: application/x-www-form-urlencoded\r\n";

$header .= "Content-Length: " . strlen($req) . "\r\n\r\n";

$fp = fsockopen ('www.sandbox.paypal.com', 80, $errno, $errstr, 30);



/*

Paypal renvoie à notre script nip.php, toute une série de variables qu'il faut traiter pour pouvoir les réutiliser :

*/



$payment_status = $_POST['payment_status']; // Si Completed : tout est OK sinon aïe, aïe !

$payment_amount = $_POST['mc_gross'];

// Identifiant de la transaction

$txn_id = $_POST['txn_id'];

$receiver_email = $_POST['receiver_email'];

$payer_email = $_POST['payer_email'];

$first_name = $_POST['first_name'];

$last_name = $_POST['last_name'];

// On récupère notre identifiant unique (cf. Tuto II)

$idUnique = $_POST['custom'];

// Raison pour laquelle le paiement a été placé en attente.

$pending_reason = $_POST['pending_reason'];

// Devise de paiement

$payment_currency = $_POST['mc_currency'];



if (!$fp)

{

// ERREUR HTTP

}

else

{

fputs ($fp, $header . $req);

while (!feof($fp))

{

   $res = fgets ($fp, 1024);

   if (strcmp ($res, "VERIFIED") == 0)

   {



/*

Afin d'éviter tout problème de paiement, il faut vérifier les paramètres suivants :

Vérifier que payment_status est Completed

Vérifier que txn_id n'a pas été précédemment traité

Vérifier que receiver_email est votre adresse email PayPal principale

Vérifier que payment_amount et payment_currency sont corrects

Traiter le paiement

A partir de là, Paypal ne fournit plus de code ... C'est à nous de jouer. On va donc vérifier que chaque condition est OK, puis modifier la base.

*/


/* CONNECTION A LA BASE DE DONNEES */
$conn = @mysql_connect( $pix_db_host, $pix_db_user, $pix_db_passwd) or die ( "erreur: connexion à la base" );

$rs = @mysql_select_db( $pix_db_dbname, $conn) or die ( "erreur: base de données" );

switch ($payment_status)
{
      case "Completed" : // Le paiement est Completed
    // idTransaction = dejà dans la bdd ?

          $query = mysql_query("SELECT * FROM paypal_users WHERE idTransaction= '$txn_id'");

          $data = mysql_fetch_object($query);



          if ($data)

    // Si l'Id de Transaction est déjà dans la base de données on attribue 1 à $erreur.

             $erreur = 1;



    // email business = ok ?

           if ($receiver_email != "vendeur@vendeur.com")

             $erreur = 2;



    // montant reglé = tarif du service ?

          if ($payment_amount != 10)

             $erreur = 3;



    // devise pour régler = devise acceptée ?

    // On avait définit l'Euro comme devise dans Tuto II.

          if ($payment_currency != "EUR")

             $erreur = 4;



/*

Voilà, maintenant qu'on a vérifié toutes les conditions, il ne reste plus qu'à mettre à jour la base de données, pour activer le compte de l'utilisateur qui vient de payer.

*/



          if (!isset($erreur))

          {

        // Il n'y pas d'erreurs. S'il y a des erreurs vous devez en prévoir la gestion.

             

        $query = "UPDATE paypal_users SET idTransaction='$txn_id', autorisation='1', date = NOW() WHERE idUnique='$idUnique'";

        mysql_query($query);



/*

Pour faire encore plus chic, vous pouvez même envoyer un E-mail au client pour lui confirmer que son paiement a été accepté et que son compte est activé. Ca ne fonctionne que si votre serveur est paramétré pour envoyer les mails...

*/

           }



          break;



      }

}



else if (strcmp ($res, "INVALID") == 0)

{

  // consigner pour enquête manuelle

}



}



fclose ($fp);

}



?>


</body>
</html>
