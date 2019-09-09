
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Student"
	import="com.buPayments.model.Devfees"
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
	margin-left: auto;
	margin-right: auto;
	width: 750px;
	margin-top: 20px;
}
</style>



<body onLoad="clearForms()" onunload="clearForms()">
	<!--Section: Contact v.2-->
	<section class="">
		<div class="jumbotron">
			<!--Section heading-->
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

					<div class="status"></div>
				</div>
				<!--Grid column-->



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
<br>
<br>
<%@include file="footer.jsp"%>
<%
	} else{
		response.sendRedirect("login.jsp");
	
	}
%>
