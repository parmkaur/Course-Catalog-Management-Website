<!--Course Update Page-->

<?php
session_start();
include'../dbconnection.php';
$msg="";
//Checking session is valid or not
if (strlen($_SESSION['id']==0)) {
  header('location:../logout.php');
} else{

  // for updating user info
  if(isset($_POST['Submit']))
  {
    $course_id=$_POST['course_id'];
    $course_title=$_POST['course_title'];
    $course_num_section=$_POST['course_num_section'];
    $credit_hours=$_POST['credit_hours'];
    $place=$_POST['place'];
    $day_time=$_POST['day_time'];
    $instructor=$_POST['instructor'];
    $semester_year=$_POST['semester_year'];
    $uid=intval($_GET['uid']);
    $query=mysqli_query($con,"update cscourse set course_id='$course_id' ,course_title='$course_title' ,
    course_num_section='$course_num_section',credit_hours='$credit_hours' ,
    place='$place' ,day_time='$day_time' ,
    instructor='$instructor' ,semester_year='$semester_year' ,
    time_updated=now() where id='$uid'");
    $msg="Course Details Updated successfully";
    mysqli_query($con,"UPDATE userlog  SET course_updated = '$course_title' WHERE userid = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");

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

    <title>Admin | Update Course Details</title>
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
    <?php $ret=mysqli_query($con,"select * from cscourse where id='".$_GET['uid']."'");
    while($row=mysqli_fetch_array($ret))

    {?>
      <section id="main-content">
        <section class="wrapper">
          <h3>Update Course <i class="fa fa-angle-right"></i> <?php echo $row['course_title'];?> </h3>

          <div class="row">
            <div class="col-md-12">
              <div class="content-panel">
                <p align="center" style="color:#F00;"><?php echo $msg; echo $msg="";?></p>
                <form class="form-horizontal style-form" name="form1" method="post" action="" onSubmit="return valid();">
                  <p style="color:#F00"></p>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Course Id </label>
                    <div class="col-sm-10">
                      <input type="number" class="form-control" name="course_id" value="<?php echo $row['course_id'];?>" readonly required >
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Semester </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="semester_year" value="<?php echo $row['semester_year'];?>" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Course No & Section</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="course_num_section" value="<?php echo $row['course_num_section'];?>" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Course Name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="course_title" value="<?php echo $row['course_title'];?>" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Credit Hours </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="credit_hours" value="<?php echo $row['credit_hours'];?>" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">instructor</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="instructor" value="<?php echo $row['instructor'];?>"  required>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Schedule</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="day_time" value="<?php echo $row['day_time'];?>"  required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Location</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="place" value="<?php echo $row['place'];?>" required >
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Created on</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="time_created" value="<?php echo $row['time_created'];?>" readonly required >
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">Last Updated on</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="time_updated" value="<?php echo $row['time_updated'];?>" readonly required >
                    </div>
                  </div>

                  <div style="margin-left:100px;">
                    <input type="submit" name="Submit" value="Update" class="btn btn-theme"></div>
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
    </body>
    </html>
  <?php } ?>
