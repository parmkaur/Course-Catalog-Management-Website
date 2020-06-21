<!--User Activity Log Page-->
<?php
session_start();
include'../dbconnection.php';
// checking session is valid for not
if (strlen($_SESSION['id']==0)) {
  header('location:../logout.php');
}
?><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

  <title>Admin | Users Activity Log</title>
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
</head>

<body>
  <!--Header Section-->
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
      <h3><i class="fa fa-angle-right"></i> Activity Log</h3>
      <div class="row">
        <div class="col-md-12">
          <div class="content-panel">

            <table class="table table-striped  table-hover table-responsive">
              <h4><i class="fa fa-angle-right"></i> Users Activity Log </h4>
              <hr>
              <thead>
                <tr>
                  <th>Sno.</th>
                  <th class="hidden-phone">Userid</th>
                  <th> User IP</th>
                  <th width="100px"> Login Time</th>
                  <th>Logout Time</th>
                  <th>Status</th>
                  <th width="80px">Course Added</th>
                  <th width="80px">Course Updated</th>
                </tr>
              </thead>
              <tbody>
                <?php $ret=mysqli_query($con,"select * from userlog");
                $cnt=1;
                while($row=mysqli_fetch_array($ret))
                {?>
                  <tr>
                    <td width="20px"><?php echo $cnt;?></td>
                    <td width="100px"><?php echo $row['userid'];?></td>
                    <td width="100px"><?php echo $row['userip'];?></td>
                    <td width="50px"><?php echo $row['loginTime'];?></td>
                    <td width="200px"><?php echo $row['logout'];?></td>
                    <td width="180px"><?php echo $row['status'];?></td>
                    <td width="180px"><?php echo $row['new_course_added'];?></td>
                    <td width="180px"><?php echo $row['course_updated'];?></td>

                  </tr>
                  <?php $cnt=$cnt+1; }?>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </section>
      </section
      ></section>
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
