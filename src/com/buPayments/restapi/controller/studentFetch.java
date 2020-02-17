package com.buPayments.restapi.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

import org.json.JSONException;
import org.json.JSONObject;

import com.buPayment.restapi.model.studentProfile;
import com.buPayments.controller.dbConnection;
import com.mysql.jdbc.PreparedStatement;

public class studentFetch {
	
	static dbConnection db = new dbConnection();
	
	public static studentProfile getStudentProfile(studentProfile stp) {
		
			Statement stmt = null;    
			Connection myConn = null;
			PreparedStatement myStmt = null;
			ResultSet myRs = null;
			
			String roll = stp.getS_roll();
			
			System.out.println("line 30 in studentFetch class "+ roll);
			
			String sql = "select * from student where s_Roll = '"+roll+"'";

		    try {
		    	myConn = db.getCon();
				stmt=myConn.createStatement();
				 myRs = stmt.executeQuery(sql);
				    boolean more = myRs.next();
				    
				    if (!more) 
				      {
				         System.out.println("SYSTEM ERROR");
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
				    	
				    	stp.setId(d_id);
				    	stp.setS_roll(d_roll);
				    	stp.setS_reg(d_reg);
				    	stp.setS_name(d_name);
				    	stp.setS_father_name(d_fname);
				    	stp.setS_mother_name(d_mname);
				    	stp.setS_email(d_email);
				    	stp.setS_phone(d_phone);
				    	stp.setS_semester(d_semester);
				    	stp.setS_department(d_dept);
				    	stp.setS_faculty(d_faculty);
				    			    	
				    		
				    	}
				    	
  
				    
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
		    
			return stp;
		    
		    
		
	}

	public static  String getChangedAmount(String roll, String sem) {
		
		Statement stmt = null;    
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		
		String changedamount = null;
		
		String sql = "select * from changed_development_fee where roll_no = '"+roll+"' and semester = '"+sem+"'";

	    try {
	    	myConn = db.getCon();
			stmt=myConn.createStatement();
			 myRs = stmt.executeQuery(sql);
			  
			   
			   while(myRs.next()) {
				   
				   changedamount = myRs.getString("changed_amount");
				   System.out.println("Changed amount for "+ roll + "is  => "+ changedamount);
			   }
			    
   
			    
	    }catch (Exception e) {
		// TODO: handle exception
	    }
	    
	   
	    return changedamount;
	}

}
