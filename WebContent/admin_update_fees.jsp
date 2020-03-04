
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null
			|| session.getAttribute("admin_update_fees") != null) {
%>

<%@include file="admin-header.jsp"%>





<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">Update Dev Fee</li>
</ol>


<div class="container">
	<div class="row">
		<div class="col-md-6">
			<form class="form-controll"
				action="adminFeesManageController?type=update_development_fee"
				method="post">

				<div class="md-form mb-2">
					<input type="text" id="roll" name="roll" class="form-control"
						placeholder="Roll No." required>
				</div>

				<div class="md-form">
					<div class="md-form mb-0">
						<select id="ssemester"
							class="browser-default custom-select custom-select-lg mb-3"
							name="ssemester" required>
							<option selected>Semester</option>
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

				<div class="md-form mb-2">
					<input type="text" id="changed_amount" name="changed_amount"
						class="form-control" placeholder="Amount..." required>
				</div>


				<div class="text-center">
					<input type="submit" class="btn btn-primary"
						value="Click to change">
				</div>
			</form>
		</div>

		<div class="col-md-6">
			<table class="table table-bordered table-hover  " id="myTable"
				border="2px solid black">
				<tr>
					<th>Roll No</th>
					<th>Semester</th>
					<th>Changed Amount</th>
				</tr>


				<c:forEach items="${changed_fees_list}" var="list">
					<tr>
						<td><c:out value=" ${list.getRoll()}" /></td>
						<td><c:out value=" ${list.getSemester_name()}" /></td>
						<td><c:out value=" ${list.getChanged_amount()}" /></td>
					</tr>
				</c:forEach>
			</table>

		</div>
	</div>
</div>

<%@include file="admin-footer.jsp"%>
<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>