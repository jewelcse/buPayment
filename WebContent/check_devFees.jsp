<%@page import="com.buPayments.controller.* "%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.buPayments.model.*"
	import="com.buPayments.model.Devfees"
	import="com.buPayments.controller.*"
	import="java.util.ArrayList"
	
	%>
	
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>


<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionStudent") != null) {
		Student currentUser = (Student) (session
				.getAttribute("currentSessionStudent"));
%>
<style>
.jumbotron {
	
	margin-top: 20px;
}

.mySelector:nth-child(odd) {
  padding:10px;
  color: white;
  margin:20px;
  background-color: green;
  border-color: #c3e6cb;
  border:1px solid red;
  border-radius:20px;
  box-shadow: 5px 5px;
  opacity: 0.6;
  transition: 0.5s;
  
}

.mySelector:nth-child(even) {
  padding:10px;
  color: #004085;
  background-color: #cce5ff;
  border-color: #b8daff;
  border-radius:20px;
  box-shadow: 10px 10px;
  opacity: 0.6;
  transition: 0.5s;
}

.mySelector:hover{
opacity: 1.5;
}
</style>

<script>

var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
var yyyy = today.getFullYear();

today = dd + '/' + mm + '/' + yyyy;


function compare(dateTimeA, currentTime , dateTimeB) {
    if (dateTimeA < currentTime  && currentTime < dateTimeB  ) return right;
    else if (dateTimeA <  currentTime&& currentTime > dateTimeB ) return wrong;
    else return 0;
}



</script>

<%
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
  String current_date = sdf.format(new Date());
  
  

%>

	


