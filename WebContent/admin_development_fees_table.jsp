
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
	if (session.getAttribute("currentSessionAdmin") != null) {
%>
<%@include file="admin-header.jsp"%>

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Development Fees</li>
        </ol>
        
  <section class="p-5">      
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
				<button class="btn"><a href='adminDevelopmentFeesTableEdit?Edit_id=<%
						out.println(al.get(i).getId());
					%>'>Update</a> </button>
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

