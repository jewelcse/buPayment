
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




<%@include file="admin-header.jsp"%>

<style>

h3.inline {
    margin-left: 40%;
    margin-right: 50%;
    width: 100%;
}

</style>

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Semester Fees</li>
        </ol>

	<section class="p-5">
		<input type="text" id="myInput1"  class="mb-4"onkeyup="searchByFunction()" placeholder="Search by Semester"><br>
		
		<button onclick="printData()" class="btn" style="float:right;
    background-color: #b1040e; color:white">Print Data</button>
		<button class="btn" style="float:right;
    background-color: #b1040e;''">
    <a href="#" id="test" onClick="javascript:fnExcelReport();"><span  style="color:white">Export Data</span></a>
    
    </button>
    <div id="printData">
    <h3 class="inline"><u>Paid Semester Fees table</u></h3>
		<table class="table table-hover" id="myTable"  border="2px solid black">
			<tr>
				<th>Semester</th>
				<th>Amount</th>
				<th>Student Id</th>
			</tr>

			<%
			adminShowAllFeesController semItem = new adminShowAllFeesController();
					ArrayList<SemesterFees> item = new ArrayList<SemesterFees>();
					item = semItem.showAllSemesterFee();

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
					out.println(item.get(i).getS_semester_fee());
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
<%@include file="admin-footer.jsp"%>
<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>