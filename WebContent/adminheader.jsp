<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.buPayments.model.Admin"
    %>
    
     <% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    //if(session.getAttribute("currentSessionAdmin")!=null)
    //{
    	
    Admin currentAdmin = (Admin)(session.getAttribute("currentSessionAdmin"));
    
    %>
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
         header {
    background-color: #008000;
    
	}
	.licolor{
	color:white
	}
</style>
</head>
<body>

	<!--Main Navigation-->
  <header>
  <!--Navbar some color 'peach-gradient' 'purple-gradient' 'aqua-gradient' 'blue-gradient'-->
    <nav class="navbar navbar-expand-lg  py-4 font-weight-bold z-depth-1" >

      <!-- Additional container -->
      <div class="container">
 <a class="navbar-brand" href="admin_index.jsp"><span class="licolor">Bupayments</span></a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span style="color:white''" class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Links -->
          <ul class="navbar-nav">
             <li class="nav-item">
              <a class="nav-link" href="admin_add_student.jsp"><span class="licolor">Add Student</span></a>
            </li>
			 <li class="nav-item">
              <a class="nav-link" href="adminShowStudentsController"><span class="licolor">Show all Student</span></a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="admin_update_fees.jsp"><span class="licolor">Update fees</span></a>
            </li>
            
              <!-- Dropdown -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false"><span class="licolor">Set Time</span></a>
              <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="adminDevelopmentFeesTableController">Development Fees</a>
                <a class="dropdown-item" href="adminSemesterFeesTableController">Semester Fees</a>
                <a class="dropdown-item" href="adminFormFillUpFeesTableController">Form Fill-up Fees</a>
              </div>
            </li>
           
          </ul>
          
          <ul class="navbar-nav ml-auto">
          
       
          
           <li class="nav-item">
            <a class="nav-link waves-effect waves-light" href="adminLogout">
               
              
              
             <span class="licolor">Logout</span>
              
                    
              
              </a>
          </li>
          	 
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
              
           <%  // }
    
   // else{ %>
    

    	
   <%// }%> 


           
        





