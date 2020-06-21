<?php
session_start();
include'dbconnection.php';
$_SESSION['login']=="";
date_default_timezone_set('America/Chicago');
mysqli_query($con,"UPDATE userlog  SET logout = now() , status ='Offline' WHERE userid = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");
session_unset();
$_SESSION['action1']="You have logged out successfully..!";
?>
<script language="javascript">
document.location="index.php";
</script>
