

			<p>
							<input type="radio" name="feetype" value="Development fee ">Development
							fee <input type="radio" name="feetype" value="Semester fee ">Semester
							fee <input type="radio" name="feetype" value="Form Fill up fee ">Form
							Fill up fee .
						</p>
						
						//application form
						
							<div class="custom-control form-control-lg custom-checkbox">
							<input type="checkbox" name="subject"
								class="custom-control-input" value="reducing amount"
								id="customCheck1"> <label class="custom-control-label"
								for="customCheck1">reducing amount / </label>

						</div>
						<div class="custom-control form-control-lg custom-checkbox">
							<input type="checkbox" name="subject2"
								class="custom-control-input" value="extending time"
								id="customCheck2"> <label class="custom-control-label"
								for="customCheck2">extending time for the/ </label>
						</div>
			


						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-success active"> <input
								type="radio" name="feetype" value="Development fee "
								id="option1" autocomplete="off" checked> Development fee
							</label> <label class="btn btn-success"> <input type="radio"
								name="feetype" value="Semester fee " id="option2"
								autocomplete="off"> Semester fee
							</label> <label class="btn btn-success"> <input type="radio"
								name="feetype" value="Form Fill up fee " id="option3"
								autocomplete="off"> Form Fill up fee .
							</label>
						</div>








                        <%
                        
                        
                  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                  String current_date = sdf.format(new Date());

            %>












<div class="col-md-12">
                                         	
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
       
/* adminDevelopmentFeesTableController dev = new adminDevelopmentFeesTableController();			
ArrayList<adminDevelopmentFeesTable> devitem = new ArrayList<adminDevelopmentFeesTable>();
devitem = dev.showDevelopmentFeesTable();
for (int i = 0; i < devitem.size(); i++){   	
 */
        %>



                        <%

/* if((current_date.compareTo(devitem.get(i).getStart_date()) > 0 && current_date.compareTo(devitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(devitem.get(i).getStart_date()) == 0 || current_date.compareTo(devitem.get(i).getEnd_date())==0)){

out.println(" <div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+"-------" + devitem.get(i).getSemester()+"----------|" + "----" + devitem.get(i).getStart_date()+"-------|" +"----" + devitem.get(i).getEnd_date()+"----|" +" <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px;  '> "+ devitem.get(i).getSemester()+"----------"+ devitem.get(i).getStart_date()+"  "+ devitem.get(i).getEnd_date()+" <img style='width:70px' src='images/time_up.gif'>");
} */

%>

                </div>

                <% 
    
   /*  }  */
    
    %>

            </div>
            
            
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">


                <%			
/* adminSemesterFeesTableController sem = new adminSemesterFeesTableController();

ArrayList<adminSemesterFeesTable> semitem = new ArrayList<adminSemesterFeesTable>();
semitem = sem.showSemesterFeesTable();

for (int i = 0; i < semitem.size(); i++){   
 */
    %>

                    <%

/* if((current_date.compareTo(semitem.get(i).getStart_date()) > 0 && current_date.compareTo(semitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(semitem.get(i).getStart_date()) == 0 || current_date.compareTo(semitem.get(i).getEnd_date())==0)){

out.println("<div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+"-------" + semitem.get(i).getSemester()+"----------|" + "----" + semitem.get(i).getStart_date()+"-------|" +"----" + semitem.get(i).getEnd_date()+"----|" +" <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px; '> "+ semitem.get(i).getSemester()+" Start Date:"+ semitem.get(i).getStart_date()+" End Date: "+ semitem.get(i).getEnd_date()+"<img style='width:70px' src='images/time_up.gif'>");
} */

        %>

            </div>
            <% 
/* 
}
 */
%>

        </div>
        
        
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <%

/*  adminFormFillUpFeesTableController formfillup = new adminFormFillUpFeesTableController();

ArrayList<adminFormFillUpFeesTable> formfillupitem = new ArrayList<adminFormFillUpFeesTable>();
formfillupitem = formfillup.showFormFillUpFeesTable();

for (int i = 0; i < formfillupitem.size(); i++){  */  %>

                <%
/* 
if((current_date.compareTo(formfillupitem.get(i).getStart_date()) > 0 && current_date.compareTo(formfillupitem.get(i).getEnd_date()) < 0) || (current_date.compareTo(formfillupitem.get(i).getStart_date()) == 0 || current_date.compareTo(formfillupitem.get(i).getEnd_date())==0)){

out.println("<div style='padding:5px;border-color: green; border-radius:5px; border:1px solid green; margin:2px; '>"+"-------" + formfillupitem.get(i).getSemester()+"----------|" + "----" + formfillupitem.get(i).getStart_date()+"-------|" +"----" + formfillupitem.get(i).getEnd_date()+"----|" +" <img style='width:80px' src='images/iprogress.gif'>");
}
else{
out.println(" <div style='display:none;padding:5px;border-color: red; border-radius:5px; border:1px solid red; margin:2px;'> "+ formfillupitem.get(i).getSemester()+" Start Date:"+ formfillupitem.get(i).getStart_date()+" End Date: "+ formfillupitem.get(i).getEnd_date()+"<img style='width:70px' src='images/time_up.gif'>");
}
 */
        %>
        </div>
        <%

/* }  */

%>                               			
          </div>   
          
            
          </div>