
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if ((session.getAttribute("currentSessionForSuperAdmin") != null)
			|| (session.getAttribute("show_student_table") != null)) {
%>




<%@include file="admin-header.jsp"%>

<style>
h3.inline {
	margin-left: 40%;
	margin-right: 50%;
	width: 100%;
}

.container {
    width: 100%;
    overflow-x: auto;
    white-space: nowrap;
}
</style>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">Students Table</li>
</ol>

<section class="p-1">
	<input type="text" id="myInput1" class=" form-control mb-4"
		onkeyup="searchByFunction()" placeholder="Search by Semester"><br>
	<a href="#" class="btn btn-primary" id="test"
		onClick="javascript:fnExcelReport();">Export Data</a> <a href="#"
		class="btn btn-primary" id="test" onclick="printData()">Print Data</a>
	<a href="admin_add_student.jsp"><img src="images/plus.png"
		style="width: 35px"> Add new Record</a>

	<div id="printData" class="container">
		<h3 class="inline">
			<u>Students Table</u>
		</h3>
		<table class="table table-bordered table-striped text-center"
			id="myTable" border="2px solid black">
			<tr>
				<th>Roll No</th>
				<th>Password</th>
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

				<td>
					<%
						out.println(al.get(i).getS_roll());
					%>
				</td>
				<td width="20px">
					<%
						out.println(al.get(i).getS_password());
					%>
				</td>
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
				<td width="20px">
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
	</div>
</section>


<script>
	function fnExcelReport() {
		var tab_text = '<html xmlns:x="urn:schemas-microsoft-com:office:excel">';
		tab_text = tab_text
				+ '<head><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>';

		tab_text = tab_text + '<x:Name>Test Sheet</x:Name>';

		tab_text = tab_text
				+ '<x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions></x:ExcelWorksheet>';
		tab_text = tab_text
				+ '</x:ExcelWorksheets></x:ExcelWorkbook></xml></head><body>';

		tab_text = tab_text + "<table border='1px'>";
		tab_text = tab_text + $('#myTable').html();
		tab_text = tab_text + '</table></body></html>';

		var data_type = 'data:application/vnd.ms-excel';

		var ua = window.navigator.userAgent;
		var msie = ua.indexOf("MSIE ");

		if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
			if (window.navigator.msSaveBlob) {
				var blob = new Blob([ tab_text ], {
					type : "application/csv;charset=utf-8;"
				});
				navigator.msSaveBlob(blob, 'Test file.xls');
			}
		} else {
			$('#test').attr('href',
					data_type + ', ' + encodeURIComponent(tab_text));
			$('#test').attr('download', 'Student-table.xls');
		}

	}
	function printData() {
		var print_div = document.getElementById("printData");
		var print_area = window.open();
		print_area.document.write(print_div.innerHTML);
		print_area.document.close();
		print_area.focus();
		print_area.print();
		print_area.close();

	}

	function searchByFunction() {
		// Declare variables
		var input, filter, table, tr, td, i, txtValue;
		input = document.getElementById("myInput1");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");

		// Loop through all table rows, and hide those who don't match the search query
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[8];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if ((txtValue.toUpperCase().indexOf(filter) > -1)) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	}
</script>
<%@include file="admin-footer.jsp"%>
<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>