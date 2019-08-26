
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionAdmin") != null) {
%>




<%@include file="adminheader.jsp"%>

<script>
	function clearForms() {
		var i;
		for (i = 0; (i < document.forms.length); i++) {
			document.forms[i].reset();
		}
	}
	function validateForm() {
		var roll = document.forms["myForm"]["sroll"].value;
		var reg = document.forms["myForm"]["sreg"].value;
		var semester = document.forms["myForm"]["ssemester"].value;
		var sname = document.forms["myForm"]["sname"].value;
		var moname = document.forms["myForm"]["moname"].value;
		var faname = document.forms["myForm"]["faname"].value;
		var daname = document.forms["myForm"]["sdepartment"].value;
		var faculty = document.forms["myForm"]["sfaculty"].value;
		var email = document.forms["myForm"]["semail"].value;
		var phone = document.forms["myForm"]["sphone"].value;
		var pass = document.forms["myForm"]["spass"].value;

		if (roll == null || roll == "") {
			alert("class Roll must be filled out");
			return false;
		}

		if (reg == null || reg == "") {
			alert("reg Number must be filled out");
			return false;
		}

		if (sname == null || sname == "") {
			alert("student name must be filled out");
			return false;
		}
		if (moname == null || moname == "") {
			alert("mother name must be filled out");
			return false;
		}
		if (faname == null || faname == "") {
			alert("father name must be filled out");
			return false;
		}

		if (email == null || email == "") {
			alert("email must be filled out");
			return false;
		}

		if (faculty == null || faculty == "") {
			alert("faculty must be filled out");
			return false;
		}

		if (daname == null || daname == "") {
			alert("department must be filled out");
			return false;
		}

		if (phone == null || phone == "") {
			alert("phone must be filled out");
			return false;
		}

		if (semester == null || semester == "") {
			alert("Semester must be filled out");
			return false;
		}

		if (pass == null || pass == "") {
			alert("password must be filled out");
			return false;
		}

	}
</script>


<body onLoad="clearForms()" onunload="clearForms()">
	<!--Main Navigation-->
	<div class="row">

		<!--Grid column-->
		<div class="col-md-5  m-auto pt-3 ">

			<form id="myForm" onsubmit="return validateForm()" method="post"
				name="myForm" action="addStudentController">




				<div class="card wow fadeIn animated" data-wow-delay="0.3s"
					style="visibility: visible; animation-name: fadeIn; animation-delay: 0.3s;">




					<div class="card-body m-4">
						<!-- Header -->
						<div class="form-header  text-center "
							style="border-radius: 25px;">
							<h3 class="font-weight-500 my-2 py-1 text-light" style="border-radius: 25px;
    background-color: #b1040e; color:white">Add New
								Student</a></h3>
						</div>
						<!-- Body -->
						<div class="md-form">
							<i class="far fa-user prefix "></i> <input type="text" id="sroll"
								name="s_roll" class="form-control" required> <label for="sroll"
								class="">Roll no</label>
						</div>

						<div class="md-form">
							<i class="far fa-user prefix "></i> <input type="text" id="sreg"
								name="s_reg" class="form-control" required> <label for="sreg"
								class="">Reg no</label>
						</div>

						<div class="md-form">
							<i class="far fa-user prefix "></i> <input type="text" id="sname"
								name="s_name" class="form-control" required> <label for="sname"
								class="">Student's Name</label>
						</div>

						<div class="md-form">
							<i class="far fa-user prefix "></i> <input type="text"
								id="moname" name="s_mother_name" class="form-control" required> <label
								for="moname" class="">Mother's Name</label>
						</div>

						<div class="md-form">
							<i class="far fa-user prefix "></i> <input type="text"
								id="faname" name="s_father_name" class="form-control" required> <label
								for="faname" class="">Father's Name</label>
						</div>


						<div class="md-form">
							<i class="far fa-envelope prefix"></i> <input type="email"
								id="semail" name="s_email" class="form-control" required> <label
								for="semail" class="">Your email</label>
						</div>

						<div class="md-form">
							<div class="md-form mb-0">
								<select id="sfaculty"
									class="browser-default custom-select custom-select-lg mb-3"
									name="s_faculty" required>
									<option selected>Faculty Name</option>
									<option value="Science & Engineering">Science &
										Engineering</option>
									<option value="Bio-Sciences">Bio-Sciences</option>
									<option value="Business Studies">Business Studies</option>
									<option value="Arts and Humanities">Arts and
										Humanities</option>
									<option value="Social Sciences">Social Sciences</option>
									<option value="Law">Law</option>
								</select>
							</div>
						</div>

						<div class="md-form">
							<div class="md-form mb-0">
								<select id="sdepartment"
									class="browser-default custom-select custom-select-lg mb-3"
									name="s_department" required>
									<option selected>Department Name</option>
									<option value="Computer Science & Engineering">Computer
										Science & Engineering</option>
									<option value="Mathematics">Mathematics</option>
									<option value="Chemistry">Chemistry</option>
									<option value="Physics">Physics</option>
									<option value="Geology and Mining">Geology and Mining</option>
									<option value="Soil & Environmental Science">Soil &
										Environmental Science</option>
									<option value="Botany">Botany</option>
									<option value="Coastal Studies & Disaster Management">Coastal
										Studies & Disaster Management</option>
									<option value="Biochemistry & Biotechnology">Biochemistry
										& Biotechnology</option>
									<option value="Management Studies">Management Studies</option>
									<option value="Accounting & Information System">Accounting
										& Information System</option>
									<option value="Marketing">Marketing</option>
									<option value="Finance & Banking">Finance & Banking</option>
									<option value="Economics">Economics</option>
									<option value="Political Science">Political Science</option>
									<option value="Sociology">Sociology</option>
									<option value="Public Administration">Public
										Administration</option>
									<option value="Bangla">Bangla</option>
									<option value="English">English</option>
									<option value="Philosophy">Philosophy</option>
									<option value="Mass Communication & Journalism">Mass
										Communication & Journalism</option>
									<option value="History & Civilization">History &
										Civilization</option>
									<option value="Law">Law</option>

								</select>
							</div>
						</div>

						<div class="md-form">
							<div class="md-form mb-0">
								<select id="ssemester"
									class="browser-default custom-select custom-select-lg mb-3"
									name="s_semester" required>
									<option selected>Semester</option>
									<option value="1st">1<sup>st</sup></option>
									<option value="2nd">2<sup>nd</sup></option>
									<option value="3th">3<sup>rd</sup></option>
									<option value="4th">4<sup>th</sup></option>
									<option value="5th">5<sup>th</sup></option>
									<option value="6th">6<sup>th</sup></option>
									<option value="7th">7<sup>th</sup></option>
									<option value="8th">8<sup>th</sup></option>
								</select>
							</div>
						</div>




						<div class="md-form">
							<i class="fas fa-lock prefix"></i> <input type="number"
								id="sphone" name="s_phone" class="form-control" required> <label
								for="sphone" class="">Phone No</label>
						</div>





						<div class="text-center">
							<input type="submit" value="Add record"
								class="btn " style="border-radius: 25px;
    background-color: #b1040e; color:white">

						</div>
					</div>
					<!-- Jumbotron -->
				</div>

			</form>
		</div>
	</div>



	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="assets/js/mdb.min.js"></script>
</body>
</html>

<br>
<br>
<%@include file="footer.jsp"%>
</html>

<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>