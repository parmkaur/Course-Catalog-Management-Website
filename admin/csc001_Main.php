<!--Manage Coursebook page to update and delete particular Course-->
<?php
session_start();
include'../dbconnection.php';
// checking session is valid for not
if (strlen($_SESSION['id']==0)) {
  header('location:../logout.php');
} else{

  // for deleting course
  if(isset($_GET['id']))
  {
    $id=$_GET['id'];
    $msg=mysqli_query($con,"delete from cscourse where id='$id'");

  }
  ?><!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    /*Search box style*/
    #myInput {
      background-image: url('img/searchicon.png');
      background-position: 10px 10px;
      background-repeat: no-repeat;
      width: 100%;
      font-size: 16px;
      padding: 12px 20px 12px 40px;
      border: 1px solid #ddd;
      margin-bottom: 12px;
    }
    </style>
    <title>Admin | Manage CourseBook</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

  </head>
  <body>

    <section id="container" >
        <!--Header Section -->
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
    <!--SideBar Navigation Section -->
    <?php include("csc002_sidebar_nav.php");?>
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Manage CourseBook</h3>
        <div class="row">
          <div class="col-md-12">
            <div class="content-panel">
              <table id="myTable" class="table table-striped  table-hover table-responsive sortable">
                <h4><i class="fa fa-angle-right"></i> All Courses Details </h4>
                <hr>
                <input style="border:1px solid #c9aa5f" type="text" id="myInput" onkeyup="myFunction()" placeholder=" Search for Course Name" title="Type in a name"><br><br>
                <thead>
                  <tr>
                    <th >Sno.</th>
                    <th width="100px" class="hidden-phone">Semester</th>
                    <th width="150px"> Course No & Section</th>
                    <th width="100px"> Course Id</th>
                    <th>Course Name  <span style="font-size:15px" class="glyphicon glyphicon-sort-by-alphabet"></span></th>
                    <th>Credit Hours</th>
                    <th>instructor  <span style="font-size:15px" class="glyphicon glyphicon-sort-by-alphabet"></span></th>
                    <th>Schedule  <span  style="font-size:15px" class="glyphicon glyphicon-sort-by-alphabet"></span></th>
                    <th>Location  <span style="font-size:15px" class="glyphicon glyphicon-sort-by-alphabet"></span></th>
                  </tr>
                </thead>
                <tbody>
                  <?php $ret=mysqli_query($con,"select * from cscourse");
                  $cnt=1;
                  while($row=mysqli_fetch_array($ret))
                  {?>
                    <tr>
                      <td width="20px"><?php echo $cnt;?></td>
                      <td width="100px"><?php echo $row['semester_year'];?></td>
                      <td width="100px"><?php echo $row['course_num_section'];?></td>
                      <td width="50px"><?php echo $row['course_id'];?></td>
                      <td width="200px"><?php echo $row['course_title'];?></td>
                      <td width="180px"><?php echo $row['credit_hours'];?></td>
                      <td width="80px"><?php echo $row['instructor'];?></td>
                      <td width="200px"><?php echo $row['day_time'];?></td>
                      <td><?php echo $row['place'];?></td>
                      <td>
                        <a href="csc001_Main.php?id=<?php echo $row['id'];?>">
                          <button class="btn btn-danger btn-xs" onClick="return confirm('Do you really want to delete');"><i class="fa fa-trash-o "></i></button></a>
                        </td>
                        <td>
                          <a href="csc003_update_course.php?uid=<?php echo $row['id'];?>">
                            <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a></td>
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
              <link rel="stylesheet" href="https://drvic10k.github.io/bootstrap-sortable/Contents/bootstrap-sortable.css" />
              <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/moment.js"></script>
              <script src="https://drvic10k.github.io/bootstrap-sortable/Scripts/bootstrap-sortable.js"></script>
              <script>
              $(function(){
                $('select.styled').customSelect();
              });

              </script>
              <script>
              //Search Bar course search enabling js code
              function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                  td = tr[i].getElementsByTagName("td")[4];
                  if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                      tr[i].style.display = "";
                    } else {
                      tr[i].style.display = "none";
                    }
                  }
                }
              }
              </script>
            </body>
            </html>
          <?php } ?>
