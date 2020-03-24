<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.controller.*"
	import="com.buPayments.model.*" import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>



<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null) {

		ArrayList<Admin> admin_list = new ArrayList<Admin>();

		admin_list = adminDao.showAllSubAdmin();
%>

<%@include file="admin-header.jsp"%>


<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

a {
	text-decoration: none !important;
}

.adbtnBox {
	border: 2px solid black;
	width: 210px;
	margin-bottom: 3px;
}

.adbtn {
	padding: 5px;
}
</style>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">All Sub-Admin</li>
</ol>



<div class="row ml-5 mt-5">


	<div class="col-md-12">

		<div class="adbtnBox">
			<div class="adbtn">
				<a href="adminController?target=new_admin_create"><img
					src="images/plus.png" style="width: 35px"> Add new Sub Admin</a>
			</div>
		</div>
		<%
			//request.setAttribute("error", "Duplicate Entity found!");
		%>

		<table class="table" border="2px solid black">
			<thead>
				<tr>
					<th>Admin name</th>
					<th>Password</th>
					<th>Update Development Fee</th>
					<th>Students Information</th>
					<th>Applications Letters</th>
					<th>Update Development Fees Table</th>
					<th>Update Semester Fees Table</th>
					<th>Update Form fill up Fees Table</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>

				<%
					for (int i = 0; i < admin_list.size(); i++) {
				%>
				<tr>
					<td>
						<%
							out.print(admin_list.get(i).getName());
						%>
					</td>
					<td>
						<%
							out.print(admin_list.get(i).getPassword());
						%>
					</td>

					<td>
						<a class="table_row" href="#" id="item"
							data-id="<% out.print(admin_list.get(i).getId());%>"
							data-type="update_development_fee"
							data-value="<% out.print(admin_list.get(i).getItem1());%>"><% out.print(admin_list.get(i).getItem1());%>
						</a>
					</td>
					<td>
						<%
							out.print(admin_list.get(i).getItem2());
						%>
					</td>
					<td>
						<%
							out.print(admin_list.get(i).getItem3());
						%>
					</td>
					<td>
						<%
							out.print(admin_list.get(i).getItem4());
						%>
					</td>

					<td>
						<%
							out.print(admin_list.get(i).getItem5());
						%>
					</td>
					<td>
						<%
							out.print(admin_list.get(i).getItem6());
						%>
					</td>
					<td class="text-center"><a class="btn btn-primary"
						href="adminController?target=delete&&delete_id=<%out.print(admin_list.get(i).getId());%>">Delete</a>
					</td>
				</tr>

				<%
					}
				%>

				<!-- 	<c:forEach items="${sub_admin_list}" var="list">
					<tr>
						<td><c:out value=" ${list.getName()}" /></td>
						<td><c:out value=" ${list.getPassword()}" /></td>
						<td class="text-center"><a class="table_row" href="#" id="item"
							data-id="<c:out value='${list.getId()}' />"
							data-type="update_development_fee"
							data-value="<c:out value=" ${list.getItem1()}" />"> <c:out
									value=" ${list.getItem1()}" />
						</a></td>
						<td class="text-center"><a class="table_row" href="#" id="item"
							data-id="<c:out value='${list.getId()}' />"
							data-type="students_info"
							data-value="<c:out value=" ${list.getItem2()}" />"> <c:out
									value=" ${list.getItem2()}" />
						</a></td>
						<td class="text-center"><a class="table_row" href="#" id="item"
							data-id="<c:out value='${list.getId()}' />"
							data-type="application_letters"
							data-value="<c:out value=" ${list.getItem3()}" />"> <c:out
									value=" ${list.getItem3()}" />
						</a></td>
						<td class="text-center"><a class="table_row" href="#" id="item"
							data-id="<c:out value='${list.getId()}' />"
							data-type="development_fees_table_update"
							data-value="<c:out value=" ${list.getItem4()}" />"> <c:out
									value=" ${list.getItem4()}" />
						</a></td>
						<td class="text-center"><a class="table_row" href="#" id="item"
							data-id="<c:out value='${list.getId()}' />"
							data-type="semester_fees_table_update"
							data-value="<c:out value=" ${list.getItem5()}" />"> <c:out
									value=" ${list.getItem5()}" />
						</a></td>
						<td class="text-center"><a class="table_row" href="#" id="item"
							data-id="<c:out value='${list.getId()}' />"
							data-type="formfillup_fees_table_update"
							data-value="<c:out value=" ${list.getItem6()}" />"> <c:out
									value=" ${list.getItem6()}" />
						</a></td>

						<td class="text-center"><a class="btn btn-primary"
							href="adminController?target=delete&&delete_id=<c:out value=" ${list.getId()}" />">Delete</a>
						</td>
					</tr>
				</c:forEach>  -->

			</tbody>

		</table>

	</div>

</div>

<script>
	$(document).ready(function() {
		$('.table_row').on('click', function() {
			var sub_admin_id = $(this).attr("data-id");
			//var sub_admin_id = $(".table_row").attr("data-id");
			var type = $(this).attr("data-type");
			var value = $(this).attr("data-value");

			//alert(sub_admin_id + " " + type + " " + value);
			console.log(sub_admin_id + " " + type + " " + value);
			$.ajax({
				url : 'SubAdminServletController?update_data_type=' + type,
				dataType : 'text',
				data : {
					sub_admin_id : sub_admin_id,
					value : value
				},
				success : function(status) {

					console.log(status);
					alert(status);
					 window.location.reload(true);

				}
			});

		});
	});
</script>


<%@include file="admin-footer.jsp"%>

<%
	} else {

		response.sendRedirect("admin-login.jsp");

	}
%>
