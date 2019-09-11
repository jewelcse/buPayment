package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import netscape.javascript.JSObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.buPayments.model.Devfees;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/devFeesController")
public class devFeesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static dbConnection db = new dbConnection();

    public devFeesController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String semester = request.getParameter("s_semester");
		String roll= request.getParameter("s_roll");

		
		try {

			String	amount =  mainController.check_development_fee(semester,roll);

			PrintWriter out = response.getWriter();  
			//request.setAttribute("amount", amount);
			
			//response.setContentType("text/plain");
			//response.setCharacterEncoding("UTF-8");
			//response.getWriter().write(amount);
	        out.println(amount);
	        //rd=request.getRequestDispatcher("/test.jsp");
	        
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//rd.forward(request, response);
		
	}
	
	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sub=request.getParameter("devfees_id");
		
		
		if(sub.equals("devfees")){
			
			String id = request.getParameter("s_id");
			String semester = request.getParameter("s_semester");
			String development_fee = request.getParameter("amount");


			
			Devfees newDevfees = new Devfees(id,semester,development_fee);
			
			try {
				String rs = mainController.addDevFeestoDb(newDevfees);
				
				if(rs.equals("success")){
					
					response.sendRedirect("devprocess.jsp");
				}
				else{
					response.sendRedirect("already_payment.jsp");
				}	
					
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		else if(sub.equals("application_form")){
		
			String id = request.getParameter("id");
			String semester = request.getParameter("semester");
			String subject= request.getParameter("subject");
			String subject2 = request.getParameter("subject2");
			String feetype= request.getParameter("feetype");
			String reason= request.getParameter("reason");
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
						   + "(semester,subject,feeType,reason,student_id) "
						   + "values (?,?,?,?,?)";
				
				try {
					myStmt = (PreparedStatement) myConn.prepareStatement(sql);
					myStmt.setString(1, semester);
					myStmt.setString(2, newSub);
					myStmt.setString(3, feetype);
					myStmt.setString(4, reason);
					myStmt.setString(5, id);
				
					myStmt.execute();
					
					System.out.print("application-submit-success");
					response.sendRedirect("success_form.jsp");
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
		}
		else{
			System.out.println("nothing");
		}
	
		
	}

}
