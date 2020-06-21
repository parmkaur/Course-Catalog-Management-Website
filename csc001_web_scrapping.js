/*Casperjs used to Extract Course from Courceboook*/

var casper = require("casper").create({
  verbose: false,
  logLevel: 'debug',
  pageSettings: {
  loadImages: false,
  loadPlugins: false,
  javascriptEnabled: true,
  customHeaders: {
  acceptEncoding: "gzip, deflate, br",
  acceptLanguage: "en-US,en;q=0.9,ar;q=0.8,fr;q=0.7",
  userAgent: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36"
    }
  }
});

var url = 'CS-course-2020sp.html', //declared url from which data will be scrapped
/*Declared objects to store course information*/
  Course_Name_Section = [],
  Course_Id = [],
  Instructor = [],
  Schedule = [],
  Course_Title= [];


/*Function to extract Course No and Section*/
function getCourseNameSection() {
  var course_name_section = document.querySelectorAll('table tbody tr td a[href*="https://coursebook.utdallas.edu/search/cs"]');
  return Array.prototype.map.call(course_name_section, function(e) {
    return e.innerText;
  });
}

/*Function to extract Course ID*/
function getCourseId() {
  var course_id = document.querySelectorAll('table td:nth-child(2)');
  return Array.prototype.map.call(course_id, function(e) {
    return e.innerText;
  });
}


/*Function to extract Instructor Name*/
function getInstructor() {
  var instructor = document.querySelectorAll('table td:nth-child(4)');
  return Array.prototype.map.call(instructor, function(e) {
    return e.innerText;
  });
}

/*Function to extract Course Title*/
function getCourseTitle() {
  var course_title = document.querySelectorAll('table td:nth-child(3)');
  return Array.prototype.map.call(course_title, function(e) {
    return e.innerText;
  });
}



/*Function to extract Course Schedule*/
function getSchedule() {
  var schedule = document.querySelectorAll('table td:nth-child(5)');
  return Array.prototype.map.call(schedule, function(e) {
    return e.innerText;
  });
}

/*Start to load url*/
casper.start(url, function() {
  this.echo("Start ...");
});

casper.waitForSelector('#sr', function() {
  console.log('... The page is loaded ...');
});

casper.then(function() {
  instructor = this.evaluate(getInstructor);
});

casper.then(function() {
  schedule = this.evaluate(getSchedule);
});

casper.then(function() {
  course_name_section = this.evaluate(getCourseNameSection);
});

casper.then(function() {
  course_title = this.evaluate(getCourseTitle);
});

casper.then(function() {
  course_id = this.evaluate(getCourseId);
});




/*loop used to extract the information of all the courses*/
casper.then(function() {

  for (index = 0,j=1; index < instructor.length, j<262 ; j++, index++) {
    this.echo("INSERT INTO cscourse (id, semester_year, course_num_section, course_id, course_title, credit_hours, "
    + "instructor, day_time, place) VALUES('"
    + j  + "', '"+ "Spring 2020" + "', '"
    + course_name_section[index] + "','"
    + course_id[index].slice(12,17).trim() + "','"
    + course_title[index].replace(/\s*\(.*?\)\s*/g, '') + "','"
    + course_title[index].replace(/[^()](?=([^()]*\([^()]*\))*[^()]*$)/g, '') + "','"
    + instructor[index] + "','"
    + schedule[index].split('\n')[0] + " " + schedule[index].split('\n')[1] + "','"
    + schedule[index].split('\n')[2] + "');\n")
  }
});

/*exit casper module*/
casper.then(function() {
  this.echo("... Done :) ").exit();
});

/*run casper*/
casper.run();
