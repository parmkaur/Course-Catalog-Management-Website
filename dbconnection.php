<?php
define('DB_SERVER','localhost');
define('DB_USER','min');
define('DB_PASS' ,'min');
define('DB_NAME', 'www40');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>
