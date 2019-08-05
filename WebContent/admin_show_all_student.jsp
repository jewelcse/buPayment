<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.buPayments.controller.*"
    import= "com.buPayments.model.*" 
	import = "java.util.ArrayList" %>

<%@include file="adminheader.jsp" %>

<table>
  <tr>
    <th>Student ID</th>
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
   <tr>
<% 
adminShowStudentsController dao = new adminShowStudentsController();
ArrayList<Student> al = new ArrayList<Student>();
al = dao.showData();

for(int i=0;i<al.size();i++){ %>
	
		<td><% out.println(al.get(i).getS_name()); %> </td>
  	
	
	
	
	<%
}

%>

</tr>
 
</table>

