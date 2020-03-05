
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.model.adminDevelopmentFeesTable"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList" import="java.sql.Connection"
	import="java.sql.PreparedStatement" import="java.sql.ResultSet"
	import="java.sql.SQLException" import="java.sql.Statement"
	import="java.text.ParseException"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null
			|| session.getAttribute("adminDevelopmentFeesTableController") != null) {
%>


<%@include file="admin-header.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">Development Fees</li>
</ol>


<section class="p-1">
	<h3 class="inline">
		<u>Development Fees Table</u>
	</h3>

	<table class="order-table table table-hover" border="2px solid black">
		<thead>
			<tr>
				<th>Department</th>
				<th>Semester</th>
				<th>Main Fee</th>
				<th>Misce Fee</th>
				<th>Start date</th>
				<th>End Date</th>
				<th>Action</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${development_fees_list}" var="list">
				<tr>
					<td><c:out value="${list.getDeptName()}" /></td>
					<td><c:out value=" ${list.getSemester()}" /></td>
					<td><c:out value=" ${list.getMain_fee()}" /></td>
					<td><c:out value=" ${list.getMisce_fee()}" /></td>
					<td><c:out value=" ${list.getStart_date()}" /></td>
					<td><c:out value=" ${list.getEnd_date()}" /></td>
					<td><a class="btn btn-primary"
						href='adminFeesEditTableController?fee_type=developmentfee&&edit_id=<c:out value="${list.getId()}" />'>Update</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%  String pageNo = request.getParameter("page");
	
	  session.setAttribute("currentPage", pageNo) ;
	  
	  System.out.println(pageNo);
	
	%>


	<%
		 
		   dbConnection db = new dbConnection();

			Connection myConn = db.getCon();
			PreparedStatement pstmt = myConn.prepareStatement("SELECT * FROM admin_development_fees_table");
			ResultSet myRs = pstmt.executeQuery();

			int studentCount=0;
			while (myRs.next()) {
				studentCount++;
				//System.out.println("from while loop "+ studentCount);
			}
		 	double pages = (double)studentCount/8;
		 	//System.out.println(num);
		 	
		 	double totalPages = (double) Math.ceil(pages);
		 	//System.out.println(num1);
		 	int lastPage = (int)totalPages;
		 	int i;
		 	
		 	int previousPage=1;
		 	int nextPage=1;
		 	
		 %>


	<nav aria-label="Page navigation example">
		<ul class="pagination">

			<li class="page-item "><a class="page-link active"
				href="adminFeesManageController?type=developmentfee&&page=1"><<</a></li>
			<!-- <li class="page-item "><a class="page-link active"  href="adminFeesManageController?type=developmentfee&&page=<%//out.println(previousPage);%>"><</a></li>  -->
			<%  for(i=1; i<= totalPages;i++)  { //  previousPage = i-1; nextPage = i+1;%>

			<li class="page-item "><a class="page-link active"
				href="adminFeesManageController?type=developmentfee&&page=<%out.println(i);%>">
					<% out.println(i); %>
			</a></li>

			<% } %>
			<!--<li class="page-item "><a class="page-link active"  href="adminFeesManageController?type=developmentfee&&page=<%//out.println(nextPage);%>">></a></li> -->
			<li class="page-item "><a class="page-link active"
				href="adminFeesManageController?type=developmentfee&&page=<%out.println(lastPage);%>">>></a></li>

		</ul>
	</nav>

</section>


<%@include file="admin-footer.jsp"%>

<%
	} else {
%>


<%@include file="admin-login.jsp"%>
<%
	}
%>

