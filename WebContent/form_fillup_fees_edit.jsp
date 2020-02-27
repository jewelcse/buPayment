
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.model.adminSemesterFeesTable"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null
			|| session.getAttribute("adminFormFillUpFeesTableController") != null) {
%>
<%@include file="admin-header.jsp"%>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
	<li class="breadcrumb-item active">Update Form Fillup Fee</li>
</ol>



<!--Grid column-->
<div class="col-md-5  m-auto pt-1 pb-3">

	<form method="post" action="adminFeesTableController?edit_fee_type=formfillup_fee">

		<div class="card">

			<div class="card-body mb-5">
				<!-- Header -->
				<div class="form-header  text-center " style="border-radius: 25px;">
					<h3>Update Form Fillup Fee</h3>
				</div>

				<!-- Body -->

				<div class="md-form">

					<input type="hidden" id="semester" name="id" class="form-control"
						value="${formItem.id}" required>
				</div>

				<div class="md-form">
					<label for="semester" class="">Semester:</label> <input type="text"
						id="semester" name="semester" class="form-control"
						value="${formItem.semester}" readonly>
				</div>

				<div class="md-form">
					<label for="main_fee" class="">Main Fee</label> <input type="text"
						id="main_fee" name="main_fee" class="form-control"
						value="${formItem.main_fee}" required>
				</div>

				<div class="md-form mb-2">
					<label for="misce_fee" class="">Misce_fee</label> <input
						type="text" id="misce_fee" name="misce_fee" class="form-control"
						value="${formItem.misce_fee}" required>
				</div>

				<div class="md-form mb-2">
					<label for="date" class="">Start date</label> <input type="date"
						name="start_date" value="${formItem.start_date}" required>

				</div>
				<div class="md-form mb-2">
					<label for="date" class="">End date</label> <input type="date"
						name="end_date" value="${formItem.end_date}" required>

				</div>


				<input type="submit" class="btn btn-primary" value="Update">


			</div>
		</div>
	</form>
</div>




<%@include file="admin-footer.jsp"%>



<%
	} else {
%>


<%@include file="admin-login.jsp"%>

<%
	}
%>
