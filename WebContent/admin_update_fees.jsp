
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
<div class="container">
	<div class="row ml-5 mt-5">

		<h1 class="mr-3">Update Fees : </h1>
<form id="myForm" action="ChangedFeesController"  method="post"  name="myForm">
              
                  <div class="md-form">
                    <input type="text" id="roll" name="roll" class="form-control" required>
                    <label for="roll" class="">Enter roll no to change amount:</label>
                  </div>
                  
                     <div class="md-form">
                        <div class="md-form mb-0">
                            <select id="ssemester" class="browser-default custom-select custom-select-lg mb-3" name="ssemester" required>
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
                    <input type="text" id="changed_amount" name="changed_amount" class="form-control" required>
                    <label for="changed_amount" class="">Enter new amount : </label>
                  </div>


                  <div class="text-center">
                    
                    <input type="submit" class="btn  waves-effect waves-light" style="border-radius: 25px;
    background-color: #b1040e; color:white" value="Click to change" > 
                    
                   
   				 </div>      

</form>

	</div>


</div>

<%
	} else {
%>

<%@include file="adminlogin.jsp"%>
<%
	}
%>