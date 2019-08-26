
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionAdmin") != null) {
%>




<%@include file="adminheader.jsp"%>



<body>
	<section class="p-5">
		<h3><u>Students Table</u></h3>
		<button class="btn" style="float:right;
    background-color: #b1040e; color:white">Print Data</button>
		<button class="btn" style="float:right;
    background-color: #b1040e; color:white">Export Data</button>
		<table class="table table-hover">
			<tr>

				<th>Registration</th>
				<th>Name</th>
				<th>Father Name</th>
				<th>Mother Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Semester</th>
				<th>Department</th>
				<th>Faculty</th>
			</tr>

			<%
				adminShowStudentsController dao = new adminShowStudentsController();
					ArrayList<Student> al = new ArrayList<Student>();
					al = dao.showData();

					for (int i = 0; i < al.size(); i++) {
			%>
			<tr>
				<%
					//out.println(al.get(i).getId());
				%>
				<td>
					<%
						out.println(al.get(i).getS_reg());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_name());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_father_name());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_mother_name());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_email());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_phone());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_semester());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_department());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getS_faculty());
					%>
				</td>

			</tr>

			<%
				}
			%>



		</table>
	</section>
</body>
<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>