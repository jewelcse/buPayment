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



                        <%
                  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                  String current_date = sdf.format(new Date());

            %>
            
            <style>
            
            *{
            box-sizing:border-box;
            }
                            .section1 {
                                background-image: url("images/BUM.jpg");
                                background-repeat: no-repeat;
                                background-size: cover;

                            }
            
            .form-control:focus {border-color:rgba(100,100,100,1)!important;
-webkit-box-shadow: none!important;
    -moz-box-shadow: none!important;
    box-shadow: none!important;
}
.notice-board{
height:300px;
border: 2px solid black;
margin:20px;
box-sizing:border-box;
}
     
            </style>


                            <body onload="noBack();">
                                <div class="row section1">
                                    <div class="col-md-8">

                                        <div class="mt-5">
                                            <div class="css-typing m-auto">

                                                <p>Well-come to Barishal University Online Payment System</p>
                                                <p>University of Barishal</p>

                                            </div>


                                        </div>


                                    </div>

                                    <div class="col-md-4">
                                        <div class="jumbotron mt-4 mr-5 validity">

                                            <h2 class="h4 text-responsive font-weight-bold text-center ">University of Barishal</h2>
                                            <h6 class="h5 text-responsive font-weight-bold text-center ">Barishal-8200</h6>
                                            <h6 class="h5 text-responsive font-weight-bold text-center">Computer Science & Engineering</h6>
                                            <p class="text-center ">(
                                                <strong>Checking validity</strong>)</p>

                                            <form action="checkValidityController" method="get">
                                                <div class="md-form">
                                                    <div class="md-form mb-0">
                                                        <select onchange="selected()" class="browser-default custom-select custom-select-lg mb-3" name="fee_type" id="fee_type">
                                                            <option value="null">Select</option>
                                                            <option value="devfee">Development Fee</option>
                                                            <option value="semfee">Semester fee</option>
                                                            <option value="formfee">FormFill Up fee</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="md-form">
                                                    <div class="md-form mb-0">
                                                        <select onchange="selected()" class="browser-default custom-select custom-select-lg mb-3" name="semester" id="semester">
                                                            <option value="null">Select semester</option>
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
                                                    <input type="submit" class="btn btn-primary" value="Click here ">
                                                </div>
                                            </form>
                                        </div>


                                    </div>

                                </div>
                                <hr>
                                <div class="">


                                    <p id="notice-board">Notice Board</p>


                                </div>


                                <hr>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 notice-board">

                                        <div class="p-2 mt-3 ">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item">
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
                                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


                                                    <%	
                                            
adminDevelopmentFeesTableController dev = new adminDevelopmentFeesTableController();			
ArrayList<adminDevelopmentFeesTable> devitem = new ArrayList<adminDevelopmentFeesTable>();
devitem = dev.showDevelopmentFeesTable();
for (int i = 0; i < devitem.size(); i++){   	

                                            %>



                                                        <%
              
if((current_date.compareTo(devitem.get(i).getStart_date()) > 0 && current_date.compareTo(devitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(devitem.get(i).getStart_date()) == 0 || current_date.compareTo(devitem.get(i).getEnd_date())==0)){

out.println(" <div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+ devitem.get(i).getSemester()+" Start Date:" + devitem.get(i).getStart_date()+" End Date: " + devitem.get(i).getEnd_date()+" ============= > <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px;  '> "+ devitem.get(i).getSemester()+" Start Date:"+ devitem.get(i).getStart_date()+" End Date: "+ devitem.get(i).getEnd_date()+" ============= > <img style='width:70px' src='images/time_up.gif'>");
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

out.println(" <div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px;'>"+ semitem.get(i).getSemester()+" Start Date:" + semitem.get(i).getStart_date()+" End Date: " + semitem.get(i).getEnd_date()+" ============= > <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px; '> "+ semitem.get(i).getSemester()+" Start Date:"+ semitem.get(i).getStart_date()+" End Date: "+ semitem.get(i).getEnd_date()+" ============= > <img style='width:70px' src='images/time_up.gif'>");
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

out.println(" <div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px;'>"+ formfillupitem.get(i).getSemester()+" Start Date:" + formfillupitem.get(i).getStart_date()+" End Date: " + formfillupitem.get(i).getEnd_date()+" ============= > <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px;'> "+ formfillupitem.get(i).getSemester()+" Start Date:"+ formfillupitem.get(i).getStart_date()+" End Date: "+ formfillupitem.get(i).getEnd_date()+" ============= > <img style='width:70px' src='images/time_up.gif'>");
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
                                <div class="col-md-6">
                                   
                                </div>
                                </div>




                            </body>

                            <br>
                            <%@include file="footer.jsp" %>