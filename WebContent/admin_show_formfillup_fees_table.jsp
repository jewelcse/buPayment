
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if ((session.getAttribute("currentSessionForSuperAdmin") != null)
			|| (session.getAttribute("currentSessionForSubAdmin") != null)) {
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
	<li class="breadcrumb-item"><a href="super-admin.jsp">Dashboard</a>
	</li>
	<li class="breadcrumb-item active">Form Fillup Fees</li>
</ol>

<section class="p-1">
	<input type="text" id="myInput1" class=" form-control mb-4"
		onkeyup="searchByFunction()" placeholder="Search by Semester"><br>

	<a href="#" class="btn btn-primary" id="test"
		onClick="javascript:fnExcelReport();">Export Data</a> <a href="#"
		class="btn btn-primary" id="test" onclick="printData()">Print Data</a>

	<div id="printData">
		<h3 class="inline">
			<u>Paid Form Fill Up Fees table</u>
		</h3>
		<table class="table table-hover" id="myTable" border="2px solid black">
			<tr>
				<th>Semester</th>
				<th>Amount</th>
				<th>Student Id</th>
			</tr>

			<%
				adminShowAllFeesController formfillupItem = new adminShowAllFeesController();
					ArrayList<FormfillupFees> item = new ArrayList<FormfillupFees>();
					item = formfillupItem.showAllFormfillupFee();

					for (int i = 0; i < item.size(); i++) {
			%>
			<tr>

				<td>
					<%
						out.println(item.get(i).getS_semester());
					%>
				</td>
				<td>
					<%
						out.println(item.get(i).getS_amount());
					%>
				</td>
				<td>
					<%
						out.println(item.get(i).getS_id());
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
			$('#test').attr('download', 'all_form_fill_up_fees.xls');
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