<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Student"
	import="com.buPayments.model.Devfees"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@include file="header.jsp"%>


<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionStudent") != null) {
		Student currentUser = (Student) (session.getAttribute("currentSessionStudent"));
%>



<script>
	$(document).ready(function() {
		$('#SSemester').change(function(event) {
			var semester = $('#SSemester').find(":selected").val();
			console.log(semester);
			var roll = $('#classRoll').val();
			$.get('devFeesController', {
				s_semester : semester,
				s_roll : roll
			}, function(responseText) {
				$('#id2').val(responseText);
				var add = responseText;
				var newVal = +add + 600;
				$('#sum').val(newVal);
			});
		});
	});

	function sum() {
		var main = Document.getElementById("id1");
		var misce = Document.getElementById("id2");

		var total = main + misce;
		return total;
		alert(total)

	}
	function clearForms() {
		var i;
		for (i = 0; (i < document.forms.length); i++) {
			document.forms[i].reset();
		}
	}
</script>


<body>
	<div class="container">

		<div class="row">
			<div class="box">
				<h2 class="text-responsive font-weight-bold text-center ">University
					of Barishal</h2>
				<h6 class="text-responsive font-weight-bold text-center ">Barishal-8200</h6>
				<h6 class="text-responsive font-weight-bold text-center">Computer
					Science & Engineering</h6>
				</br> <u><h3 class="text-responsive font-weight-bold text-center ">Development
						Fees Payment Form</h3> </u>


				<div class="col-md-12 mb-md-0 mb-5  ">
					<form action="devFeesController?devfees_id=devfees" method="post">
						<div class="row">
							<input type="hidden" name="s_id" class="form-control"
								value="<%=currentUser.getId()%>">
							<div class="col-md-6 mb-1">
								<div class="md-form mb-0">
									<label for="classRoll" class="">Class Roll</label> <input
										type="text" id="classRoll" name="s_roll" readonly
										class="form-control" value="<%=currentUser.getS_roll()%>">

								</div>
							</div>

							<div class="col-md-6">
								<div class="md-form mb-0">
									<label for="regNumber" class="">Registration No.</label> <input
										type="text" id="regNumber" name="s_reg" readonly
										class="form-control" value="<%=currentUser.getS_reg()%>">

								</div>
							</div>
						</div>

						<%
							String semester = request.getParameter("semester");
						%>
						<div class="md-form">
							<div class="md-form mb-0 mt-2">
								<select
									class="browser-default custom-select custom-select-lg mb-3"
									name="s_semester" id="SSemester">
									<option value="0">Confirm Semester</option>
									<option value="<%out.print(semester);%>">
										<%
											out.print(semester);
										%>
									</option>
								</select>
							</div>
						</div>
						<div class="md-form">
							<label for="orangeForm-name" class="">Student's Name</label> <input
								type="text" id="sname" name="s_name" readonly
								class="form-control" value="<%=currentUser.getS_name()%>">

						</div>

						<div class="md-form">
							<label for="orangeForm-moname" class="">Mother's Name</label> <input
								type="text" id="moname" name="s_mother_name" readonly
								value="<%=currentUser.getS_mother_name()%>" class="form-control">

						</div>

						<div class="md-form">
							<label for="orangeForm-faname" class="">Father's Name</label> <input
								type="text" id="faname" name="s_father_name" readonly
								value="<%=currentUser.getS_father_name()%>" class="form-control">

						</div>

						<div class="md-form">
							<label for="orangeForm-faname" class="">Department Name</label> <input
								type="text" id="daname" name="s_department" readonly
								value="<%=currentUser.getS_department()%>" class="form-control">

						</div>

						<div class="md-form">
							<label for="orangeForm-faname" class="">Faculty Name</label> <input
								type="text" id="facaname" name="s_faculty" readonly
								value="<%=currentUser.getS_faculty()%>" class="form-control">

						</div>

						<div class="mt-4">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th scope="col">Sector</th>
										<th scope="col">Amount</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Development Fees</td>
										<!-- বিভাগ উন্নয়ন ফি ,বিবিধ,মোট-->
										<td><input type="text" id="id1" value="600" readonly>
										</td>
									</tr>
									<tr>
										<td>Miscellaneous</td>
										<td><input type="text" id="id2" name="amount" readonly>
										</td>
									</tr>
									<tr>
										<td>Total</td>
										<td><input type="text" id="sum" name="total_amount"
											readonly></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="text-center text-md-right">
							<input type="submit" class="btn btn-primary submitBtn"
								onclick="check_semester()" value="pay now">
						</div>
					</form>
					<div class="status"></div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function check_semester() {

			var semester = document.getElementById('SSemester').selectedOptions[0].value;
			console.log(semester);

			if (semester == "0") {
				alert("Confirm your Semester");
			}

		}
	</script>
</body>

</html>
<br>
<br>
<%@include file="footer.jsp"%>
<%
	} else {
		response.sendRedirect("login.jsp");

	}
%>