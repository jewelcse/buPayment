
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.buPayments.model.Student"
    %>
    <%@include file="header.jsp" %>
     <% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    if(session.getAttribute("currentSessionStudent")!=null)
    {
    	Student currentUser = (Student)(session.getAttribute("currentSessionStudent"));
    %>
          <style>
.jumbotron {
    margin-left: auto;
    margin-right: auto;
    width: 750px;
    margin-top: 20px;
}

                    
                    .form-control:focus {border-color:rgba(100,100,100,1)!important;
-webkit-box-shadow: none!important;
    -moz-box-shadow: none!important;
    box-shadow: none!important;
}


</style>
     

  

<section class="">
<div class="jumbotron">
    
    <h2 class="h2-responsive font-weight-bold text-center ">University of Barishal</h2>
    <h6 class="h6-responsive font-weight-bold text-center ">Barishal-8200</h6>
    <h6 class="h6-responsive font-weight-bold text-center">Computer Science & Engineering</h6>
    <h3 class="h3-responsive font-weight-bold text-center my-4">Form Fill Up Fees Payment Form</h3>

    <div class="row">

       
        <div class="col-md-12 mb-md-0 mb-5 ">
        	
           

              <form action="devFormFillupFees" method="post">
 <input type="hidden" id="" name="s_id" class="form-control" value="<%= currentUser.getId() %>">
               
                <div class="row">
                    
                    <div class="col-md-6">
                        <div class="md-form mb-1"><label for="classRoll" class="">Class Roll</label>
                            <input type="text" id="classRoll" name="s_roll" readonly class="form-control" value="<%= currentUser.getS_roll() %>">
                            
                        </div>
                    </div>
               
                    <div class="col-md-6">
                        <div class="md-form mb-0"><label for="regNumber" class="">Registration No.</label>
                            <input type="text" id="regNumber" name="s_reg" readonly class="form-control" value="<%= currentUser.getS_reg() %>">
                            
                        </div>
                    </div>
                    

                </div>
    	<% 
						
						String semester = request.getParameter("semester");

						%> 
                
                
                   
                        <div class="md-form"><label for="regNumber" class="">Semester </label>
                            <input type="text" id="s_semester" name="s_semester" readonly class="form-control" value="<% 
								
                            	out.print(semester);
  								
								%>">
                            
                        </div>
               
                
                <div class="md-form"> <label for="orangeForm-name" class="">Student's Name</label>
                    <input type="text" id="sname" name="s_name" class="form-control" readonly value="<%= currentUser.getS_name() %>">
                   
                  </div>
                  
                  <div class="md-form"><label for="orangeForm-moname" class="">Mother's Name</label>
                    <input type="text" id="moname" name="s_mother_name" readonly value="<%= currentUser.getS_mother_name() %>" class="form-control">
                    
                  </div>
                  
                  <div class="md-form"><label for="orangeForm-faname" class="">Father's Name</label>
                    <input type="text" id="faname" name="s_father_name" readonly value="<%= currentUser.getS_father_name() %>" class="form-control">
                    
                  </div>
                  
                    <div class="md-form"> <label for="orangeForm-faname" class="">Department Name</label>
                  
                    <input type="text" id="daname" name="s_department" readonly value="<%= currentUser.getS_department() %>" class="form-control">
                   
                  </div>
                  
                    <div class="md-form"><label for="orangeForm-faname" class="">Faculty Name</label>
                    
                    <input type="text" id="facaname" name="s_faculty" readonly value="<%= currentUser.getS_faculty() %>" class="form-control">
                    
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
      <td>Semester Admission Fee</td>
      <td></td>
    </tr>
    <tr> 
      <td>Tution Fee</td>
      <td></td>
    </tr>
     <tr> 
      <td>Lab/Seminar Fee</td>
      <td></td>
    </tr>
    <tr> 
      <td>Transport Fee</td>
      <td></td>
    </tr>
    <tr>
      <td>Miscellaneous</td>
      <td></td>
    </tr>
    
     <tr>
      <td>Total</td>
      <td><input type="text" name ="s_formfillup_fee" value="2500" readonly></td>
    </tr>
   
  </tbody>
</table>
            
            
            </div>

            <div class="text-center text-md-right">
                <input type="submit" class="btn btn-primary mdb-color darken-3" value="pay now">
            </div>
            
            </form>
            
            <div class="status"></div>
        </div>


      

    </div>
</div>
</section>



</body>
</html>
<br><br>
<%@include file="footer.jsp" %>
<%}
else
response.sendRedirect("login.jsp");%>
