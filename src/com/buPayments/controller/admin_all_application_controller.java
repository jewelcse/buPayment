package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import com.buPayments.model.Devfees;
import com.buPayments.model.Student;
import com.buPayments.model.allApplication;

/**
 * Servlet implementation class admin_all_application_controller
 */
@WebServlet("/admin_all_application_controller")
public class admin_all_application_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public admin_all_application_controller() {
        super();
    }
    
    dbConnection db = new dbConnection();
	ArrayList<allApplication> applicationList = new ArrayList<allApplication>();
	
	public ArrayList<allApplication> showAllApplicationFun(){
		String sql = "select * from  application_form_table ORDER BY id DESC ";
		Connection con = db.getCon();
		try {

			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	
		    
		    	allApplication newItem =  new allApplication();
		    	
		    	String id  = myRs.getString("id");
		    	String semester  = myRs.getString("semester");
		    	String subject  = myRs.getString("subject");
		    	String feeType  = myRs.getString("feeType");
		    	String reason  = myRs.getString("reason");
		    	String student_id  = myRs.getString("student_id");
		    	String dept  = myRs.getString("department");

		    	newItem.setId(id);
		    	newItem.setSemester(semester);
		    	newItem.setSubject(subject);
		    	newItem.setFeeType(feeType);
		    	newItem.setReason(reason);
		    	newItem.setStudent_id(student_id);
		    	newItem.setDept(dept);
		    	applicationList.add(newItem);
			}
		    
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return applicationList;
	}
    
    
    
    
    
    
    
		
    
    
    
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String application_id =request.getParameter("stu_id");
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		myConn =db.getCon();
		ResultSet myRs = null;
		String result = "";
		
		
		allApplication newItem =  new allApplication();
		Student stuItem = new Student();
	
		String select_sql = "select * from application_form_table where id = '"+application_id+"' ";
		
		try {
			stmt = myConn.createStatement();
			myRs = stmt.executeQuery(select_sql);  
			boolean more = myRs.next();
			
			
			if (!more) 
		      {
		         System.out.println("none");
		      } 
		    
		    else if (more) 
		      {
		    	
		    	
		    	String id  = myRs.getString("id");
		    	String semester  = myRs.getString("semester");
		    	String subject  = myRs.getString("subject");
		    	String feeType  = myRs.getString("feeType");
		    	String reason  = myRs.getString("reason");
		    	String student_id  = myRs.getString("student_id");
		    	
		    	System.out.println(id);
		    	String sql = "select * from student where s_Id = '"+student_id+"' ";
		    	stmt = myConn.createStatement();
				myRs = stmt.executeQuery(sql);  
				boolean res = myRs.next();
				
				if(res) {
					stuItem.setS_name(myRs.getString("s_Name"));
					stuItem.setS_department(myRs.getString("s_Department"));
					stuItem.setS_roll(myRs.getString("s_Roll"));
				}else {
					System.out.println("student err");
				}
		    	
		    	
		    	newItem.setId(id);
		    	newItem.setSemester(semester);
		    	newItem.setSubject(subject);
		    	newItem.setFeeType(feeType);
		    	newItem.setReason(reason);
		    	newItem.setStudent_id(student_id);
		    	
		    	System.out.println(newItem.getId());
		    	
		    	 //// PrintWriter out = response.getWriter();  
		  	     request.setAttribute("newItem", newItem);
		  	   request.setAttribute("stuItem", stuItem);
		  	    
		  	    
		  		request.getRequestDispatcher("admin_preview_application.jsp").forward(request, response);
		    	
		    	//response.sendRedirect("admin_preview_application.jsp");
		      }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	  
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
