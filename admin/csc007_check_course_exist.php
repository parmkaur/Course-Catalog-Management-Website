<!--Check Course no and section if it is already in coursebook-->
<?php
require_once("../dbconnection.php");
if(!empty($_POST["course_num_section"])) {
	$course_num_section= $_POST["course_num_section"];

		$result =mysqli_query($con,"SELECT course_num_section FROM cscourse WHERE course_num_section='$course_num_section'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Course Number and Section Already exists</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
}
}
?>
