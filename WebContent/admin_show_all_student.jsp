
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionAdmin") != null) {
%>




<%@include file="adminheader.jsp"%>



<body>
	<section class="p-5">
		
		<button onclick="printData()" class="btn" style="float:right;
    background-color: #b1040e; color:white">Print Data</button>
		<button class="btn" style="float:right;
    background-color: #b1040e;''">
    <a href="#" id="test" onClick="javascript:fnExcelReport();"><span  style="color:white">Export Data</span></a>
    
    </button>
    <div id="printData">
    <h3 class="inline"><u>Students Table</u></h3>
		<table class="table table-hover" id="myTable">
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
				<td>
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
				<td>
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
</body>

<script>

function fnExcelReport() {
    var tab_text = '<html xmlns:x="urn:schemas-microsoft-com:office:excel">';
    tab_text = tab_text + '<head><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>';

    tab_text = tab_text + '<x:Name>Test Sheet</x:Name>';

    tab_text = tab_text + '<x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions></x:ExcelWorksheet>';
    tab_text = tab_text + '</x:ExcelWorksheets></x:ExcelWorkbook></xml></head><body>';

    tab_text = tab_text + "<table border='1px'>";
    tab_text = tab_text + $('#myTable').html();
    tab_text = tab_text + '</table></body></html>';

    var data_type = 'data:application/vnd.ms-excel';
    
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");
    
    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
        if (window.navigator.msSaveBlob) {
            var blob = new Blob([tab_text], {
                type: "application/csv;charset=utf-8;"
            });
            navigator.msSaveBlob(blob, 'Test file.xls');
        }
    } else {
        $('#test').attr('href', data_type + ', ' + encodeURIComponent(tab_text));
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

</script>
<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>