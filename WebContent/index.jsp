<%@page import="com.buPayments.controller.* "%>
    <%@ page import = "java.util.Date" %>
        <%@ page import = "java.text.SimpleDateFormat" %>
            <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" 
import="com.buPayments.model.*"
import="com.buPayments.model.Devfees"
import="com.buPayments.controller.*"
import="java.util.ArrayList"

%>

                <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
                    <%@include file="header.jsp"%>
                    
                    
<style>

             				.section1 {
             					background-image:url("images/BU.jpg");
                				background-repeat: no-repeat;
                				background-size: cover;
                				background-color:red;
                				

           					}
           					.cover-img {
                                width: 100%;
                            }

             				.section1 {
                				background-repeat: no-repeat;
                				background-size: cover;
                				background-color:red;
                				
           					}

     						.css-typing h4 {
                                margin-left: auto;
                                margin-right: auto;
                                border-right: .15em solid orange;
                                font-family: "Courier";
                                white-space: nowrap;
                                overflow: hidden;
                            }

                            .css-typing h4:nth-child(1) {
                                width: 13.7em;
                                color: white;
                                background-color: #004040;
                                OPACITY: 0.8;
                                padding: 5px;
                                -webkit-animation: type 3s steps(50, end);
                                animation: type 3s steps(50, end);
                                -webkit-animation-fill-mode: forwards;
                                animation-fill-mode: forwards;
                            }

                            .css-typing h4:nth-child(2) {
                                width: 13.7em;
                                opacity: 0.7;
                                color: white;
                                background-color: #004040;
                                padding: 5px;
                                -webkit-animation: type2 2s steps(40, end);
                                animation: type2 2s steps(40, end);
                                -webkit-animation-delay: 2s;
                                animation-delay: 3s;
                                -webkit-animation-fill-mode: forwards;
                                animation-fill-mode: forwards;
                            }


</style>


                        <%
                        
                        
                  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                  String current_date = sdf.format(new Date());

            %>




                            <body onload="noBack();">
                                <div class="container">
                                    <div class="row section1 mb-4">
                                            <div class="col-md-8">
                                            	<div class="mt-5">
                                                    <div class="css-typing m-auto ">
                                                        <h4 class="text-responsive font-weight-bold ">
                                                        Online Payment System
                                                        </h4>
                                                        <h4 class="text-responsive font-weight-bold">
                                                        University of Barishal
                                                        </h4>
                                                        
                                                        
                                                    </div>
												</div>
											</div>
											
											<div class="col-md-4">
                                                <div class="checkBox m-4 validity">

                                                    <h2 class="h4 text-responsive font-weight-bold text-center ">University of Barishal</h2>
                                                    <h6 class="h5 text-responsive font-weight-bold text-center ">Barishal-8200</h6>
                                                    <h6 class="h5 text-responsive font-weight-bold text-center">Computer Science & Engineering</h6>
                                                    <p class="text-center ">(
                                                        <strong>Checking validity</strong>)
 <%
    if (request.getParameter("date_expire") == null) { 
    
       
  } else {
	  out.println("<span style='color:red;font-weight:bold'> Date Over</span>");
    }
%>
</p>
                                                    <form action="checkValidityController" method="get">
                                                        <div class="md-form">
                                                            <div class="md-form mb-0">
                                                                <select required onchange="selected()" class="browser-default custom-select custom-select-lg mb-3" name="fee_type" id="fee_type">
                                                                    <option value="">Select</option>
                                                                    <option value="devfee">Development Fee</option>
                                                                    <option value="semfee">Semester fee</option>
                                                                    <option value="formfee">FormFill Up fee</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="md-form">
                                                            <div class="md-form mb-0">
                                                                <select onchange="selected()" required class="browser-default custom-select custom-select-lg mb-3" name="semester" id="semester">
                                                                    <option value="">Select semester</option>
                                                                    <option value="1st">1
                                                                        <sup>st</sup>
                                                                    </option>
                                                                    <option value="2nd">2
                                                                        <sup>nd</sup>
                                                                    </option>
                                                                    <option value="3rd">3
                                                                        <sup>rd</sup>
                                                                    </option>
                                                                    <option value="4th">4
                                                                        <sup>th</sup>
                                                                    </option>
                                                                    <option value="5th">5
                                                                        <sup>th</sup>
                                                                    </option>
                                                                    <option value="6th">6
                                                                        <sup>th</sup>
                                                                    </option>
                                                                    <option value="7th">7
                                                                        <sup>th</sup>
                                                                    </option>
                                                                    <option value="8th">8
                                                                        <sup>th</sup>
                                                                    </option>
                                                                </select>
                                                            </div>
                                                        </div>


                                                        <div class="text-center text-md-right">
                                                            <input type="submit" class="btn btn-primary submitBtn1" onclick="check_field()" value="Click here ">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                         </div> <!--  end row -->
                                         
                                         <div class="row">
                                         	<div class="col-md-6">
                                         		<article class="row single-post mt-5 no-gutters">
        <div class="col-md-12">
            <div class="">
            	<div class="image-wrapper float-left pr-3">
                <img src="images/logo.png"  class="rounded-circle" alt="">
            </div>
            </div>
           <div class="">
           	 <div class="single-post-content-wrapper p-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil ad, ex eaque fuga minus reprehenderit asperiores earum incidunt. Possimus maiores dolores voluptatum enim soluta omnis debitis quam ab nemo necessitatibus.
                <br><br>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil ad, ex eaque fuga minus reprehenderit asperiores earum incidunt. Possimus maiores dolores voluptatum enim soluta omnis debitis quam ab nemo necessitatibus.
            </div>
           </div>
        </div>
    </article>
                                         	
                                         	</div><!--  end col-md-6 -->
                                         	
                                         	<div class="col-md-6">
                                         		<div class="notics">
                                         			
                                         			
                                         			<div class="notice-board">

            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" class="licolor">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Development Fees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Semester Fees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Form Fill up Fees</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
            <table class="table table-bordered">
            	<thead>
            	<th>Semester</th>
            	<th>Start Date</th>
            	<th>End Date</th>
            	<th>Status</th>
            
            	</thead>
            	</table>
            
            
            
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


                    <%	
        
