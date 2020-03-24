
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Student"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@include file="header.jsp"%>

<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionStudent") != null) {

		response.sendRedirect("index.jsp");
	}else{
%>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 m-auto pt-4">
				<div class="login-box">
					<form action="logInController" method="post">

						<div class=" m-5">
							<div class="form-header  text-center ">
								<h3 class="font-weight-500 my-2 py-1">Login</h3>
							</div>

							<div class="md-form mb-2">
								<label for="orangeForm-email" class="">Student Id</label> <input
									type="text" id="orangeForm-email" name="student_id"
									id="student_id" class="form-control">
							</div>

							<div class="md-form mb-2">
								<label for="orangeForm-pass" class="">Password</label> <input
									type="password" id="orangeForm-pass" name="password"
									id="password" class="form-control">
							</div>

							<div class="text-center mb-2">
								<input type="submit" class=" btn btn-primary submitBtn"
									value="Login">

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

<%@include file="footer.jsp"%>

<%
	}

%>
