<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Payment Instructions
1. For App Payment
2. Make Payment
3. Enter Daraz Merchant Number: 01 966 114 400
4. Enter total order amount
5. Enter Reference Number (as displayed above)
6. Verify your payment by entering your PIN
7. It might take up to 15 minutes for payment verification
8. For USSD Payment follow below steps
9. Dial *247# to view bKash Menu
10. Press 3 for "Payments"
11. Enter Daraz Merchant Number: 01 966 114 400
12. Enter total order amount
13. Enter Reference Number (as displayed above)
14. Enter 1 for the bKash Counter No
15. Verify your payment by entering your PIN
16. It might take up to 15 minutes for payment verification Please note that Daraz will not accept split bKash payments for a single order. All bKash order payment must be on the exact order amount. Split payments will result in cancelled orders and will not be eligible for cashback.
	<div class="welcome">
			<div clas="overlay"></div>
			<div clas="container">
				<h1>Development fees</h1>
			</div>
	</div>


</body>
</html>

   <% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    if(session.getAttribute("currentSessionStudent")!=null)
    {
    %>
    
    
<%}
else
response.sendRedirect("login.jsp");%>