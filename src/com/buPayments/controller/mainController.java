package com.buPayments.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;
import com.mysql.jdbc.PreparedStatement;

public class mainController {

static dbConnection db = new dbConnection();
	
	public static void addStudent(Student newStudent) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "insert into student "
					   + "(s_Roll,s_Reg,s_Name,s_Father_name,s_Mother_name,s_Email,s_Phone,s_Pass,s_Semester,s_Department,s_Faculty) "
					   + "values (?,?,?,?,?,?,?,?,?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			// set the param values for the student
						myStmt.setString(1, newStudent.getS_roll());
						myStmt.setString(2, newStudent.getS_reg());
						myStmt.setString(3, newStudent.getS_name());
						myStmt.setString(4, newStudent.getS_mother_name());
						myStmt.setString(5, newStudent.getS_father_name());
						myStmt.setString(6, newStudent.getS_email());
						myStmt.setString(7, newStudent.getS_faculty());
						myStmt.setString(8, newStudent.getS_department());
						myStmt.setString(9, newStudent.getS_semester());
						myStmt.setString(10, newStudent.getS_phone());
						myStmt.setString(11, newStudent.getS_password());
			
			
			// execute sql insert
			myStmt.execute();
	}



	public static Student login(Student login_student){
		//preparing some objects for connection 
	      Statement stmt = null;    
		
		  Connection myConn = null;
		  PreparedStatement myStmt = null;
		  ResultSet myRs = null;
			
	      String email = login_student.getS_email();
	      String password = login_student.getS_password();
	     
		  
			
			// create sql statement
			String sql = "select * from student where s_Email = '"+email+"' AND s_Pass = '"+password+"'";
			
			
			
			
		    try {
		    	myConn = db.getCon();
				stmt=myConn.createStatement();
				 myRs = stmt.executeQuery(sql);
				    boolean more = myRs.next();
				    
				    if (!more) 
				      {
				         System.out.println("login-failed");
				         login_student.setValid(false);
				      } 
				    
				    else if (more) 
				      {
				    	
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
				        System.out.println("Welcome " + d_name);
				        // login_student.setS_name(name);
				    	
				        login_student.setS_roll(d_roll);
				        login_student.setS_reg(d_reg);
				        login_student.setS_name(d_name);
				        login_student.setS_father_name(d_fname);
				        login_student.setS_mother_name(d_mname);
				        login_student.setS_email(d_email);
				        login_student.setS_phone(d_phone);
				        login_student.setS_faculty(d_faculty);
				        login_student.setS_semester(d_semester);
				        login_student.setS_department(d_dept);
				        login_student.setValid(true);
				        System.out.println("login-success");
				      }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   
	      
		return login_student;
	}



	public static void addDevFeestoDb(Devfees newDevfees) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "insert into development_fees "
					   + "(s_roll,s_reg,s_name,s_department,s_semester,s_development_fee,s_phone) "
					   + "values (?,?,?,?,?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, newDevfees.getS_roll());
			myStmt.setString(2, newDevfees.getS_reg());
			myStmt.setString(3, newDevfees.getS_name());
			myStmt.setString(4, newDevfees.getS_department());
			myStmt.setString(5, newDevfees.getS_semester());
			myStmt.setString(6, newDevfees.getS_development_fee());
			myStmt.setString(7, newDevfees.getS_phone());


			// execute sql insert
			myStmt.execute();
			System.out.print("admission-payment-successfulls");
			
			
	}



	public static void addsemesterFeestoDb(SemesterFees newsemesterFee) throws SQLException {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "insert into semester_fees "
					   + "(s_roll,s_reg,s_name,s_department,s_semester,s_semester_fee,s_phone) "
					   + "values (?,?,?,?,?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, newsemesterFee.getS_roll());
			myStmt.setString(2, newsemesterFee.getS_reg());
			myStmt.setString(3, newsemesterFee.getS_name());
			myStmt.setString(4, newsemesterFee.getS_department());
			myStmt.setString(5, newsemesterFee.getS_semester());
			myStmt.setString(6, newsemesterFee.getS_semester_fee());
			myStmt.setString(7, newsemesterFee.getS_phone());


			// execute sql insert
			myStmt.execute();
			System.out.print("semseter-payment-successfulls");
		
	}



	public static void addFormfillupFeestoDb(FormfillupFees newFormfillup) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "insert into  formfillup_fees "
					   + "(s_roll,s_reg,s_name,s_department,s_semester,s_formfillup_fee,s_phone) "
					   + "values (?,?,?,?,?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, newFormfillup.getS_roll());
			myStmt.setString(2, newFormfillup.getS_reg());
			myStmt.setString(3, newFormfillup.getS_name());
			myStmt.setString(4, newFormfillup.getS_department());
			myStmt.setString(5, newFormfillup.getS_semester());
			myStmt.setString(6, newFormfillup.getS_formfillup_fee());
			myStmt.setString(7, newFormfillup.getS_phone());


			// execute sql insert
			myStmt.execute();
			System.out.print("formfillup-payment-successfulls");
	}
}