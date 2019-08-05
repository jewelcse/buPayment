<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.buPayments.model.Student"
    %>
    
     <% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    if(session.getAttribute("currentSessionStudent")!=null)
    {
    	
    Student currentUser = (Student)(session.getAttribute("currentSessionStudent"));
    
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
</style>
</head>
<body>

	<!--Main Navigation-->
  <header>
  
    <!--Navbar some color 'peach-gradient' 'purple-gradient' 'aqua-gradient' 'blue-gradient'-->
    <nav class="navbar navbar-expand-lg navbar-dark   mdb-color darken-3 py-4 font-weight-bold z-depth-1" >

      <!-- Additional container -->
      <div class="container">

        <!-- Navbar brand -->
        <a class="navbar-brand" href="index.jsp">BUPayments</a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Links -->
          <ul class="navbar-nav">
            <li class="nav-item ">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">add Student</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>

            <!-- Dropdown -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">Services</a>
              <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="devFees.jsp">Development Fees</a>
                <a class="dropdown-item" href="semesterFees.jsp">Semester Fees</a>
                <a class="dropdown-item" href="formFillUp.jsp">Form Fill-up Fees</a>
              </div>
            </li>
          </ul>
          
          <ul class="navbar-nav ml-auto">
          
          <li class="nav-item">
            <a class="nav-link waves-effect waves-light" href="stu_profile.jsp">
              <i class="fas fa-sign-in-alt"></i> 
              
              
              <%= currentUser.getS_name() %>
              
                    
              
              </a>
          </li>
          
           <li class="nav-item">
            <a class="nav-link waves-effect waves-light" href="logoutController">
              <i class="fas fa-sign-in-alt"></i> 
              
              
             Logout
              
                    
              
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
              
           <%   }
    
    else{ %>
    
  
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
  <link rel="icon" type="image/png" href="images/s_icon.png" />
  
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
    <nav class="navbar navbar-expand-lg navbar-dark   mdb-color darken-3 py-4 font-weight-bold z-depth-1" >

      <!-- Additional container -->
      <div class="container">

        <!-- Navbar brand -->
        <a class="navbar-brand" href="index.jsp">BUPayments</a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Links -->
          <ul class="navbar-nav">
            <li class="nav-item ">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Payment Methods</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>

            <!-- Dropdown -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">Services</a>
              <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="devFees.jsp">Development Fees</a>
                <a class="dropdown-item" href="semesterFees.jsp">Semester Fees</a>
                <a class="dropdown-item" href="formFillUp.jsp">Form Fill-up Fees</a>
              </div>
            </li>
          </ul>
          
          <ul class="navbar-nav ml-auto">
          
          <li class="nav-item">
            <a class="nav-link waves-effect waves-light" href="login.jsp">
              <i class="fas fa-sign-in-alt"></i> 
              Login
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
    	
   <% }%> 


           
        





