
<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.buPayments.model.Student"
    %>
    
     <% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    if(session.getAttribute("currentSessionStudent")==null)
    {
    	
    Student currentUser = (Student)(session.getAttribute("currentSessionStudent"));
    
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
var x=document.forms["myForm"]["email"].value;
if (x==null || x=="")
  {
 alert("email must be filled out");
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
        	
            <form id="myForm"action="logInController" onsubmit="return validateForm()" method="post"  name="myForm">
            
                
               
                
                <div class="card wow fadeIn animated" data-wow-delay="0.3s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.3s;">
                

                 
                  
			<div class="card-body m-5">
			 <!-- Header -->
                  <div class="form-header  text-center " style="border-radius: 25px;
    background-color: #b1040e;" >
                    <h3 class="font-weight-500 my-2 py-1 text-light">Login</h3>
                  </div>
                  

                  <div class="md-form">
                    <i class="far fa-envelope prefix"></i>
                    <input type="text" id="orangeForm-email" name="student_id" id="student_id" class="form-control">
                    <label for="orangeForm-email" class="">Your Student Id</label>
                  </div>

                  <div class="md-form">
                    <i class="fas fa-lock prefix"></i>
                    <input type="password" id="orangeForm-pass" name="password" id="password" class="form-control">
                    <label for="orangeForm-pass" class="">Your password</label>
                  </div>

                  <div class="text-center">
                    
                    <input type="submit" class=" btn waves-effect text-light" value="Login" style="border-radius: 25px;
    background-color: #b1040e; color:white"> 
                    
                    <p class="mt-4">Don't Have an Id / password ! <br>Please Contact our Office Room</p>
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

<% }

    else{ %>
    	
    	<div class="col-md-6  mt-5">
    	
    	<h1>Already logedIn !!</h1>
    	</div>
    	<br><br>
<%@include file="footer.jsp" %>
    	
<%     }

%> 
