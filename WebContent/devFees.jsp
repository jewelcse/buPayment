
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.buPayments.model.Student"
    import="com.buPayments.model.Devfees"
    %>
    <%@include file="header.jsp" %>
     <% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    if(session.getAttribute("currentSessionStudent")!=null  )
    {
    	Student currentUser = (Student)(session.getAttribute("currentSessionStudent"));
    %>
     <style>
.jumbotron {
    margin-left: auto;
    margin-right: auto;
    width: 750px;
    margin-top: 20px;
}
</style>

           
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
var classRoll=document.forms["myForm"]["classRoll"].value;
var regNumber=document.forms["myForm"]["regNumber"].value;
var SSemester=document.forms["myForm"]["SSemester"].value;
var sname=document.forms["myForm"]["sname"].value;
var moname=document.forms["myForm"]["moname"].value;
var faname=document.forms["myForm"]["faname"].value;
var daname=document.forms["myForm"]["daname"].value;
var facaname=document.forms["myForm"]["facaname"].value;

if (classRoll==null || classRoll=="")
  {
 alert("class Roll must be filled out");
  return false;
  }
  
if (regNumber==null || regNumber=="")
  {
 alert("reg Number must be filled out");
  return false;
  }
  
  
if (SSemester==null || SSemester=="null")
{
alert("Semester must be filled out");
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
if (daname==null || daname=="")
{
alert("department must be filled out");
return false;
}

if (facaname==null || facaname=="")
{
alert("faculty must be filled out");
return false;
}

}
</script>
  
  
 <body onLoad="clearForms()" onunload="clearForms()">
  <!--Section: Contact v.2-->
<section class="" >
<div class="jumbotron">
    <!--Section heading-->
    <h2 class="h2-responsive font-weight-bold text-center ">University of Barishal</h2>
    <h6 class="h6-responsive font-weight-bold text-center ">Barishal-8200</h6>
    <h6 class="h6-responsive font-weight-bold text-center">Computer Science & Engineering</h6>
    <h3 class="h3-responsive font-weight-bold text-center my-4">Development Fees Payment Form</h3>

    <div class="row">

        <!--Grid column-->
        <div class="col-md-12 mb-md-0 mb-5  ">
        	
            <form action="devFeesController"  id="myForm" onsubmit="return validateForm()" method="post"  name="myForm">
				
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                     <input type="hidden" id="" name="s_id" class="form-control" value="<%= currentUser.getId() %>">
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="classRoll" name="s_roll" disabled class="form-control" value="<%= currentUser.getS_roll() %>">
                            <label for="classRoll" class="">Class Roll</label>
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="regNumber" name="s_reg" disabled class="form-control" value="<%= currentUser.getS_reg() %>">
                            <label for="regNumber" class="">Registration No.</label>
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <div class="md-form">
                        <div class="md-form mb-0">
                            <select class="browser-default custom-select custom-select-lg mb-3" name="s_semester" id="SSemester">
  								<option value="<%= currentUser.getS_semester() %>"><%= currentUser.getS_semester() %></option>

							</select>
                        </div>
                    </div>
                <!--Grid row-->
                
                <div class="md-form">
                    <input type="text" id="sname" name="s_name" disabled class="form-control" value="<%= currentUser.getS_name() %>">
                    <label for="orangeForm-name" class="">Student's Name</label>
                  </div>
                  
                  <div class="md-form">
                    <input type="text" id="moname" name="s_mother_name" disabled value="<%= currentUser.getS_mother_name() %>" class="form-control">
                    <label for="orangeForm-moname" class="">Mother's Name</label>
                  </div>
                  
                  <div class="md-form">
                    <input type="text" id="faname" name="s_father_name" disabled  value="<%= currentUser.getS_father_name() %>" class="form-control">
                    <label for="orangeForm-faname" class="">Father's Name</label>
                  </div>
                  
                    <div class="md-form">
                  
                    <input type="text" id="daname" name="s_department" disabled value="<%= currentUser.getS_department() %>" class="form-control">
                    <label for="orangeForm-faname" class="">Department Name</label>
                  </div>
                  
                    <div class="md-form">
                    
                    <input type="text" id="facaname" name="s_faculty" disabled value="<%= currentUser.getS_faculty() %>" class="form-control">
                    <label for="orangeForm-faname" class="">Faculty Name</label>
                  </div>

                
           
                <input type="hidden" name ="s_development_fee" value="1600" >
             
                
              
         
            
            
            <!-- Amount table for users -->
            <div class="mt-4">
            <table class="table table-bordered">
  				<thead>
    				<tr>
      					<th scope="col">Sector</th>
     					<th scope="col">Amount</th>
    				</tr>
  				</thead>
  <tbody>
    <tr>
      
      <td>Development Fees</td><!-- বিভাগ উন্নয়ন ফি ,বিবিধ,মোট-->
      <td>600/=</td>
    </tr>
    <tr>
      
      <td>Miscellaneous</td>
      <td>1000/=</td>
    </tr>
    <tr>
    
      <td>Total</td>
      <td>1600/=</td>
    </tr>
   
  </tbody>
</table>
            
            
            </div>
			<!-- Amount table for users -->

            <div class="text-center text-md-right">
                <input type="submit" class="btn btn-primary mdb-color darken-3" value="pay now">
            </div>
            
            </form>
            
            <div class="status"></div>
        </div>
        <!--Grid column-->

      

    </div>
</div>
</section>
<!--Section: Contact v.2-->



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
<%}
else
response.sendRedirect("login.jsp");%>
