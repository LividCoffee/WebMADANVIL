<html>
  <head>
    <title>Welcome to rabotyag.ga!</title>
  </head>
  <body>
    <h1>Success!  The rabotyag.ga virtual host is working!</h1>
  </body>
</html>

<?php
	$params = explode(",", $argv[1]);
	echo $params[0] ." - " . $params[1] . " - " . $params[2];
?>