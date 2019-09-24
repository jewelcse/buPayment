<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.buPayments.model.Admin"
	import="com.buPayments.controller.*" import="com.buPayments.model.*"
	import="java.util.ArrayList"%>



<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
	new java.util.Date();
	if (session.getAttribute("currentSessionForSuperAdmin") != null) {
%>

<%@include file="admin-header.jsp"%>

<style>

.privilege{
border:1px solid black;

}

.custom-control-label::before, 
.custom-control-label::after {
top: 0.6rem;
width: 1.0rem;
height: 1.0rem;
}


</style>


        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="super-admin.jsp">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Add Sub-Admin</li>
        </ol>
        
        


	<div class="row ml-5 mt-5">
		<div class="col-md-5">
			<label>Add new Admin:</label>
				<form class="form-controll" action="adminController?action=addNewAdmin"  method="post">
              
                  <div class="md-form mb-2">
                    	<input type="text" name="name" class="form-control" placeholder="Name" required>  
                  </div>
                  <div class="privilege mt-3"><h3 class="text-canter">Privileges</h3>
						<div class="items p-2">
						
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item1" id="customCheck1" value="1">
    					<label class="custom-control-label " for="customCheck1">Update Development Fee</label>
					</div>
					
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item2" id="customCheck2" value="1">
    					<label class="custom-control-label" for="customCheck2">  Students Information</label>
					</div>	
					
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item3" id="customCheck3" value="1">
    					<label class="custom-control-label" for="customCheck3">Application Letters</label>
					</div>	
					
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item4" id="customCheck4" value="1">
    					<label class="custom-control-label" for="customCheck4">Update Development Fees Table</label>
					</div>	
					
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item5" id="customCheck5" value="1">
    					<label class="custom-control-label" for="customCheck5">Update Semester Fees Table</label>
					</div>	
					
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item6" id="customCheck6" value="1">
    					<label class="custom-control-label" for="customCheck6">Update Formfillup Fees Table</label>
					</div>	
					
					<div class="custom-control form-control-lg custom-checkbox">
    					<input type="checkbox" class="custom-control-input" name="item7" id="customCheck7" value="1" checked>
    					<label class="custom-control-label" for="customCheck7">Show All payments</label>
					</div>
					
					
						                 
                  <!-- 	<input type="checkbox" name="item1" class="" value="1"> Update Development Fee <br>
                  	<input type="checkbox" name="item2" class="" value="1"> Students Information <br>
                  	<input type="checkbox" name="item3" class="" value="1"> Application Letters <br>
                  	<input type="checkbox" name="item4" class="" value="1"> Update Development Fees Table <br>
                  	<input type="checkbox" name="item5" class="" value="1"> Update Semester Fees Table  <br>
                  	<input type="checkbox" name="item6" class="" value="1"> Update Formfillup Fees Table  <br> -->
						
						
						
						</div>
                  	
                  	</div>
                  <div class="text-center mt-2">
                    <input type="submit" class="btn btn-primary" value="Add New Admin" > 
   				 </div>      

				</form>
		
		</div>
		
		

	</div>



<%@include file="admin-footer.jsp"%>
<%
	} else {
%>

<%@include file="admin-login.jsp"%>
<%
	}
%>

