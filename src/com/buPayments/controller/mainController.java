package com.buPayments.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.buPayments.model.Admin;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;
import com.mysql.jdbc.PreparedStatement;

public class mainController {

static dbConnection db = new dbConnection();


ArrayList<Student> al = new ArrayList<Student>();
	
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
						myStmt.setString(4, newStudent.getS_father_name());
						myStmt.setString(5, newStudent.getS_mother_name());
						
						myStmt.setString(6, newStudent.getS_email());
						myStmt.setString(7, newStudent.getS_phone());
						myStmt.setString(8, newStudent.getS_password());
						
						myStmt.setString(9, newStudent.getS_semester());
						myStmt.setString(10, newStudent.getS_department());
						myStmt.setString(11, newStudent.getS_faculty());
						
						
						
			
			
			// execute sql insert
			myStmt.execute();
	}



	public static Student login(Student login_student){
		//preparing some objects for connection 
	      Statement stmt = null;    
		
		  Connection myConn = null;
		  PreparedStatement myStmt = null;
		  ResultSet myRs = null;
			
	      String roll = login_student.getS_roll();
	      String password = login_student.getS_password();
	     
		  
			
			// create sql statement
			String sql = "select * from student where s_Roll = '"+roll+"' AND s_Pass = '"+password+"'";
			
			
			
			
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
				        System.out.println("Welcome " + d_name);
				        // login_student.setS_name(name);
				    	
				        login_student.setId(d_id);
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
					   + "(s_roll,dev_fee_semester,amount) "
					   + "values (?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			// set the param values for the student
		
			myStmt.setString(1, newDevfees.getS_roll());
			myStmt.setString(2, newDevfees.getS_semester());
			myStmt.setString(3, newDevfees.getS_development_fee());
			


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
			String sql = "insert into semester_fees2 "
					   + "(s_id,fee_of_semester,amount) "
					   + "values (?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, newsemesterFee.getS_id());
			myStmt.setString(2, newsemesterFee.getS_semester());
			myStmt.setString(3, newsemesterFee.getS_semester_fee());

			System.out.print(newsemesterFee.getS_id());
			// execute sql insert
			myStmt.execute();
			System.out.print("semseter-payment-successfulls");
			
		
	}


	public static void ChangedFeesNow(ChangedFees changedFees){
		
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "insert into changed_development_fee "
					   + "(roll_no,fee_of_semester,changed_amount) "
					   + "values (?,?,?)";
			
			try {
				myStmt = (PreparedStatement) myConn.prepareStatement(sql);
				// set the param values for the student
				myStmt.setString(1, changedFees.getRoll());
				myStmt.setString(2, changedFees.getSemester_name());
				myStmt.setString(3, changedFees.getChanged_amount());
			


				// execute sql insert
				myStmt.execute();
				System.out.print("formfillup-payment-successfulls");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	
		
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



	public static Admin admin_login(Admin login_admin) {
		
		//preparing some objects for connection 
	      Statement stmt = null;    
		
		  Connection myConn = null;
		  PreparedStatement myStmt = null;
		  ResultSet myRs = null;
			
	      String admin = login_admin.getAdmin();
	      String password = login_admin.getPassword();
	     
		  
			
			// create sql statement
			String sql = "select * from admin where admin = '"+admin+"' AND password = '"+password+"'";
			
			try {
		    	myConn = db.getCon();
				stmt=myConn.createStatement();
				 myRs = stmt.executeQuery(sql);
				    boolean more = myRs.next();
				    
				    if (!more) 
				      {
				         System.out.println("login-failed");
				         login_admin.setValid(false);
				      } 
				    
				    else if (more) 
				      {
				    	login_admin.setValid(true);
				        System.out.println("login-success");
				      }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   
			
			
		return login_admin;
	}
	
	public ArrayList<Student> showData(){
		String sql = "select * from student";
		Connection con = db.getCon();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    System.out.print(myRs);
		    while (myRs.next()) {
		    	Student newStudent = new Student();
		    	
		    	String s_id = myRs.getString("s_Id");
		    	String d_roll  = myRs.getString("s_Roll");
		    	String d_reg  = myRs.getString("s_Reg");
		    	String d_name  = myRs.getString("s_Name");
		    	String d_fname  = myRs.getString("s_Father_name");
		    	String d_mname  = myRs.getString("s_Mother_name");
		    	String d_email = myRs.getString("s_Email");
		    	String d_phone  = myRs.getString("s_Phone");
		    	String d_pass  = myRs.getString("s_Pass");
		    	String d_semester  = myRs.getString("s_Semester");
		    	String d_dept  = myRs.getString("s_Department");
		    	String d_faculty  = myRs.getString("s_Faculty");
		       
		    	System.out.print(s_id);
		        // login_student.setS_name(name);
		    	
		    	newStudent.setId(s_id);
		        newStudent.setS_roll(d_roll);
		        newStudent.setS_reg(d_reg);
		        newStudent.setS_name(d_name);
		        newStudent.setS_father_name(d_fname);
		        newStudent.setS_mother_name(d_mname);
		        newStudent.setS_email(d_email);
		        newStudent.setS_phone(d_phone);
		        newStudent.setS_faculty(d_faculty);
		        newStudent.setS_password(d_pass);
		        newStudent.setS_semester(d_semester);
		        newStudent.setS_department(d_dept);
		        newStudent.setValid(true);
		        al.add(newStudent);
			}
		    
//			for(int i=0;i<al.size();i++){
//				System.out.println(al.get(i).getId());
//			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}
}