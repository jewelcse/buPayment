<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="com.buPayments.model.Student"
import="com.buPayments.model.Devfees"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@include file="header.jsp"%>


            <%
response.setHeader("Cache-Control", "no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", -1);
new java.util.Date();
if (session.getAttribute("currentSessionStudent") != null) {
    Student currentUser = (Student) (session
            .getAttribute("currentSessionStudent"));
%>


                <body>
                	<h3 class="text-center">ALready payment !</h3>
                </body>

                <br>
                <br>
                <%@include file="footer.jsp" %>
                
                <%} else{ 
                	response.sendRedirect("login.jsp");
               }  %>