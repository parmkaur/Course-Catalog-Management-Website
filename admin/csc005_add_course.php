<!--Add New Course Page-->

<?php
session_start();
include'../dbconnection.php';
$msg="";
//Checking session is valid or not
if (strlen($_SESSION['id']==0)) {
  header('location:../logout.php');
} else{

  // for Inserting course info
  if(isset($_POST['Submit']))
  {
    $course_id=$_POST['course_id'];
    $course_title=$_POST['course_title'];
    $course_num_section=$_POST['course_num_section'];
    $credit_hours=$_POST['credit_hours'];
    $credit_hours_corrected = $credit_hours . " Semester Credit Hours";
    $place=$_POST['place'];
    $day_time=$_POST['day_time'];
    $instructor=$_POST['instructor'];
    $semester_year=$_POST['semester_year'];
    $query=mysqli_query($con,"insert into cscourse (course_id ,course_title
    ,course_num_section,credit_hours,place
    ,day_time ,instructor ,semester_year) VALUES ('$course_id','$course_title','$course_num_section',
    '$credit_hours_corrected','$place','$day_time','$instructor', '$semester_year')");
    $msg="Course Created successfully";
    mysqli_query($con,"UPDATE userlog  SET new_course_added = '$course_title' WHERE userid = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");

  }
  ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Admin | Add New Course</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
  </head>
  <body>
    <section id="container" >
      <header class="header black-bg">
        <div class="sidebar-toggle-box">
          <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <a href="#" class="logo"><b>Admin Dashboard</b></a>
        <div class="nav notify-row" id="top_menu">
     </ul>
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../logout.php">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--Sidebar Navigation-->
    <?php include("csc002_sidebar_nav.php");?>
    <section id="main-content">
      <section class="wrapper">
        <h3>Add New Course <i class="fa fa-angle-right"></i></h3>
        <div class="row">
          <div class="col-md-12">
            <div class="content-panel">
              <p align="center" style="color:#F00;"><?php echo $msg; echo $msg="";?></p>
                <!--Add New Course Form-->
              <form class="form-horizontal style-form" name="form1" method="post" action="" onSubmit="return valid();">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Course Id </label>
                  <div class="col-sm-10">
                    <input onblur="myFunction" type="number" class="form-control" name="course_id" value="Enter Course ID"  required >
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Semester</label>
                  <div class="col-sm-10">
                    <select  class="form-control" name="semester_year" required>
                        <option value="">Choose Semester</option>
                      <option value="Spring 2020">Spring 2020</option>
                      <option value="Summer 2020">Summer 2020</option>
                      <option value="Fall 2020">Fall 2020</option>
                      <option value="Spring 2021">Spring 2021</option>
                      <option value="Fall 2021">Fall 2021</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Course No & Section</label>
                  <div class="col-sm-10">
                    <input id="course_num_section" onBlur="courseAvailability()" type="text" class="form-control" name="course_num_section"  required>
                    <div><span id="course-availability-status1" style="font-size:12px;"></span></div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Course Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="course_title" id="course_title"  required>
                    <div><span style="color:red;" id="course_title_msg" style="font-size:12px;"></span></div>
                  </div>
                </div>


                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Credit Hours </label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="credit_hours"  required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Instructor</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="instructor" name="instructor"  required>
                      <div><span style="color:red;" id="instructor_msg" style="font-size:12px;"></span></div>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Schedule</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="day_time" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Location</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="place" required >
                  </div>
                </div>
              <div style="margin-left:40px;">
                  <input type="submit" name="Submit" value="Add New Course" class="btn btn-theme"></div><br>
                </form>
              </div>
            </div>
          </div>
        </section>
      <?php } ?>
    </section></section>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/common-scripts.js"></script>
    <script>
    $(function(){
      $('select.styled').customSelect();
    });
    </script>
<script>
  function  courseAvailability() {
    jQuery.ajax({
      url: "csc007_check_course_exist.php",
      data:'course_num_section='+$("#course_num_section").val(),
      type: "POST",
      success:function(data){
        $("#course-availability-status1").html(data);
      },
      error:function (){}
    });
  }
</script>
  <!--Check if Course name is in aphabets-->
<script>
$('#course_title').keypress(function (e) {
			var regex = new RegExp("^[a-zA-Z]+$");
			var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			if (regex.test(str)) {
				return true;
			}
			else
			{
			e.preventDefault();
			$('#course_title_msg').show();
			$('#course_title_msg').text('Please Enter Alphabats');
			return false;
			}
		});

</script>
<!--Check if Course Instructor name is in aphabets-->
<script>
$('#instructor').keypress(function (e) {
			var regex = new RegExp("^[a-zA-Z]+$");
			var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			if (regex.test(str)) {
				return true;
			}
			else
			{
			e.preventDefault();
			$('#instructor_msg').show();
			$('#instructor_msg').text('Please Enter Alphabats');
			return false;
			}
		});
</script>
  </body>
  </html>
  <?php  ?>
