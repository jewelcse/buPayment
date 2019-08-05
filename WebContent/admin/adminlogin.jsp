<%@include file="adminheader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>

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
                  <div class="form-header mdb-color darken-3 text-center " style="border-radius: 25px;" >
                    <h3 class="font-weight-500 my-2 py-1 text-light">Login</h3>
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
                    
                    <input type="submit" class="btn  btn-primary  mdb-color darken-3 waves-effect waves-light" value="Login" > 
                    
                   
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




