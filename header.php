<?php
require_once("config.pinc");
$db = mysql_connect($pix_db_host, $pix_db_user, $pix_db_passwd);
mysql_select_db($pix_db_dbname,$db);
?>

