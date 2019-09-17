<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Student"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	session.getAttribute("currentSessionStudent");
	Student currentUser = (Student) (session.getAttribute("currentSessionStudent"));
%>
<style>
.cover-img{
	width:100%;
}

</style>

<body>


	<section class="col-md-8 m-auto pt-4">
		<div class="jumbotron" id="application">

				<h2 class="h6-responsive font-weight-bold text-center">Application Form</h2>
			
			<form action="devFeesController?devfees_id=application_form" method="post">
			
			<p style="font-size:20px">
			
			<p>I am 
				<div class="md-form ">
  					<input type="text" name="s_name" class="form-control" value="<%=currentUser.getS_name()%>" readonly > 
				</div>
			bearing roll no:
			<div class="md-form ">
  					<input type="text" name="s_roll" class="form-control" value="<%=currentUser.getS_roll()%>" readonly >  
			</div>
			
			
			  studying in 
			 <input type="hidden" name="id" value="<%=currentUser.getId()%>">
			 <div class="md-form ">
  					 <input type="text" name="semester" class="form-control" placeholder="Enter your semester" required> 
			</div>
			 
			 
			
			 at the department of 
			  <div class="md-form ">
  					 <input type="text" name="s_dept" class="form-control" value="<%=currentUser.getS_department()%>" readonly >
			</div>
			 
			  
			University of Barishal.
			<p>
			Application for
			
			<input type="checkbox" name="subject" value="reducing amount">reducing amount /
			<input type="checkbox" name="subject2" value="extending time" >extending time for the  
			</p>
			<p>
			<input type="radio" name="feetype" value="Development fee " >Development fee 
			<input type="radio" name="feetype" value="Semester fee ">Semester fee 
			<input type="radio" name="feetype" value="Form Fill up fee ">Form Fill up fee .
			 </p>
			 <p>
			 My problem is
			 </p>
			 <div class="md-form mb-4 pink-textarea active-pink-textarea">
 				 <textarea id="reason" name="reason" class="md-textarea form-control" rows="3"></textarea>
  					
				</div>
		


						<div class="text-center text-md-right">
							<input type="submit" class="btn btn-primary"
								value="Submit Form">
						</div>

			</form>

			
		</div>
							

	</section>

</body>

<br><br>
<%@include file="footer.jsp" %>