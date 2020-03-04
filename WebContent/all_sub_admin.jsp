<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" 
	import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null) {
%>

<%@include file="admin-header.jsp"%>


<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

a {
	text-decoration: none !important;
}

.adbtnBox {
	border: 2px solid black;
	width: 210px;
	margin-bottom:3px;
}

.adbtn {
	padding: 5px;
}
</style>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">All Sub-Admin</li>
</ol>



<div class="row ml-5 mt-5">


	<div class="col-md-12">

		<div class="adbtnBox">
			<div class="adbtn">
				<a href="adminController?target=new_admin_create"><img
				src="images/plus.png" style="width: 35px"> Add new Sub Admin</a>
			</div>
		</div>
		<% //request.setAttribute("error", "Duplicate Entity found!");
		
		
		
		
		
		%>

		<table class="table" border="2px solid black">
			<thead>
				<tr>
					<th>Admin name</th>
					<th>Password</th>
					<th>Update Development Fee</th>
					<th>Students Information</th>
					<th>Applications Letters</th>
					<th>Update Development Fees Table</th>
					<th>Update Semester Fees Table</th>
					<th>Update Form fill up Fees Table</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach items="${sub_admin_list}" var="list">
					<tr>
						<td ><c:out value=" ${list.getName()}" /></td>
						<td><c:out value=" ${list.getPassword()}" /></td>
						<td class="text-center"><c:out value=" ${list.getItem1()}" /></td>
						<td class="text-center"><c:out value=" ${list.getItem2()}" /></td>
						<td class="text-center"><c:out value=" ${list.getItem3()}" /></td>
						<td class="text-center"><c:out value=" ${list.getItem4()}" /></td>
						<td class="text-center"><c:out value=" ${list.getItem5()}" /></td>
						<td class="text-center"><c:out value=" ${list.getItem6()}" /></td>
						<td class="text-center"><a class="btn btn-primary"
							href="adminController?target=delete&&delete_id=<c:out value=" ${list.getId()}" />">Delete</a>
						</td>						
					</tr>
				</c:forEach>
				
			</tbody>

		</table>

	</div>

</div>


		
<%@include file="admin-footer.jsp"%>

<%
	} else {

		response.sendRedirect("admin-login.jsp");

	}
%>
