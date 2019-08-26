
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
    }        header {
    background-color: #b1040e;
    
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

        <!-- Navbar brand -->
        <a class="navbar-brand" href="#"><span class="licolor">Bupayments</span></a></a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Links -->
          <ul class="navbar-nav">
           
           

         
          <ul class="navbar-nav ">
          
         
          
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
var x=document.forms["myForm"]["admin"].value;
if (x==null || x=="")
  {
 alert("admin must be filled out");
 // document.getElementById('email').focus();
  return false;
  }
var y=document.forms["myForm"]["password"].value;
if (y==null || y=="")
  {
 alert("password must be filled out");
  //document.getElementById('password').focus();
  return false;
  }
}
</script>

<body onLoad="clearForms()" onunload="clearForms()">

	<!--Main Navigation-->
  
	 <div class="row"  >

    <!--Grid column-->
        <div class="col-md-4 m-auto pt-4">
        	
            <form id="myForm"action="adminController" onsubmit="return validateForm()" method="post"  name="myForm">
            
                
               
                
                <div class="card wow fadeIn animated" data-wow-delay="0.3s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.3s;">
                

                 
                  
			<div class="card-body m-5">
			 <!-- Header -->
                  <div class="form-header  text-center "  style="border-radius: 25px;
    background-color: #b1040e;" >
                    <h3 class="font-weight-500 my-2 py-1 text-light">Admin Login</h3>
                  </div>
                  

                  <div class="md-form">
                    <i class="far fa-envelope prefix"></i>
                    <input type="text"  name="admin" id="admin" class="form-control">
                    <label for="admin" class="">Admin Name</label>
                  </div>

                  <div class="md-form">
                    <i class="fas fa-lock prefix"></i>
                    <input type="password" name="password" id="password" class="form-control">
                    <label for="password" class="">Admin password</label>
                  </div>

                  <div class="text-center">
                    
                    <input type="submit" class="btn  waves-effect waves-light" style="border-radius: 25px;
    background-color: #b1040e; color:white" value="Login" > 
                    
                   
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




