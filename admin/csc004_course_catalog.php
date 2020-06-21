<!--Course Catalog Page-->
<?php
session_start();
include'../dbconnection.php';
// checking session is valid for not
if (strlen($_SESSION['id']==0)) {
  header('location:../logout.php');
} ?>
<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <style>

    .header-default {
  box-sizing: border-box;
  width: 100%;
  padding: 10px;
  border: 1px solid #d1d1d1;
  border-radius: 4px 4px 0 0;
  background-color: white;
  margin-bottom: -0.9em !important;
  cursor: pointer;
  }
  .header-default:hover { background-color: white; }
  .header-default {background-color:#ddbc6a !important
  color:white !important;}
  .header-active {
  background-color: #ddbc6a !important;
  color:white !important;
  margin-bottom: 0px !important;
  }
  .header-active:hover { background-color: #c9aa5f !important;
  color:white !important; }
  .content-default { display: none; }
  .right { float: right; }
  .accordion-content {
  text-align: justify;
  box-sizing: border-box;
  margin: 0px;
  padding: 15px;
  border: 1px solid #d1d1d1;
  border-bottom-left-radius: 25px;
  border-bottom-right-radius: 25px;
  }
  .inline { display: inline; }
  .btn-ordering {
  margin: 0px 10px 0px 10px;
  border: 1px solid inherit;
  background-color: #e0e0e0;
  min-width: 80px;
  border-radius: 4px;
  }
  .btn-ordering:hover {
  border-style: inset;
  background-color: #bcbcbc;
  }
  #btn-div {
  margin-top: 40px;
  text-align: right;
  }
  [data-type="accordion-search"] {
  min-height: 15px;
  border-radius: 4px;
  }
  [data-type="accordion-filter"] {
  min-height: 15px;
  border-radius: 0px;
  min-width: 120px;
  height: 20px;
  }
    table.sortable span.arrow, span.reversed, th.arrow.down:after, th.reversedarrow.down:after, th.arrow.up:after, th.reversedarrow.up:after {
      border-style: solid;
      border-width: 5px;
      font-size: 0;
      border-color: #ccc transparent transparent transparent;
      line-height: 0;
      height: 0;
      width: 0;
      margin-top: -2px;
    }

    </style>
    <title>Admin | Course Catalog</title>
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
        <h3><i class="fa fa-angle-right"></i>CourseBook Catalog</h3>
        <div class="row">
          <div class="col-md-12">
            <div class="content-panel">
              <!-- Section for Accordion to List all the courses-->
                          <input type="text" class="form-control" placeholder="Search Course Name" name="search" id="search" data-type="accordion-search">
                          <div class="scroll" style="border: 5px solid #C3646;">
                           <section id="accordion">
                             <!--Code to fetch course2 table from database to show in accordion -->
                             <?php $ret=mysqli_query($con,"select * from cscourse");
                             $cnt=1;
                             while($row=mysqli_fetch_array($ret))
                             {?>
                                <div data-type="accordion-section" data-filter="type1">
                                  <h3 style="color:#ffd777;" data-type="accordion-section-title"> <?php echo $cnt . ". " . $row['course_num_section'];
                                  echo ' '    .  $row['course_title']  . '<br>';	?></h3>
                                  <div class="accordion-content" data-type="accordion-section-body"> <?php

                                  echo 'Credit Hours: ' . $row['credit_hours'] . '<br>';
                                    echo 'Instructor: ' . $row['instructor'] . '<br>';
                                      echo 'Schedule: ' . $row['day_time'] . '<br>';
                                        echo 'Location: ' . $row['place'] . '<br>';
                                ?>
                                  </div>
                                </div>
                             <?php $cnt=$cnt+1; }?>
                           </section>
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
              <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/moment.js"></script>
              <script src="https://drvic10k.github.io/bootstrap-sortable/Scripts/bootstrap-sortable.js"></script>
              <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
              <script>
              $(function(){
                $('select.styled').customSelect();
              });

              </script>

       <!--Jquery Code to configure Accordion-->
       <script>
       $(document).ready(function () {
         $("#accordion").accordion();
       });
       </script>
       <!--Code to Configure Search Box using Javascript-->
     <script type="text/javascript">

     var _gaq = _gaq || [];
     _gaq.push(['_setAccount', 'UA-36251023-1']);
     _gaq.push(['_setDomainName', 'jqueryscript.net']);
     _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();

     </script>
     <script src="js/accordion.js"></script>
    </body>
    </html>
