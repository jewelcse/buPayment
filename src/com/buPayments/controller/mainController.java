package com.buPayments.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



























import com.buPayments.model.Admin;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;
import com.buPayments.model.TestCSVModel;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;
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
				        //System.out.println("Welcome " + d_name);
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



	public static String addDevFeestoDb(Devfees newDevfees) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		myConn =db.getCon();
		ResultSet myRs = null;
		String result = "";
			
		String id = newDevfees.getS_id();
		String semester = newDevfees.getS_semester();
		
		System.out.println(id  + " " + semester);
		
		String select_sql = "select * from development_fees where s_id = '"+id+"' AND semester = '"+semester+"'";
		stmt=myConn.createStatement();
		myRs = stmt.executeQuery(select_sql);
		  
		boolean more = myRs.next();
		    
		    if (!more) {
		    	
		    	String sql = "insert into development_fees "
						   + "(s_id,semester,amount) "
						   + "values (?,?,?)";
				
				myStmt = (PreparedStatement) myConn.prepareStatement(sql);

				myStmt.setString(1, newDevfees.getS_id());
				myStmt.setString(2, newDevfees.getS_semester());
				myStmt.setString(3, newDevfees.getS_semester_fee());
				
			
				myStmt.execute();
				System.out.print("admission-payment-successfulls");
				
				return result = "success";
		    }
		    else{
		    	
		    	System.out.println("already paid !!!!");
		    	return result = "failed";
		    }
	}



	public static String addsemesterFeestoDb(SemesterFees newsemesterFee) throws SQLException {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		myConn =db.getCon();
		ResultSet myRs = null;
		String result = "";

		String id = newsemesterFee.getS_id();
		String semester = newsemesterFee.getS_semester();
		
		System.out.println(id  + " " + semester);
		
		String select_sql = "select * from semester_fees2 where s_id = '"+id+"' AND semester = '"+semester+"'";
		stmt = myConn.createStatement();
		myRs = stmt.executeQuery(select_sql);
		  
		boolean more = myRs.next();
		    
		    if (!more) {
		    	
		    	String sql = "insert into semester_fees2 "
						   + "(s_id,semester,amount) "
						   + "values (?,?,?)";
				
				myStmt = (PreparedStatement) myConn.prepareStatement(sql);

				myStmt.setString(1, newsemesterFee.getS_id());
				myStmt.setString(2, newsemesterFee.getS_semester());
				myStmt.setString(3, newsemesterFee.getS_semester_fee());

				myStmt.execute();
				System.out.print("semseter-payment-successfulls");
		    	
				return result = "success";
		    }
		    else{
		    	
		    	System.out.println("already paid !!!!");
		    	return result = "failed";
		    }
		
	
	}
	
