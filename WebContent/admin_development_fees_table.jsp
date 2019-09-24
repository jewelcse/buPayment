
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.buPayments.model.Admin"
	import="com.buPayments.model.adminDevelopmentFeesTable"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"
	
	%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null || session.getAttribute("adminDevelopmentFeesTableController") != null) {
%>
<%@include file="admin-header.jsp"%>


        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="super-admin.jsp">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Development Fees</li>
        </ol>
        
  <section class="p-1">      
	<h3 class="inline"><u>Development Fees Table</u></h3>
	
		<table class="table table-hover" id="myTable" border="2px solid black">
			<tr>
				<th>Semester</th>
				<th>Main Fee</th>
				<th>Misce Fee</th>
				<th>Start date</th>
				<th>End Date</th>
				<th>Action</th>

			</tr>

			<%
			adminDevelopmentFeesTableController devId = new adminDevelopmentFeesTableController();
					ArrayList<adminDevelopmentFeesTable> al = new ArrayList<adminDevelopmentFeesTable>();
					al = devId.showDevelopmentFeesTable();

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
				<a  class="btn btn-primary" href='adminDevelopmentFeesTableEdit?Edit_id=<%
						out.println(al.get(i).getId());
					%>'>Update</a>
				 </td>

			</tr>

			<%
				}
			%>



		</table>

</section>

<%@include file="admin-footer.jsp" %>
<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>

