
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.model.adminDevelopmentFeesTable"
	import="com.buPayments.controller.*" 
	import="com.buPayments.model.*"
	import="java.util.ArrayList"
	import="java.sql.Connection"
	import="java.sql.PreparedStatement"
	import="java.sql.ResultSet"
	import="java.sql.SQLException"
	import="java.sql.Statement"
	import="java.text.ParseException"
	%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null
			|| session.getAttribute("adminDevelopmentFeesTableController") != null) {
%>


<%@include file="admin-header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">Development Fees</li>
</ol>



<section>



				<div class="md-form">
					<div class="md-form mb-0">
						<select required onchange="selected()"
							class="browser-default custom-select custom-select-lg mb-3"
							name="deptname" id="deptname">
							<option value="0">.....</option>
							
							<%
							
							dbConnection db = new dbConnection();

							Connection myConn = db.getCon();
							PreparedStatement pstmt = myConn.prepareStatement("SELECT * FROM department");
							ResultSet myRs = pstmt.executeQuery();


							while (myRs.next()) {

								String deptid = myRs.getString("id");
								String name = myRs.getString("dept_name");
								
								
								%>
								
								<option value="<% out.println(deptid);%>"><%out.println(name);%></option>

							
						<% 	}
							
							%>
							
					
							
							
						</select>
					</div>
				</div>
				


</section>


<script>
		


$(document).ready(function() {
	$('#deptname').change(function(event) {
		var deptId = $('#deptname').find(":selected").val();
		console.log(deptId);
		dataType : "json",
		$.get('adminFeesManageController', {
			deptId:deptId
		}, function(data) {
			
		
			alert(data);
            var json = jQuery.parseJSON(data);
   
            //$('#semester').html(json.semester) ;
            //$('#mainfee').innerHTML = "sdsds";
            //$('#miscefee').innerHTML = json.misce_fee ;
            //$('#startdate').innerHTML = json.start_date ;
            //$('#enddate').innerHTML = json.end_date ;

			
		});
	});
});

</script>





 <section class="p-1">
	<h3 class="inline">
		<u>Development Fees Table</u>
	</h3>

	<table class="table table-hover" id="myTable" border="2px solid black">
		<tr>
			<th>Department</th>
			<th>Semester</th>
			<th>Main Fee</th>
			<th>Misce Fee</th>
			<th>Start date</th>
			<th>End Date</th>
			<th>Action</th>

		</tr>

		<%
		
				
		
		
		       adminFeesFindTableController developmentfee = new adminFeesFindTableController();
				ArrayList<adminDevelopmentFeesTable> al = new ArrayList<adminDevelopmentFeesTable>();
				al = developmentfee.showDevelopmentFeesTable();

				for (int i = 0; i < al.size(); i++) {
					
					adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
					
					//out.println(al.get(i).getSemester());
				//out.println(newItem.getSemester());
				
						
							
							


							
				
				
		%>
		<tr id="ajaxGetUserServletResponse">
		
			
			<td id="semester"><% out.println(al.get(i).getDeptName()); %></td>

			<td id="semester"><% out.println(al.get(i).getSemester()); %></td>
			<td id="mainfee"><% out.println(al.get(i).getMain_fee()); %></td>
			<td id="miscefee"><% out.println(al.get(i).getMisce_fee()); %></td>
			<td id="startdate"><% out.println(al.get(i).getStart_date()); %></td>
			<td id="enddate"><% out.println(al.get(i).getEnd_date()); %></td>

			<td><a class="btn btn-primary"
				href='adminFeesEditTableController?fee_type=development_fee&&edit_id=<%out.println(al.get(i).getId());%>'>Update</a>
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

