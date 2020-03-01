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
			|| session.getAttribute("adminDevelopmentFeesTableController") != null) {
%>
<%@include file="admin-header.jsp"%>


<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
	<li class="breadcrumb-item active">Update Development Fee</li>
</ol>
<% 

//int pageNo = 10 ;

String url = request.getHeader("referer"); /// get the full url

String pageNo=(String)session.getAttribute("currentPage"); 

%>


<div class="col-md-5  m-auto pt-1 pb-3">
	<form method="post" action="adminFeesTableController?edit_fee_type=development_fee&&page=<% out.println(pageNo);%>">
	
	<input type="hidden" name="page" value=<% //out.println(pageNo); %>>
	
		<div class="card">
			<div class="card-body mb-5">
				<div class="form-header  text-center " style="border-radius: 25px;">
					<h3>Update Development Fee</h3>
				</div>
				<div class="md-form">
					<input type="hidden" id="semester" name="id" class="form-control"
						value="${devItem.id}" required>
				</div>
				<div class="md-form">
					<label for="semester" class="">Semester:</label> <input type="text"
						id="semester" name="semester" class="form-control"
						value="${devItem.semester}" readonly>
				</div>
				<div class="md-form">
					<label for="main_fee" class="">Main Fee</label> <input type="text"
						id="main_fee" name="main_fee" class="form-control"
						value="${devItem.main_fee}" required>
				</div>
				<div class="md-form mb-2">
					<label for="misce_fee" class="">Misce_fee</label> <input
						type="text" id="misce_fee" name="misce_fee" class="form-control"
						value="${devItem.misce_fee}" required>
				</div>
				<div class="md-form mb-2">
					<label for="date" class="">Start date</label> <input type="date"
						name="start_date" value="${devItem.start_date}" required>
				</div>
				<div class="md-form mb-2">
					<label for="date" class="">End date</label> <input type="date"
						name="end_date" value="${devItem.end_date}" required>
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