adminDevelopmentFeesTableController dev = new adminDevelopmentFeesTableController();			
ArrayList<adminDevelopmentFeesTable> devitem = new ArrayList<adminDevelopmentFeesTable>();
devitem = dev.showDevelopmentFeesTable();
for (int i = 0; i < devitem.size(); i++){   	

        %>



                        <%

if((current_date.compareTo(devitem.get(i).getStart_date()) > 0 && current_date.compareTo(devitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(devitem.get(i).getStart_date()) == 0 || current_date.compareTo(devitem.get(i).getEnd_date())==0)){

out.println(" <div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+"-------" + devitem.get(i).getSemester()+"----------|" + "----" + devitem.get(i).getStart_date()+"-------|" +"----" + devitem.get(i).getEnd_date()+"----|" +" <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px;  '> "+ devitem.get(i).getSemester()+"----------"+ devitem.get(i).getStart_date()+"  "+ devitem.get(i).getEnd_date()+" <img style='width:70px' src='images/time_up.gif'>");
}

%>

                </div>

                <% 
    
    } 
    
    %>

            </div>
            
            
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">


                <%			
adminSemesterFeesTableController sem = new adminSemesterFeesTableController();

ArrayList<adminSemesterFeesTable> semitem = new ArrayList<adminSemesterFeesTable>();
semitem = sem.showSemesterFeesTable();

for (int i = 0; i < semitem.size(); i++){   

    %>

                    <%

if((current_date.compareTo(semitem.get(i).getStart_date()) > 0 && current_date.compareTo(semitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(semitem.get(i).getStart_date()) == 0 || current_date.compareTo(semitem.get(i).getEnd_date())==0)){

out.println("<div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+"-------" + semitem.get(i).getSemester()+"----------|" + "----" + semitem.get(i).getStart_date()+"-------|" +"----" + semitem.get(i).getEnd_date()+"----|" +" <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px; '> "+ semitem.get(i).getSemester()+" Start Date:"+ semitem.get(i).getStart_date()+" End Date: "+ semitem.get(i).getEnd_date()+"<img style='width:70px' src='images/time_up.gif'>");
}

        %>

            </div>
            <% 

}

%>

        </div>
        
        
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <%

adminFormFillUpFeesTableController formfillup = new adminFormFillUpFeesTableController();

ArrayList<adminFormFillUpFeesTable> formfillupitem = new ArrayList<adminFormFillUpFeesTable>();
formfillupitem = formfillup.showFormFillUpFeesTable();

for (int i = 0; i < formfillupitem.size(); i++){   %>

                <%

if((current_date.compareTo(formfillupitem.get(i).getStart_date()) > 0 && current_date.compareTo(formfillupitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(formfillupitem.get(i).getStart_date()) == 0 || current_date.compareTo(formfillupitem.get(i).getEnd_date())==0)){

out.println("<div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+"-------" + formfillupitem.get(i).getSemester()+"----------|" + "----" + formfillupitem.get(i).getStart_date()+"-------|" +"----" + formfillupitem.get(i).getEnd_date()+"----|" +" <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px;'> "+ formfillupitem.get(i).getSemester()+" Start Date:"+ formfillupitem.get(i).getStart_date()+" End Date: "+ formfillupitem.get(i).getEnd_date()+"<img style='width:70px' src='images/time_up.gif'>");
}

        %>
        </div>
        <%

} 

%>                               			
          </div>   
          
            
          </div>
          </div>
          </div>                      		
                                         	
                                         	
                                         	</div><!--  end col-md-6 -->
                                         
                                         </div><!--  end row -->
                                         
                                         
                                      </div><!--  end container -->
                                      
                                      

                                      
                                      
                 <script>
                 
                 
                 
                 
                 
                 function check_fields(){
           		  
           		  var semester =  document.getElementById('semester').selectedOptions[0].value;
           		var semester =  document.getElementById('fee_type').selectedOptions[0].value;
           		  console.log(semester);
           		  
           		  if(semester == "0")
                     {
               	  		alert("Confirm your Semester");
               	  }
           		  
           	  	}
                 
                 
                 
                 
                 
                 
                 
                 
                 </script>  <%@include file="footer.jsp" %>
                               </body>

                           
                            