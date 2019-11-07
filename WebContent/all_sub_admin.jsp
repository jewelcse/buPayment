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

a {
    text-decoration: none !important;
}


</style>

        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="super-admin.jsp">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">All Sub-Admin</li>
        </ol>
        
        <script>
        
              $('.item1false').on('click', function () {
       
            	$.ajax
                ({ 
                    url: 'privilegeEditController?value="0"',
                  
                    type: 'get',
                    success: function(result)
                    {
                        alert("worked");
                    }
                });
            });
      

        </script>


	<div class="row ml-5 mt-5">
	
		
		<div class="col-md-12">
		
		<div class="adbtn m-2" >
			<a href="adminSettings.jsp"><img src="images/plus.png" style="width:35px"> Add new Sub Admin</a>
		</div>
		
			<table class="table"  border="2px solid black">
				<thead>
					<tr>
						<th>Admin name</th>
						<th>Password</th>
						<th>Update Development Fee</th>
						<th>Students Information</th>
						<th>Applications Letters</th>
						<th>Update  Development Fees Table</th>
						<th>Update Semester Fees Table</th>
						<th>Update Formfillup Fees Table</th>
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
					<% if(totalAdmin.get(i).getItem1().equals("0")){ %>
					<img src="images/cross.jpg" >
					<% 	} else {  %>	
					<img src="images/right.jpg">		
					<% 	}   %>
				</td>
				<td>
					<% if(totalAdmin.get(i).getItem2().equals("0")){ %>
					<img src="images/cross.jpg">
					<% 	} else {  %>	
					<img src="images/right.jpg">		
					<% 	}   %>
				</td>
				<td>
					<% if(totalAdmin.get(i).getItem3().equals("0")){ %>
					<img src="images/cross.jpg">
					<% 	} else {  %>	
					<img src="images/right.jpg">		
					<% 	}   %>
				</td>
				<td>
					<% if(totalAdmin.get(i).getItem4().equals("0")){ %>
					<img src="images/cross.jpg">
					<% 	} else {  %>	
					<img src="images/right.jpg">		
					<% 	}   %>
				</td>
				<td>
					<% if(totalAdmin.get(i).getItem5().equals("0")){ %>
					<img src="images/cross.jpg">
					<% 	} else {  %>	
					<img src="images/right.jpg">		
					<% 	}   %>
				</td>
				<td>
					<% if(totalAdmin.get(i).getItem6().equals("0")){ %>
					<img src="images/cross.jpg">
					<% 	} else {  %>	
					<img src="images/right.jpg">		
					<% 	}   %>
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
    
		
		response.sendRedirect("admin-login.jsp");


	}
%>
