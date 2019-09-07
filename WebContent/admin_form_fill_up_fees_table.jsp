
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.buPayments.model.Admin"
	import="com.buPayments.model.adminFormFillUpFeesTable"
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
<%@include file="adminheader.jsp"%>
<div class="container">
	<div class="row ml-5 mt-5">

	<h3 class="inline"><u>Form Fill Up Fees Table</u></h3>
		<table class="table table-hover" id="myTable">
			<tr>
				<th>Semester</th>
				<th>Main Fee</th>
				<th>Misce Fee</th>
				<th>Start date</th>
				<th>End Date</th>
				<th>Action</th>

			</tr>

			<%
			adminFormFillUpFeesTableController devId = new adminFormFillUpFeesTableController();
					ArrayList<adminFormFillUpFeesTable> al = new ArrayList<adminFormFillUpFeesTable>();
					al = devId.showFormFillUpFeesTable();

					for (int i = 0; i < al.size(); i++) {
			%>
			<tr>
				
				<td>
				<%
					out.println(al.get(i).getSemester());
				%>
				</td>
				<td>
				<%
					out.println(al.get(i).getMain_fee());
				%>
				</td>
				<td>
					<%
						out.println(al.get(i).getMisce_fee());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getStart_date());
					%>
				</td>
				<td>
					<%
						out.println(al.get(i).getEnd_date());
					%>
				</td>
			
				<td> 
				<a href='adminFormFillUpFeesTableEdit?Edit_id=<%
						out.println(al.get(i).getId());
					%>'>Update</a>
				 </td>

			</tr>

			<%
				}
			%>



		</table>


	</div>


</div>

<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>