<body onLoad="clearForms()" onunload="clearForms()">
	<div class="contain">
		<div class="row">
			<div class="jumbotron mt-4 ml-5">
			
				<h2 class="h2-responsive font-weight-bold text-center ">University
				of Barishal</h2>
				<h6 class="h6-responsive font-weight-bold text-center ">Barishal-8200</h6>
				<h6 class="h6-responsive font-weight-bold text-center">Computer
				Science & Engineering</h6>
				<p class="text-center ">(<strong>Checking validity</strong>)</p>
			
			<form action="checkValidityController" method="get">
						<div class="md-form">
							<div class="md-form mb-0">
								<select onchange="selected()"
									class="browser-default custom-select custom-select-lg mb-3"
									name="fee_type" id="fee_type">
									<option value="null">Select</option>
									<option value="devfee">Development Fee</sup></option>
									<option value="semfee">Semester fee</option>
									<option value="formfee">FormFill Up fee</option>
								</select>
							</div>
						</div>
						
						<div class="md-form">
							<div class="md-form mb-0">
								<select onchange="selected()"
									class="browser-default custom-select custom-select-lg mb-3"
									name="semester" id="semester">
									<option value="null">Select semester</option>
									<option value="1st">1<sup>st</sup></option>
									<option value="2nd">2<sup>nd</sup></option>
									<option value="3rd">3<sup>rd</sup></option>
									<option value="4th">4<sup>th</sup></option>
									<option value="5th">5<sup>th</sup></option>
									<option value="6th">6<sup>th</sup></option>
									<option value="7th">7<sup>th</sup></option>
									<option value="8th">8<sup>th</sup></option>
								</select>
							</div>
						</div>
						

						<div class="text-center text-md-right">
							<input type="submit" class="btn btn-primary"
								value="Click here ">
						</div>

					</form>
				</div>
				
				<div class="col-md-8">
					<div class="jumbotron mt-4">	

					<ul class="nav nav-tabs" id="myTab" role="tablist">
  						<li class="nav-item">
    						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
      							aria-selected="true">Development Fees</a>
  						</li>
  						<li class="nav-item">
    						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
    							  aria-selected="false">Semester Fees</a>
  						</li>
  						<li class="nav-item">
    						<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
    							  aria-selected="false">Form Fill up Fees</a>
  						</li>
					</ul>
				<div class="tab-content" id="myTabContent">
  					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  
  
  <%
			
			adminDevelopmentFeesTableController dev = new adminDevelopmentFeesTableController();
			
			ArrayList<adminDevelopmentFeesTable> devitem = new ArrayList<adminDevelopmentFeesTable>();
			devitem = dev.showDevelopmentFeesTable();

			for (int i = 0; i < devitem.size(); i++){   %>
			
						

	<%
  							
 if((current_date.compareTo(devitem.get(i).getStart_date()) > 0 && current_date.compareTo(devitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(devitem.get(i).getStart_date()) == 0 || current_date.compareTo(devitem.get(i).getEnd_date())==0)){
	 
	 out.println(" <div style='background-color: #007E33;color:white;padding:10px;border-color: green; border-radius:20px; border:2px solid green; margin:5px; '>"+ devitem.get(i).getSemester()+" Start Date:" + devitem.get(i).getStart_date()+" End Date: " + devitem.get(i).getEnd_date()+" ============= > <img style='width:200px' src='images/iprogress.gif'>");
 }
 else{
	 out.println(" <div style='background-color: #ff4444;color:white;padding:10px;border-color: red; border-radius:20px; border:2px solid red; margin:5px;  '> "+ devitem.get(i).getSemester()+" Start Date:"+ devitem.get(i).getStart_date()+" End Date: "+ devitem.get(i).getEnd_date()+" ============= > <img style='width:200px' src='images/time_up.gif'>");
 }
  							
%>


						</div>
								<%} %>
  
  				</div>
  				
  				
  				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
  
  
  
  
  
  <%
			
  adminSemesterFeesTableController sem = new adminSemesterFeesTableController();
			
			ArrayList<adminSemesterFeesTable> semitem = new ArrayList<adminSemesterFeesTable>();
			semitem = sem.showSemesterFeesTable();

			for (int i = 0; i < semitem.size(); i++){   %>
			
<%
  							
 if((current_date.compareTo(semitem.get(i).getStart_date()) > 0 && current_date.compareTo(semitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(semitem.get(i).getStart_date()) == 0 || current_date.compareTo(semitem.get(i).getEnd_date())==0)){
	 
	 out.println(" <div style='background-color: #007E33;color:white;padding:10px;border-color: green; border-radius:20px; border:2px solid green; margin:5px;'>"+ semitem.get(i).getSemester()+" Start Date:" + semitem.get(i).getStart_date()+" End Date: " + semitem.get(i).getEnd_date()+" ============= > <img style='width:200px' src='images/iprogress.gif'>");
 }
 else{
	 out.println(" <div style='background-color: #ff4444;color:white;padding:10px;border-color: red; border-radius:20px; border:2px solid red; margin:5px; '> "+ semitem.get(i).getSemester()+" Start Date:"+ semitem.get(i).getStart_date()+" End Date: "+ semitem.get(i).getEnd_date()+" ============= > <img style='width:200px' src='images/time_up.gif'>");
 }
  							
%>						
  						
  						
  						
  						
  						
  						
  						
  						
  						
  						</strong> 
					</div>
								<%} %>
  				</div>
  				
  				
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
  
  
  <%
			
  adminFormFillUpFeesTableController formfillup = new adminFormFillUpFeesTableController();
			
			ArrayList<adminFormFillUpFeesTable> formfillupitem = new ArrayList<adminFormFillUpFeesTable>();
			formfillupitem = formfillup.showFormFillUpFeesTable();

			for (int i = 0; i < formfillupitem.size(); i++){   %>
			
<%
  							
 if((current_date.compareTo(formfillupitem.get(i).getStart_date()) > 0 && current_date.compareTo(formfillupitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(formfillupitem.get(i).getStart_date()) == 0 || current_date.compareTo(formfillupitem.get(i).getEnd_date())==0)){
	 
	 out.println(" <div style='background-color: #007E33;color:white;padding:10px;border-color: green; border-radius:20px; border:2px solid green; margin:5px;'>"+ formfillupitem.get(i).getSemester()+" Start Date:" + formfillupitem.get(i).getStart_date()+" End Date: " + formfillupitem.get(i).getEnd_date()+" ============= > <img style='width:200px' src='images/iprogress.gif'>");
 }
 else{
	 out.println(" <div style='background-color: #ff4444;color:white;padding:10px;border-color: red; border-radius:20px; border:2px solid red; margin:5px;'> "+ formfillupitem.get(i).getSemester()+" Start Date:"+ formfillupitem.get(i).getStart_date()+" End Date: "+ formfillupitem.get(i).getEnd_date()+" ============= > <img style='width:200px' src='images/time_up.gif'>");
 }
  							
%>								
  							
  							
  							
  							
  							
  							
  							
  							
  							</strong>
						</div>
								<%} %>
  

  
  
  
  
  
  			</div>
	</div>


					
			
				
				
				
				<div>
			</div>
		</div>
	</div>
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
<br>
<br>

<%
	} else{
		response.sendRedirect("login.jsp");
	
	}
%>
<%@include file="footer.jsp"%>