public static String addFormfillupFeestoDb(FormfillupFees newFormfillup) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		myConn =db.getCon();
		ResultSet myRs = null;
		String result = "";

		String id = newFormfillup.getS_id();
		String semester = newFormfillup.getS_semester();
	
		System.out.println(id  + " " + semester);
	
		String select_sql = "select * from formfillup_fees where s_id = '"+id+"' AND semester = '"+semester+"'";
		stmt = myConn.createStatement();
		myRs = stmt.executeQuery(select_sql);
	  
		boolean more = myRs.next();
	    
	    if (!more) {
			String sql = "insert into  formfillup_fees "
					   + "(semester,amount,s_id) "
					   + "values (?,?,?)";
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);

			myStmt.setString(1, newFormfillup.getS_semester());
			myStmt.setString(2, newFormfillup.getS_amount());
			myStmt.setString(3, newFormfillup.getS_id());

			myStmt.execute();
			System.out.print("formfillup-payment-successfulls");
			return result = "success";
	    }
	    else{
	    	
	    	System.out.println("already paid !!!!");
	    	return result = "failed";
	    }
	}




	public static void ChangedFeesNow(ChangedFees changedFees){
		
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "insert into changed_development_fee "
					   + "(roll_no,semester,changed_amount) "
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

	

	public static Admin admin_login(Admin login_admin) {
		
		//preparing some objects for connection 
	      Statement stmt = null;    
		  Connection myConn = null;
		  PreparedStatement myStmt = null;
		  ResultSet myRs = null;
			
	      String admin = login_admin.getName();
	      String password = login_admin.getPassword();
	      String adminType = login_admin.getAdminType();
	     
		  if(adminType.equals("SuperAdmin")) {
			  String sql1 = "select * from super_admin where name = '"+admin+"' AND password = '"+password+"'";	  
				try {
			    	myConn = db.getCon();
					stmt=myConn.createStatement();
					 myRs = stmt.executeQuery(sql1);
					    boolean more = myRs.next();
					    
					    if (!more) 
					      {
					         System.out.println("super-admin-login-failed");
					         login_admin.setSuperAdminIsvalid(false);
					      } 
					    
					    else if (more) 
					      {
					    	login_admin.setSuperAdminIsvalid(true);
					        System.out.println("super-admin-login-success");
					      }
					    
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  
		  }
		  else {
			  
			  String sql2 = "select * from sub_admin where name = '"+admin+"' AND password = '"+password+"'";	  
				try {
			    	myConn = db.getCon();
					stmt=myConn.createStatement();
					 myRs = stmt.executeQuery(sql2);
					    boolean more = myRs.next();
					    
					    if (!more) 
					      {
					         System.out.println("sub-admin-login-failed");
					         login_admin.setSubAdminIsvalid(false);
					      } 
					    
					    else if (more) 
					      {
					    	login_admin.setSubAdminIsvalid(true);
					    	login_admin.setItem1(myRs.getString("update_development_fee"));
					    	login_admin.setItem2(myRs.getString("student_information"));
					    	login_admin.setItem3(myRs.getString("application_letters"));
					    	login_admin.setItem4(myRs.getString("update_development_fees_table"));
					    	login_admin.setItem5(myRs.getString("update_semester_fees_table"));
					    	login_admin.setItem6(myRs.getString("update_formfillup_fees_table"));
					        System.out.println("sub-admin-login-success");
					      }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
		       
		    	//System.out.print(s_id);
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
		    

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}



	public static  String check_development_fee(String semester, String roll) throws SQLException {
	
		String amount ="";
		String main = "";
		String misce = "";
		Integer sum = 0;
		String sql = "select * from  changed_development_fee where roll_no = '"+roll+"' AND semester = '"+semester+"' ";
		Connection con = db.getCon();
	
			//Statement stmt = con.createStatement();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		  
		  
		    //System.out.print(myRs);
		    if (myRs.next()) {

		    	 amount = myRs.getString("changed_amount");
		    	 //System.out.print("line 397" + amount);
		    }
		    else{
		    	String sql2 = "select * from  admin_development_fees_table where semester = '"+semester+"' ";
				Connection con2 = db.getCon();
				
				//Statement stmt = con.createStatement();
				PreparedStatement ps2 = (PreparedStatement) con2.prepareStatement(sql2);
				ResultSet myRs2 =	ps2.executeQuery(sql2);
				if(myRs2.next()){
					//main = myRs2.getString("main_fee");
			    	misce = myRs2.getString("misce_fee");
			    	sum =Integer.parseInt(misce);
			    	amount = String.valueOf(sum);
			    	//System.out.print("line 411" + amount);
				}
				
		    }
		    	
		return amount;
	}






	



	public static String checkValidity(String feeType, String semester) throws SQLException, ParseException{
		String sql="";
		Connection con = db.getCon();
		String result="";
		 //current date
		LocalDate today = LocalDate.now(ZoneId.systemDefault()) ;
		String strDate = today.toString() ; 
         
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date curr = sdf.parse(strDate);
		
		if(feeType.equals("devfee")){
			sql = "select * from  admin_development_fees_table where semester = '"+semester+"' ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs = ps.executeQuery(sql);
		    if(myRs.next()) {
		    	String startDate = myRs.getString("start_date");
		    	String endDate = myRs.getString("end_date");
		    	
		    	if(startDate!=null && endDate!=null){
		    		Date s_date = sdf.parse(startDate);
			    	Date e_date = sdf.parse(endDate);
				    	
				    	if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
				            System.out.println("valid date to pay development fee");
				            result = "dev_page";
				        } else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
				            System.out.println("same day and valid date to pay development fee");
				            result = "dev_page";
				        } else {
				            System.out.println("expire date for development fee");
				            result = "false";
				        }
		    	}else{
		    		System.out.println("ohh no");
		    		result = "false";
		    	}
		    	
		    }else{
		    	System.out.println("error sql");
		    }
		
		
		    
		}else if(feeType.equals("semfee")){
			sql = "select * from  admin_semester_fees_table where semester = '"+semester+"' ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs = ps.executeQuery(sql);
		    if(myRs.next()) {
		    	String startDate = myRs.getString("start_date");
		    	String endDate = myRs.getString("end_date");
		    	
		    	if(startDate!=null && endDate!=null){
		    		Date s_date = sdf.parse(startDate);
			    	Date e_date = sdf.parse(endDate);
				    	
				    	if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
				            System.out.println("valid date to pay semester fee");
				            result = "semester_page";
				        } else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
				            System.out.println("same day and valid date to pay semester fee");
				            result = "semester_page";
				        } else {
				            System.out.println("expire date for semester fee");
				            result = "false";
				        }
		    	}else{
		    		System.out.println("ohh no");
		    		result = "false";
		    	}
		    	
		    	
		    }else{
		    	System.out.println("error sql");
		    }
		}else if(feeType.equals("formfee")){
			
			sql = "select * from  admin_formfillup_fees_table where semester = '"+semester+"' ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs = ps.executeQuery(sql);
		    if(myRs.next()) {
		    	String startDate = myRs.getString("start_date");
		    	String endDate = myRs.getString("end_date");
		    	
		    	if(startDate!=null && endDate!=null){
		    		Date s_date = sdf.parse(startDate);
			    	Date e_date = sdf.parse(endDate);
			
				    	if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
				            System.out.println("valid date to pay form fill up fee ");
				            result = "formfillup_page";
				        } else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
				            System.out.println("same day and valid date to pay form fill up fee");
				            result = "formfillup_page";
				        } else {
				            System.out.println("expire date for form fill up fee");
				            result = "false";
				        }
		    	}else{
		    		System.out.println("ohh no");
		    		result = "false";
		    	}
		    	
		    }else{
		    	System.out.println("error sql");
		    }
		}else{
			result = "false";
		}
		
		System.out.println(result);
		return result;
	}


	public static adminDevelopmentFeesTable getDevelopmentItemById(String newId) {
		
		String sql = "select * from  admin_development_fees_table where id = '"+newId+"'";
		Connection con = db.getCon();
		adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    System.out.print(myRs);
		    while (myRs.next()) {
		    	
		    	//Integer newid = Integer.parseInt(myRs.getString("id"));
		    	newItem.setId(myRs.getString("id"));
		    	newItem.setSemester(myRs.getString("semester"));
		    	newItem.setMain_fee(myRs.getString("main_fee"));
		    	newItem.setMisce_fee(myRs.getString("misce_fee"));
		    	newItem.setStart_date(myRs.getString("start_date"));
		    	newItem.setEnd_date(myRs.getString("end_date"));
	
		
		    	//return newItem;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newItem;
		

 }


	public static adminSemesterFeesTable getSemesterItemById(String id) {
		
		String sql = "select * from  admin_semester_fees_table where id = '"+id+"'";
		Connection con = db.getCon();
		adminSemesterFeesTable newItem = new adminSemesterFeesTable();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    System.out.print(myRs);
		    while (myRs.next()) {
		    	
		    	//Integer newid = Integer.parseInt(myRs.getString("id"));
		    	newItem.setId(myRs.getString("id"));
		    	newItem.setSemester(myRs.getString("semester"));
		    	newItem.setMain_fee(myRs.getString("main_fee"));
		    	newItem.setMisce_fee(myRs.getString("misce_fee"));
		    	newItem.setStart_date(myRs.getString("start_date"));
		    	newItem.setEnd_date(myRs.getString("end_date"));
	
		
		    	//return newItem;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newItem;
	}

	public static adminFormFillUpFeesTable getFormFillUpItemById(String id) {
		
		String sql = "select * from  admin_formfillup_fees_table where id = '"+id+"'";
		Connection con = db.getCon();
		adminFormFillUpFeesTable newItem = new adminFormFillUpFeesTable();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    System.out.print(myRs);
		    while (myRs.next()) {
		    	
		    	//Integer newid = Integer.parseInt(myRs.getString("id"));
		    	newItem.setId(myRs.getString("id"));
		    	newItem.setSemester(myRs.getString("semester"));
		    	newItem.setMain_fee(myRs.getString("main_fee"));
		    	newItem.setMisce_fee(myRs.getString("misce_fee"));
		    	newItem.setStart_date(myRs.getString("start_date"));
		    	newItem.setEnd_date(myRs.getString("end_date"));
	
		
		    	//return newItem;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return newItem;
	}
	
 
	// update development fee table
	public static void updateDevelopmentFeesTable(adminDevelopmentFeesTable devfee) {
		
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			try {
			// create sql for insert
			String sql = "update admin_development_fees_table  set semester=?,main_fee=?,misce_fee=?,start_date=?,end_date=? where id=?";
					  
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			
			    myStmt.setString(1,devfee.getSemester());  
			    myStmt.setString(2,devfee.getMain_fee());  
			    myStmt.setString(3,devfee.getMisce_fee()); 
			    myStmt.setString(4,devfee.getStart_date()); 
			    myStmt.setString(5,devfee.getEnd_date()); 
			    myStmt.setString(6,devfee.getId());

			//myStmt.execute();
			myStmt.executeUpdate();  
		
		       
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

	//update semester fee table
	public static void updateSemesterFeesTable(adminSemesterFeesTable devfee) {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			try {
			// create sql for insert
			String sql = "update admin_semester_fees_table  set semester=?,main_fee=?,misce_fee=?,start_date=?,end_date=? where id=?";
					  
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			
			    myStmt.setString(1,devfee.getSemester());  
			    myStmt.setString(2,devfee.getMain_fee());  
			    myStmt.setString(3,devfee.getMisce_fee()); 
			    myStmt.setString(4,devfee.getStart_date()); 
			    myStmt.setString(5,devfee.getEnd_date()); 
			    myStmt.setString(6,devfee.getId());

			//myStmt.execute();
			myStmt.executeUpdate();  
		
		       
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}


	// update formfillup table

	public static void updateFormFillUpFeesTable(adminFormFillUpFeesTable formfillupfee) {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			try {
			// create sql for insert
			String sql = "update admin_formfillup_fees_table  set semester=?,main_fee=?,misce_fee=?,start_date=?,end_date=? where id=?";
					  
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			
			    myStmt.setString(1,formfillupfee.getSemester());  
			    myStmt.setString(2,formfillupfee.getMain_fee());  
			    myStmt.setString(3,formfillupfee.getMisce_fee()); 
			    myStmt.setString(4,formfillupfee.getStart_date()); 
			    myStmt.setString(5,formfillupfee.getEnd_date()); 
			    myStmt.setString(6,formfillupfee.getId());

			//myStmt.execute();
			myStmt.executeUpdate();  
		
		       
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}



	public static boolean addNewAdmin(Admin newadmin) {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
	    Statement stmt = null;    

		ResultSet myRs = null;
		String adminName = newadmin.getName();
		
		boolean retrunStatus = false;
		
		
	    try {
	    	String sql = "select * from sub_admin where name = '"+adminName+"' ";
	
	    	myConn = db.getCon();
			stmt=myConn.createStatement();
			 myRs = stmt.executeQuery(sql);
			    boolean more = myRs.next();
			    
			    if (!more) 
			      {

					
					// create sql for insert
					String inserQuery = "insert into sub_admin "
							   + "(name,password) "
							   + "values (?,?)";
					
					myStmt = (PreparedStatement) myConn.prepareStatement(inserQuery);
	
					myStmt.setString(1, newadmin.getName());
					myStmt.setString(2, newadmin.getPassword());

					myStmt.execute();
					retrunStatus = true;
					System.out.print("new sub-admin created successfully\n");
			      } 
			    
			    else  {
			     
			    	System.out.println("Alread have " + adminName);
			    	retrunStatus = false;
			    }
	
	    }
	    
	    catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return retrunStatus;

	}



	public static void deleteAdmin(String delete_id) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		  
			  
	       
			// get a connection
			myConn =db.getCon();
			
			// create sql for insert
			String sql = "delete from sub_admin  where id = '"+delete_id+"'";
			  
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);

			myStmt.execute();
			System.out.println("Deleted Sub-admin Id " + delete_id + "\n");
		
	}



	public static void updateSubAdmin(String id, String name) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn =db.getCon();
		
		String sql = "UPDATE sub_admin SET name ='"+name+"' WHERE id='"+id+"'";
		
		myStmt = (PreparedStatement) myConn.prepareStatement(sql);

		myStmt.execute();
		System.out.println("Update Sub-admin \n");
		
	}



	public static boolean addNewAdmin(String newAdminName, String password, String item1, String item2, String item3,
			String item4, String item5, String item6) {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
	    Statement stmt = null;    

		ResultSet myRs = null;
		
		boolean retrunStatus = false;
		
		
	    try {
	    	String sql = "select * from sub_admin where name = '"+newAdminName+"' ";
	
	    	myConn = db.getCon();
			stmt=myConn.createStatement();
			 myRs = stmt.executeQuery(sql);
			    boolean more = myRs.next();
			    
			    if (!more) 
			      {

					
					// create sql for insert
					String inserQuery = "insert into sub_admin "
							   + "(name,password,update_development_fee,student_information,application_letters,update_development_fees_table,update_semester_fees_table,update_formfillup_fees_table) "
							   + "values ('"+newAdminName+"','"+password+"','"+item1+"','"+item2+"','"+item3+"','"+item4+"','"+item5+"','"+item6+"')";
					
					myStmt = (PreparedStatement) myConn.prepareStatement(inserQuery);
					myStmt.execute();
					retrunStatus = true;
					System.out.print("new sub-admin created successfully\n");
			      } 
			    
			    else  {
			     
			    	System.out.println("Alread have " + newAdminName);
			    	retrunStatus = false;
			    }
	
	    }
	    
	    catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return retrunStatus;

	}



	public static void saveCSVData(TestCSVModel testCSVModel) {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
			// get a connection
			myConn =db.getCon();
			try {
			// create sql for insert
			String sql = "insert into testcsv "
					   + "(name,price,description) "
					   + "values (?,?,?)";
					  
			
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			
			
			    myStmt.setString(1,testCSVModel.getName());  
			    myStmt.setString(2,testCSVModel.getPrice());  
			    myStmt.setString(3,testCSVModel.getDescription());

			//myStmt.execute();
			myStmt.executeUpdate();  
		
		       
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	
}
