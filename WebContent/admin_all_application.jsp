
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null) {
%>




<%@include file="admin-header.jsp"%>

<style>

h3.inline {
    margin-left: 40%;
    margin-right: 50%;
    width: 100%;
}

</style>


        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="super-admin.jsp">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Applications</li>
        </ol>
<section class="p-1">
		
    <h3 class="inline"><u>List of All Application</u></h3>
		<table class="table table-hover" id="myTable"  border="2px solid black">
			<tr>
				<th>ID</th>
				<th>Semester</th>
				<th>Subject</th>
				<th>Fee Type</th>
				<th>Reason</th>
				<th>Preview</th>
			</tr>

			<%
			admin_all_application_controller appItem = new admin_all_application_controller();
					ArrayList<allApplication> item = new ArrayList<allApplication>();
					item = appItem.showAllApplicationFun();

					for (int i = 0; i < item.size(); i++) {
			%>
			<tr>
				
				<td>
				<%
					out.println(i+1);
				%>
				</td>
				<td>
				<%
					out.println(item.get(i).getSemester());
				%>
				</td>
				<td>
					<%
						out.println(item.get(i).getSubject());
					%>
				</td>
				<td>
					<%
						out.println(item.get(i).getFeeType());
					%>
				</td>
				<td>
					<%
						out.println(item.get(i).getReason());
					%>
				</td>
				<td>
					<a class="btn btn-primary"
					href="admin_all_application_controller?application_id=<% out.println(item.get(i).getId());
					%>&&stu_id=<% out.println(item.get(i).getStudent_id());%>">Preview</a>
				</td>


			</tr>

			<%
				}
			%>



		</table>

</section>


<%@include file="admin-footer.jsp"%>

<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>