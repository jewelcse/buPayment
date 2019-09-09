<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Student"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	session.getAttribute("currentSessionStudent");
	Student currentUser = (Student) (session.getAttribute("currentSessionStudent"));
%>
<style>
.cover-img{
	width:100%;
}

</style>

<body>


	<section class="col-md-8 m-auto pt-4">
		<div class="jumbotron" id="application">

				<h2 class="h6-responsive font-weight-bold text-center">Application Form</h2>
			
			<form action="devFeesController?devfees_id=application_form" method="post">
			
			<p style="font-size:20px">
			
			<p>I am <label> <strong> <%=currentUser.getS_name()%></strong></label> bearing roll no.
			 <u><%=currentUser.getS_roll()%></u>  studying in 
			 <input type="hidden" name="id" value="<%=currentUser.getId()%>">
			 <input type="text" name="semester" placeholder="semester" required>
			 at the department of <u><%=currentUser.getS_department()%></u>
			University of Barishal.</p>
			<p>
			Application for
			
			<input type="checkbox" name="subject" value="Reduceing">Reduceing and/or
			<input type="checkbox" name="subject2" value="Time extend" >Time extend for  
			</p>
			<p>
			<input type="radio" name="feetype" value="Development fee " >Development fee 
			<input type="radio" name="feetype" value="Semester fee ">Semester fee 
			<input type="radio" name="feetype" value="Form Fill up fee ">Form Fill up fee .
			 </p>
			 <p>
			 My problem is
			 </p>
			 <div class="md-form mb-4 pink-textarea active-pink-textarea">
 				 <textarea id="reason" name="reason" class="md-textarea form-control" rows="3"></textarea>
  					
				</div>
			</p>


						<div class="text-center text-md-right">
							<input type="submit" class="btn btn-primary"
								value="Submit Form">
						</div>

			</form>

			
		</div>
							

	</section>
	
<script>

/*function exportLog(){
    var elHtml = document.getElementById('application').innerText;
    var link = document.createElement('a');
    var mimeType = 'text/plain';

    link.setAttribute('download', 'application');
    link.setAttribute('href', 'data:' + mimeType  +  ';charset=utf-8,' + encodeURIComponent(elHtml));
    link.click();
}
function printData() {
	var print_div = document.getElementById("application");
	var print_area = window.open();
	print_area.document.write(print_div.innerHTML);
	print_area.document.close();
	print_area.focus();
	print_area.print();
	print_area.close();
			
}

*/

</script>

</body>

<br><br>
<%@include file="footer.jsp" %>