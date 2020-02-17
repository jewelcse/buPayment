package com.buPayments.restapi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.buPayments.controller.dbConnection;
import com.buPayments.model.Student;
import com.mysql.jdbc.PreparedStatement;


@WebServlet("/restApiProfileController")
public class restApiProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	static dbConnection db = new dbConnection();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("rollno");
		
		System.out.println(id);
		
		  Statement stmt = null;    
		  Connection myConn = null;
		  PreparedStatement myStmt = null;
		  ResultSet myRs = null;
	     
		  
			
			// create sql statement
			String sql = "select * from student where s_Roll = '"+id+"'";
			
		    try {
		    	myConn = db.getCon();
				stmt=myConn.createStatement();
				 myRs = stmt.executeQuery(sql);
				    boolean more = myRs.next();
				    
				    if (!more) 
				      {
				         System.out.println("login-failed");
				      } 
				    
				    else if (more) 
				      {
				    	
				    	
				    	String d_id  = myRs.getString("s_Id");
				    	String d_roll  = myRs.getString("s_Roll");
				    	String d_reg  = myRs.getString("s_Reg");
				    	String d_name  = myRs.getString("s_Name");
				    	String d_fname  = myRs.getString("s_Father_name");
				    	String d_mname  = myRs.getString("s_Mother_name");
				    	String d_email = myRs.getString("s_Email");
				    	String d_phone  = myRs.getString("s_Phone");
				    	String d_semester  = myRs.getString("s_Semester");
				    	String d_dept  = myRs.getString("s_Department");
				    	String d_faculty  = myRs.getString("s_Faculty");
				    	
				        
				        JSONObject profile = new JSONObject();
				        profile.put("d_id",d_id);
				        profile.put("d_roll",d_roll);
				        profile.put("d_reg",d_reg);
				        profile.put("d_name",d_name);
				        profile.put("d_fname",d_fname);
				        profile.put("d_mname",d_mname);
				        profile.put("d_email",d_email);
				        profile.put("d_phone",d_phone);
				        profile.put("d_semester",d_semester);
				        profile.put("d_dept",d_dept);
				        profile.put("d_faculty",d_faculty);
						
						PrintWriter pw = response.getWriter();
						pw.print(profile);
				        
				      }
				    
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
