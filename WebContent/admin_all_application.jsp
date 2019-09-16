
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

<style>

h3.inline {
    margin-left: 40%;
    margin-right: 50%;
    width: 100%;
}

</style>

<body>
	<section class="p-5">
		
    <div id="printData">
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
			admin_all_application_controller semItem = new admin_all_application_controller();
					ArrayList<allApplication> item = new ArrayList<allApplication>();
					item = semItem.showAllApplicationFun();

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
					<a class="btn btn-primary" href="admin_all_application_controller?stu_id=<%
						out.println(item.get(i).getId());
					%>">Preview</a>
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
        $('#test').attr('download', 'all_semester_fees.xls');
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
<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>