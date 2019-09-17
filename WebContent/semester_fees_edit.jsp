
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.buPayments.model.Admin"
	import="com.buPayments.model.adminSemesterFeesTable"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"
	
	%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionAdmin") != null) {
%>
<%@include file="admin-header.jsp"%>

<div class="container">
	<div class="row">

		
			
		
		<!--Grid column-->
		<div class="col-md-5  m-auto pt-3 pb-3">

			<form id="myForm" onsubmit="return validateForm()" method="post"
				name="myForm" action="#">

				<div class="card wow fadeIn animated" data-wow-delay="0.3s"
					style="visibility: visible; animation-name: fadeIn; animation-delay: 0.3s;">

					<div class="card-body mb-5">
						<!-- Header -->
						<div class="form-header  text-center "
							style="border-radius: 25px;">
							<h3 class="font-weight-500 my-2 py-1 text-light" style="border-radius: 25px;
    background-color: #008000; color:white">Update Semester Fees Table</a></h3>
						</div>
						
						<!-- Body -->
						<div class="md-form">
							<input type="text" id="semester"
								name="semester" class="form-control" value="" required> <label for="semester"
								class="">Semester:</label>
						</div>

						<div class="md-form">
							<input type="text" id="main_fee"
								name="main_fee" class="form-control" required> <label for="main_fee"
								class="">Main Fee</label>
						</div>

						<div class="md-form">
							<input type="text" id="misce_fee"
								name="misce_fee" class="form-control" required> <label for="misce_fee"
								class="">Misce_fee</label>
						</div>

						<div class="md-form">
							<input type="date" name="start_date" required> 
							<label for="date" class="">Start date</label>
						</div>
						<div class="md-form">
							<input type="date" name="end_date" required> 
							<label for="date" class="">End date</label>
						</div>
						
						<button class="btn ">
						<a href='semester_fees_edit.jsp?Edit_id='>Update</a>
					</button>
					
						</div>
					</div>
				</form>
			</div>
			
		</div>
</div>
			
				
	

		


<%} else{ %>


<%@include file="admin-login.jsp"%>

<%} %>

<%@include file="admin-footer.jsp"%>