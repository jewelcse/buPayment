
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
			|| session.getAttribute("adminSemesterFeesTableController") != null) {
%>
<%@include file="admin-header.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">Semester Fees</li>
</ol>



<section class="p-1">
	<h3 class="inline">
		<u>Semester Fees Table</u>
	</h3>
	<table class="order-table table table-hover" border="2px solid black">
		<thead>
			<tr>
				<th>Department</th>
				<th>Semester</th>
				<th>admission Fee</th>
				<th>Tution Fee</th>
				<th>Lab/Seminar Fee</th>
				<th>Transport Fee</th>
				<th>Miscellaneous Fee</th>
				<th>Total</th>
				<th>Start date</th>
				<th>End Date</th>
				<th>Action</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${semester_fees_list}" var="list">
				<tr>
					<td><c:out value="${list.getDepartment()}" /></td>
					<td><c:out value=" ${list.getSemester()}" /></td>
					<td class="fee"><c:out value=" ${list.getSemester_admission_fee()}" /></td>
					<td class="fee"><c:out value=" ${list.getTution_fee()}" /></td>
					<td class="fee"><c:out value=" ${list.getLab_or_seminar_fee()}" /></td>
					<td class="fee"><c:out value=" ${list.getTransport_fee()}" /></td>
					<td class="fee"><c:out value=" ${list.getMisce_fee()}" /></td>
					<td ><div class="total"></div></td>
					<td><c:out value=" ${list.getStart_date()}" /></td>
					<td><c:out value=" ${list.getEnd_date()}" /></td>
					<td><a class="btn btn-primary"
						href='adminFeesEditTableController?fee_type=semesterfee&&edit_id=<c:out value="${list.getId()}" />'>Update</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<%
		String pageNo = request.getParameter("page");

			session.setAttribute("currentPage", pageNo);

			System.out.println(pageNo);
	%>


	<%
		dbConnection db = new dbConnection();

			Connection myConn = db.getCon();
			PreparedStatement pstmt = myConn.prepareStatement("SELECT * FROM admin_semester_fees_table");
			ResultSet myRs = pstmt.executeQuery();

			int studentCount = 0;
			while (myRs.next()) {
				studentCount++;
				//System.out.println("from while loop "+ studentCount);
			}
			double pages = (double) studentCount / 8;
			//System.out.println(num);

			double totalPages = (double) Math.ceil(pages);
			//System.out.println(num1);
			int lastPage = (int) totalPages;
			int i;

			int previousPage = 1;
			int nextPage = 1;
	%>


	<nav aria-label="Page navigation example">
		<ul class="pagination">

			<li class="page-item "><a class="page-link active"
				href="adminFeesManageController?type=semesterfee&&page=1"><<</a></li>

			<%
				for (i = 1; i <= totalPages; i++) { //  previousPage = i-1; nextPage = i+1;
			%>

			<li class="page-item "><a class="page-link active"
				href="adminFeesManageController?type=semesterfee&&page=<%out.println(i);%>">
					<%
						out.println(i);
					%>
			</a></li>

			<%
				}
			%>

			<li class="page-item "><a class="page-link active"
				href="adminFeesManageController?type=semesterfee&&page=<%out.println(lastPage);%>">>></a></li>

		</ul>
	</nav>
</section>
<script>
	
$(document).ready(function () {
    //iterate through each row in the table
    $('tr').each(function () {
        //the value of sum needs to be reset for each row, so it has to be set inside the row loop
        var sum = 0;
        //find the fee elements in the current row and sum it 
        $(this).find('.fee').each(function () {
            var fee = $(this).text();
            if (!isNaN(fee) && fee.length !== 0) {
                sum += parseFloat(fee);
            }
        });
        //set the value of currents rows sum to the total-combat element in the current row
        $('.total', this).html(sum);
    });
});
	
	
</script>
<%@include file="admin-footer.jsp"%>
<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>

