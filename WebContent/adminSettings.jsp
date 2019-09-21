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




        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="super-admin.jsp">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Add Sub-Admin</li>
        </ol>
        
        


	<div class="row ml-5 mt-5">
		<div class="col-md-6">
			<label>Add new Admin:</label>
				<form class="form-controll" action="adminController?action=addNewAdmin"  method="post">
              
                  <div class="md-form mb-2">
                    	<input type="text" name="name" class="form-control" placeholder="Name" required>  
                  </div>
                  
                  <div class="text-center">
                    <input type="submit" class="btn btn-primary" value="Add New Admin" > 
   				 </div>      

				</form>
		
		</div>
		
		<div class="col-md-6">
		
			<table class="table table-hover"  border="2px solid black">
				<thead>
					<tr>
						<th>Admin name</th>
						<th>Password</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				
				</thead>
				<tbody>
					
						<%

						adminController newAdmin = new adminController();
						ArrayList<Admin> totalAdmin= new ArrayList<Admin>();
						totalAdmin = newAdmin.showAllSubAdmin();

					for (int i = 0; i < totalAdmin.size(); i++) {
			%>
			<tr>
				
	
				<td>
				<%
					out.println(totalAdmin.get(i).getName());
				%>
				</td>
				<td>
					<%
						out.println(totalAdmin.get(i).getPassword());
					%>
				</td>
			
				<td>
					<a class="btn btn-primary"
					href="adminSettingsEdit.jsp?edit_id=<%
						out.println(totalAdmin.get(i).getId());
					%>&&name=<%
						out.println(totalAdmin.get(i).getName());
					%>">Edit</a>
				</td>
				
				<td>
					<a class="btn btn-primary"
					href="adminController?delete_id=<%
						out.println(totalAdmin.get(i).getId());
					%>">Delete</a>
				</td>


			</tr>

			<%
				}
			%>					
				
				</tbody>
			
			
			</table>
		
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

