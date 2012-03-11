<?php
  function idUnique($len) {

  $pass = null;

  $salt = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvXxYyZz0123456789";

  srand((double)microtime()*1000000);

  $i = 1;

  while ($i <= $len) {

  $num = rand() % strlen( $salt );

  $tmp = substr( $salt, $num, 1 );

  $pass = $pass . $tmp;

  $i++;

  }

  return $pass;

  }

?>
