<!--Sidebar Navigation-->

<aside>
  <div id="sidebar"  class="nav-collapse ">
    <ul class="sidebar-menu" id="nav-accordion">
      <p class="centered"><a href="#"><img src="img/ui-sam.jpg" class="img-circle" width="60"></a></p>
      <h5 class="centered"><?php echo $_SESSION['login'];?></h5>
      <li class="mt">
        <a href="csc001_Main.php">
          <i class="fa fa-file"></i>
          <span>Manage CourseBook</span>
        </a>
      </li>
      <li class="sub-menu">
        <a href="csc004_course_catalog.php" >
          <i class="fa fa-users"></i>
          <span>Course Catalog</span>
        </a>
      </li>
      <li class="sub-menu">
        <a href="csc005_add_course.php" >
          <i class="fa fa-users"></i>
          <span>Add New Course</span>
        </a>
      </li>
      <li class="sub-menu">
        <a href="csc006_user_log.php" >
          <i class="fa fa-users"></i>
          <span>User Activity Log</span>
        </a>
      </li>
    </ul>
  </div>
</aside>
