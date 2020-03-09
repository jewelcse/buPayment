<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.*"
	import="com.buPayments.Dao.*" import="com.buPayments.controller.*"
	import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@include file="header.jsp"%>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionStudent") != null) {

		Student currentUser = (Student) (session.getAttribute("currentSessionStudent"));

		String id = currentUser.getId();

		Student stu;

		stu = studentsDao.getStudentProfileById(id);

		//System.out.println("id "+currentUser.getId());

		ArrayList<Devfees> devfee = new ArrayList<Devfees>();
		ArrayList<FormfillupFees> formfillupfee = new ArrayList<FormfillupFees>();
		ArrayList<SemesterFees> semfee = new ArrayList<SemesterFees>();

		devfee = studentsDao.getPaidDevelopmentFeeByUserId(id);
		formfillupfee = studentsDao.getPaidFormfillupFeeByUserId(id);
		semfee = studentsDao.getPaidSemesterpFeeByUserId(id);

		/*for(int i= 0 ; i < devfee.size();i++){
			
			System.out.println(devfee.get(i).getS_semester()+ " " + devfee.get(i).getAmount());
		}*/
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=stu.getS_name()%></title>
<style>
.pcolor {
	color: black
}
</style>
</head>
<body>





	<div class="container emp-profile pt-4">
		<form method="post">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img src="images/default-profile-picture-gmail-2.png"
							style="width: 250px" alt="default image" />

					</div>
				</div>
				<div class="col-md-6">
					<div class="profile-head">
						<h5>
							<%=stu.getS_name()%>
						</h5>
						<h6>
							<%=stu.getS_department()%>
						</h6>
						<p class="proile-rating">University of Barishal</p>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true"><span
									class="pcolor">About</span></a></li>
							<li class="nav-item"><a class="nav-link" id="profile-tab"
								data-toggle="tab" href="#profile" role="tab"
								aria-controls="profile" aria-selected="false"><span
									class="pcolor">Payments History</span></a></li>
						</ul>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="profile-work">
						<p>
							<u>Contact Info:</u>
						</p>
						<p><%=stu.getS_email()%></p>
						<p><%=stu.getS_phone()%></p>
						<br />

					</div>
				</div>
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label>Mother's Name:</label>
								</div>
								<div class="col-md-6">
									<p><%=stu.getS_mother_name()%></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Father's Name:</label>
								</div>
								<div class="col-md-6">
									<p><%=stu.getS_father_name()%></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Roll No:</label>
								</div>
								<div class="col-md-6">
									<p><%=stu.getS_roll()%></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Registration No:</label>
								</div>
								<div class="col-md-6">
									<p><%=stu.getS_reg()%></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Semester:</label>
								</div>
								<div class="col-md-6">
									<p><%=stu.getS_semester()%></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Faculty</label>
								</div>
								<div class="col-md-6">
									<p><%=stu.getS_faculty()%></p>
								</div>
							</div>

						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel"
							aria-labelledby="profile-tab">
							<table class="table table-bordered">
								<tbody>

									<%
										for (int i = 0; i < devfee.size(); i++) {
									%>

									<tr>
										<td>Development Fee:</td>
										<td>
											<%
												out.print(devfee.get(i).getS_semester());
											%>
										</td>
										<td>
											<%
												out.print(devfee.get(i).getAmount());
											%><span> Tk</span>
										</td>
									</tr>
									<%
										}
									%>

								</tbody>
								
								<tbody>

									<%
										for (int i = 0; i < formfillupfee.size(); i++) {
									%>

									<tr>
										<td>Formfillup Fee:</td>
										<td>
											<%
												out.print(formfillupfee.get(i).getS_semester());
											%>
										</td>
										<td>
											<%
												out.print(formfillupfee.get(i).getS_amount());
											%><span> Tk</span>
										</td>
									</tr>
									<%
										}
									%>

								</tbody>
								
								<tbody>

									<%
										for (int i = 0; i < semfee.size(); i++) {
									%>

									<tr>
										<td>Semester Fee:</td>
										<td>
											<%
												out.print(semfee.get(i).getS_semester());
											%>
										</td>
										<td>
											<%
												out.print(semfee.get(i).getS_semester_fee());
											%> <span> Tk</span>
										</td>
									</tr>
									<%
										}
									%>

								</tbody>

							</table>

						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>

<br>
<br>
<%@include file="footer.jsp"%>

<%
	} else
		response.sendRedirect("login.jsp");
%>
