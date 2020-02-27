
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
							name="deptname" id=""deptname"">
							<option value="">.....</option>
							
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

<section id="ajaxGetUserServletResponse">






</section>



<script>


///$(document).ready(function() {
	//var name = $('#deptname').val();
	//alert(name);
	//console.log(name);
	//$('#deptname').blur(function() {
	//	$.ajax({
	//		url : 'adminManageFeesController',
	//		data : {
		//		deptName : name
		//	},
		//	success : function(responseText) {
		//		$('#ajaxGetUserServletResponse').text(responseText);
		//	}
		//});
	//});
//});




$(document).ready(function() {
	$('#deptname').change(function(event) {
		var deptname = $('#deptname').find(":selected").val();
		console.log(deptname);
		
		$.get('adminManageFeesController', {
			deptname : deptname
		}, function(responseText) {
			//$('#id2').val(responseText);
			
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
		%>
		<tr>
		
			<td>
				<%
					out.println(al.get(i).getDeptId());
				%>
			</td>
			

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

