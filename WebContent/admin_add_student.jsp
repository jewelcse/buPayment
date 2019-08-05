
  
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>devFees</title>
<!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="assets/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <style>
    body {
        box-sizing: border-box;
    }
</style>
</head>
<body>

	<!--Main Navigation-->
  <header>
  
    <!--Navbar some color 'peach-gradient' 'purple-gradient' 'aqua-gradient' 'blue-gradient'-->
    <nav class="navbar navbar-expand-lg navbar-dark   mdb-color darken-3 py-4 mb-4 font-weight-bold z-depth-1" >

      <!-- Additional container -->
      <div class="container">

        <!-- Navbar brand -->
        <a class="navbar-brand" href="#">BUPayments</a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          
          
          <ul class="navbar-nav ml-auto">
          
          
          
          </ul>
          <!-- Links -->
          
          
          
          
  </div>

        </div>
        <!-- Collapsible content -->

      </div>
      <!-- Additional container -->

    </nav>
    <!--/.Navbar-->

  </header>
  <!--Main Navigation-->
  
             <script>
function clearForms()
{
  var i;
  for (i = 0; (i < document.forms.length); i++) {
    document.forms[i].reset();
  }
}
function validateForm()
{
var roll=document.forms["myForm"]["sroll"].value;
var reg=document.forms["myForm"]["sreg"].value;
var semester=document.forms["myForm"]["ssemester"].value;
var sname=document.forms["myForm"]["sname"].value;
var moname=document.forms["myForm"]["moname"].value;
var faname=document.forms["myForm"]["faname"].value;
var daname=document.forms["myForm"]["sdepartment"].value;
var faculty=document.forms["myForm"]["sfaculty"].value;
var email=document.forms["myForm"]["semail"].value;
var phone=document.forms["myForm"]["sphone"].value;
var pass=document.forms["myForm"]["spass"].value;

if (roll==null || roll=="")
  {
 alert("class Roll must be filled out");
  return false;
  }
  
if (reg==null || reg=="")
  {
 alert("reg Number must be filled out");
  return false;
  }
  
  

if (sname==null || sname=="")
{
alert("student name must be filled out");
return false;
}
if (moname==null || moname=="")
{
alert("mother name must be filled out");
return false;
}
if (faname==null || faname=="")
{
alert("father name must be filled out");
return false;
}

if (email==null || email=="")
{
alert("email must be filled out");
return false;
}

if (faculty==null || faculty=="")
{
alert("faculty must be filled out");
return false;
}

if (daname==null || daname=="")
{
alert("department must be filled out");
return false;
}

if (phone==null || phone=="")
{
alert("phone must be filled out");
return false;
}


if (semester==null || semester=="")
{
alert("Semester must be filled out");
return false;
}




if (pass==null || pass=="")
{
alert("password must be filled out");
return false;
}

}
</script>
  
  
 <body onLoad="clearForms()" onunload="clearForms()">
  <!--Main Navigation-->
	 <div class="row">

    <!--Grid column-->
        <div class="col-md-5  m-auto">
        	
            <form id="myForm" onsubmit="return validateForm()" method="post"  name="myForm" action="addStudentController">
            
                
               
                
                <div class="card wow fadeIn animated" data-wow-delay="0.3s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.3s;">
                

                 
                  
			<div class="card-body m-4">
			 <!-- Header -->
                  <div class="form-header mdb-color darken-3 text-center " style="border-radius: 25px;">
                    <h3 class="font-weight-500 my-2 py-1 text-light">Add New Student</h3>
                  </div>
                  <!-- Body -->
                  <div class="md-form">
                    <i class="far fa-user prefix "></i>
                    <input type="text" id="sroll" name="s_roll" class="form-control">
                    <label for="sroll" class="">Roll no</label>
                  </div>
                  
                  <div class="md-form">
                    <i class="far fa-user prefix "></i>
                    <input type="text" id="sreg" name="s_reg" class="form-control">
                    <label for="sreg" class="">Reg no</label>
                  </div>
                  
                    <div class="md-form">
                    <i class="far fa-user prefix "></i>
                    <input type="text" id="sname" name="s_name" class="form-control">
                    <label for="sname" class="">Student's Name</label>
                  </div>
                  
                  <div class="md-form">
                    <i class="far fa-user prefix "></i>
                    <input type="text" id="moname" name="s_mother_name" class="form-control">
                    <label for="moname" class="">Mother's Name</label>
                  </div>
                  
                  <div class="md-form">
                    <i class="far fa-user prefix "></i>
                    <input type="text" id="faname" name="s_father_name" class="form-control">
                    <label for="faname" class="">Father's Name</label>
                  </div>
                 
           
                  <div class="md-form">
                    <i class="far fa-envelope prefix"></i>
                    <input type="text" id="semail" name="s_email" class="form-control">
                    <label for="semail" class="">Your email</label>
                  </div>
                  
                    <div class="md-form">
                        <div class="md-form mb-0">
                            <select id="sfaculty" class="browser-default custom-select custom-select-lg mb-3" name="s_faculty">
  								<option selected>Faculty Name</option>
 								 <option value="Science & Engineering">Science & Engineering</option>
  								<option value="Bio-Sciences">Bio-Sciences</option>
  								<option value="Business Studies">Business Studies</option>
  								<option value="Arts and Humanities">Arts and Humanities</option>
  								<option value="Social Sciences">Social Sciences</option>
  								<option value="Law">Law</option>
							</select>
                        </div>
                    </div>
                    
                    <div class="md-form">
                        <div class="md-form mb-0">
                            <select id="sdepartment" class="browser-default custom-select custom-select-lg mb-3" name="s_department">
  								<option selected>Department Name</option>
 								 <option value="Computer Science & Engineering">Computer Science & Engineering</option>
  								<option value="Mathematics">Mathematics</option>
  								<option value="Chemistry">Chemistry</option>
  								<option value="Physics">Physics</option>
  								<option value="Geology and Mining">Geology and Mining</option>
  								<option value="Soil & Environmental Science">Soil & Environmental Science</option>
  								<option value="Botany">Botany</option>
  								<option value="Coastal Studies & Disaster Management">Coastal Studies & Disaster Management</option>
  								<option value="Biochemistry & Biotechnology">Biochemistry & Biotechnology</option>
  								<option value="Management Studies">Management Studies</option>
  								<option value="Accounting & Information System">Accounting & Information System</option>
  								<option value="Marketing">Marketing</option>
  								<option value="Finance & Banking">Finance & Banking</option>
  								<option value="Economics">Economics</option>
  								<option value="Political Science">Political Science</option>
  								<option value="Sociology">Sociology</option>
  								<option value="Public Administration">Public Administration</option>
  								<option value="Bangla">Bangla</option>
  								<option value="English">English</option>
  								<option value="Philosophy">Philosophy</option>
  								<option value="Mass Communication & Journalism">Mass Communication & Journalism</option>
  								<option value="History & Civilization">History & Civilization</option>
  								<option value="Law">Law</option>
  								
							</select>
                        </div>
                    </div>
                    
                     <div class="md-form">
                        <div class="md-form mb-0">
                            <select id="ssemester" class="browser-default custom-select custom-select-lg mb-3" name="s_semester">
  								<option selected>Semester</option>
 								<option value="1st">1<sup>st</sup></option>
  								<option value="2nd">2<sup>nd</sup></option>
  								<option value="3th">3<sup>rd</sup></option>
  								<option value="4th">4<sup>th</sup></option>
  								<option value="5th">5<sup>th</sup></option>
  								<option value="6th">6<sup>th</sup></option>
  								<option value="7th">7<sup>th</sup></option>
  								<option value="8th">8<sup>th</sup></option>
							</select>
                        </div>
                    </div>
                    
                    
                    
                    
                     <div class="md-form">
                    	<i class="fas fa-lock prefix"></i>
                    	<input type="number" id="sphone" name="s_phone" class="form-control" >
                    	<label for="sphone" class="">Phone No</label>
                 	</div>
                    
                    
                    

             
                  <div class="text-center">
                   <input type="submit" value="Add record" class="btn btn-primary mdb-color darken-3">
                    
                   </div>      
     		  </div>
<!-- Jumbotron -->
		</div>

		</form>
	</div>
</div>



  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="assets/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="assets/js/mdb.min.js"></script>
</body>
</html>

<br><br>
<%@include file="footer.jsp" %>
/html>