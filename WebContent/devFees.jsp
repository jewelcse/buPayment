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


                <script>
                    ''


                    $(document).ready(function () {
                        $('#SSemester').change(function (event) {
                            var semester = $('#SSemester').find(":selected").val();
                            console.log(semester);
                            var roll = $('#classRoll').val();
                            $.get('devFeesController', {
                                s_semester: semester,
                                s_roll: roll
                            }, function (responseText) {
                                $('#id2').val(responseText);
                                var add = responseText;
                                var newVal = +add + 600;
                                $('#sum').val(newVal);
                            });
                        });
                    });

                    function sum() {
                        var main = Document.getElementById("id1");
                        var misce = Document.getElementById("id2");

                        var total = main + misce;
                        return total;
                        alert(total)

                    }
                    function clearForms() {
                        var i;
                        for (i = 0; (i < document.forms.length); i++) {
                            document.forms[i].reset();
                        }
                    }
                </script>


                <body>
                    <section class="">
                        <div class="jumbotron">
                            <!--Section heading-->
                            <h2 class="h2-responsive font-weight-bold text-center ">University of Barishal</h2>
                            <h6 class="h6-responsive font-weight-bold text-center ">Barishal-8200</h6>
                            <h6 class="h6-responsive font-weight-bold text-center">Computer Science & Engineering</h6>
                            <h3 class="h3-responsive font-weight-bold text-center my-4">Development Fees Payment Form</h3>

                            <div class="row">
                                <div class="col-md-12 mb-md-0 mb-5  ">
                                    <form action="devFeesController?devfees_id=devfees" method="post">
                                        <div class="row">
                                            <input type="hidden" name="s_id" class="form-control" value="<%=currentUser.getId()%>">
                                            <div class="col-md-6 mb-1">
                                                <div class="md-form mb-0">
                                                    <label for="classRoll" class="">Class Roll</label>
                                                    <input type="text" id="classRoll" name="s_roll" readonly class="form-control" value="<%=currentUser.getS_roll()%>">

                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="md-form mb-0">
                                                    <label for="regNumber" class="">Registration No.</label>
                                                    <input type="text" id="regNumber" name="s_reg" readonly class="form-control" value="<%=currentUser.getS_reg()%>">

                                                </div>
                                            </div>
                                        </div>

                                        <% 
                    
                    String semester = request.getParameter("semester");
                    if(semester != null){
                        session.setAttribute("semester_session",semester);
                    }
                     
                    
                    %>
                                            <div class="md-form">
                                                <div class="md-form mb-0">
                                                    <select class="browser-default custom-select custom-select-lg mb-3" name="s_semester" id="SSemester">
                                                        <option>Confirm Semester</option>
                                                        <option value="<% 
                            String semester1 =(String)session.getAttribute("semester_session"); 
                            out.print(semester1);
                              
                            %>">
                                                            <% 
                            out.print(semester1); 
                            if(session != null)
                            {
                                session.removeAttribute("semester_session");
                            }
                            %>
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="md-form">
                                                <label for="orangeForm-name" class="">Student's Name</label>
                                                <input type="text" id="sname" name="s_name" readonly class="form-control" value="<%=currentUser.getS_name()%>">

                                            </div>

                                            <div class="md-form">
                                                <label for="orangeForm-moname" class="">Mother's Name</label>
                                                <input type="text" id="moname" name="s_mother_name" readonly value="<%=currentUser.getS_mother_name()%>" class="form-control">

                                            </div>

                                            <div class="md-form">
                                                <label for="orangeForm-faname" class="">Father's Name</label>
                                                <input type="text" id="faname" name="s_father_name" readonly value="<%=currentUser.getS_father_name()%>" class="form-control">

                                            </div>

                                            <div class="md-form">
                                                <label for="orangeForm-faname" class="">Department Name</label>

                                                <input type="text" id="daname" name="s_department" readonly value="<%=currentUser.getS_department()%>" class="form-control">

                                            </div>

                                            <div class="md-form">
                                                <label for="orangeForm-faname" class="">Faculty Name</label>

                                                <input type="text" id="facaname" name="s_faculty" readonly value="<%=currentUser.getS_faculty()%>" class="form-control">

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
                                                            <td>Development Fees</td>
                                                            <!-- বিভাগ উন্নয়ন ফি ,বিবিধ,মোট-->
                                                            <td>
                                                                <input type="text" id="id1" value="600" readonly>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Miscellaneous</td>
                                                            <td>
                                                                <input type="text" id="id2" name="amount" readonly>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Total</td>
                                                            <td>
                                                                <input type="text" id="sum" name="amount" readonly>
                                                            </td>
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
                <br>
                <br>
                <%@include file="footer.jsp"%>
                    <%
} else{
    response.sendRedirect("login.jsp");

}
%>