
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionAdmin") != null) {
%>
<%@include file="adminheader.jsp"%>
<div class="container">
	<div class="row ml-5 mt-5">

		<h1>Admin Panel</h1>


	</div>


</div>
<%@include file="adminfooter.jsp" %>
<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>
