package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

//import netscape.javascript.JSObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.text.StringEscapeUtils;

import com.buPayments.Dao.studentsDao;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Department;
import com.buPayments.model.Devfees;
import com.buPayments.model.Student;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.mysql.jdbc.PreparedStatement;

import  com.buPayments.sslcommerz.TransactionInitiator;

@WebServlet("/devFeesController")
public class devFeesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static dbConnection db = new dbConnection();

    public devFeesController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	/*	String semester = request.getParameter("s_semester");
		String roll= request.getParameter("s_roll");
		String deptname = request.getParameter("s_department");
		
		System.out.println(semester + roll + deptname);
		
		Department dept ;
		
	    dept = mainController.getDepartmentIdByDepartmentName(deptname);
	    
	    String departmentId = dept.getDeptId();
	    
	    System.out.println("dept id "+departmentId);
	    
	    adminDevelopmentFeesTable devfee;
	    devfee = mainController.findDevelopmentFee(departmentId,semester);
		
		System.out.println("devfee = "+devfee.getMain_fee() + devfee.getMisce_fee());
		
		ChangedFees changedfee = mainController.findChangedDevelopmentFee(roll,semester,departmentId);
		
		System.out.println("chfee "+changedfee.getChanged_amount());
		String chfee = changedfee.getChanged_amount();
		
		if(chfee ==  null) {
			chfee = "0";
			
		}
		
		
		PrintWriter out = response.getWriter();
		
		request.setAttribute("mainfee", devfee.getMain_fee());
		request.setAttribute("miscefee", devfee.getMisce_fee());
		request.setAttribute("changedfee", chfee);
		
		request.getRequestDispatcher("devFees.jsp").forward(request, response);
		
		*/
		
	}
	
	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sub=request.getParameter("devfees_id");
		
		
		if(sub.equals("devfees")){
			
			String id = request.getParameter("s_id");
			String semester = request.getParameter("s_semester");
			String development_fee = request.getParameter("total_amount");
			System.out.println(semester);
			System.out.println("id"+id +"semester "+ semester+ " amount "+development_fee);
			if( ! semester.equals("0")) {
			
				Devfees newDevfees = new Devfees(id,semester,development_fee);
				String rand = UUID.randomUUID().toString();
				System.out.println(id);
				Student student = studentsDao.getStudentProfileById(id);
				System.out.println("name"+student.getS_name());
				Devfees devfees = new Devfees();
				
				
				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				LocalDateTime now = LocalDateTime.now();
				String time = (dtf.format(now));
				
				String trans_id = time + rand;
				
				System.out.println(student.toString());
				
				devfees.setS_id(id);
				devfees.setS_semester(semester);
				devfees.setS_semester_fee(development_fee);
				devfees.setTrans_id(trans_id);
				
				
				com.buPayments.sslcommerz.TransactionInitiator trans = new com.buPayments.sslcommerz.TransactionInitiator();
				
				
				String response1 = trans.initTrnxnRequest(student, devfees);
				System.out.println("LINE 131 "+ response1);
				
				response.sendRedirect(response1);
			
				/*try {
					String rs = mainController.addDevFeestoDb(newDevfees);
				
						if(rs.equals("success")){
					
							response.sendRedirect("devprocess.jsp");
						}
						else{
							response.sendRedirect("already_payment.jsp");
						}	
					
					} catch (SQLException e) {
						e.printStackTrace();
					}*/
			}
			else {
				HttpSession session = request.getSession(true);  
				 String pagename = (String) session.getAttribute("current_page");
				System.out.println("show js msg for confirm semester");
				
				response.sendRedirect(pagename);
			}
		}
		
		else if(sub.equals("application_form")){
		
			String id = request.getParameter("id");
			String semester = request.getParameter("semester");
			String subject= request.getParameter("subject");
			String subject2 = request.getParameter("subject2");
			String feetype= request.getParameter("feetype");
			String reason= request.getParameter("reason");
			//String reason1 = StringEscapeUtils.
			String dept= request.getParameter("s_dept");
			String newSub = "";
			
			if(subject!=null && subject2!=null){
				newSub  = subject+ " and " + subject2;
			}
			else if(subject.length()>0){
				newSub = subject;
			}
			else if(subject2.length()>0){
				newSub = subject2;
			}
			else{
				newSub="";
			}
			
			Connection myConn = null;
			PreparedStatement myStmt = null;

			myConn =db.getCon();
			
			String sql = "insert into application_form_table "
						   + "(semester,subject,feeType,reason,student_id,department) "
						   + "values (?,?,?,?,?,?)";
				
				
					try {
						myStmt = (PreparedStatement) myConn.prepareStatement(sql);
						myStmt.setString(1, semester);
						myStmt.setString(2, newSub);
						myStmt.setString(3, feetype);
						myStmt.setString(4, reason);
						myStmt.setString(5, id);
						myStmt.setString(6, dept);
					
						myStmt.execute();
						
						System.out.print("application-submit-success");
						//response.setContentType("application/pdf");
						//response.setHeader("content-disposition","attachment; filename="+"Filename.pdf");
						RequestDispatcher dispatcher =  request.getRequestDispatcher("success_form.jsp");
						dispatcher.forward(request, response);
						
					
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				
		}
		else{
			System.out.println("nothing");
		}
	
		
	}

}
