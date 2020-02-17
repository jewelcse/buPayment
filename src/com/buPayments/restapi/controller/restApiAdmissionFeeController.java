package com.buPayments.restapi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.buPayment.restapi.model.studentProfile;
import com.buPayments.controller.dbConnection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/restApiAdmissionFeeController")
public class restApiAdmissionFeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  static dbConnection db = new dbConnection();
  static checkValidity ck = new checkValidity();
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String stu_roll = request.getParameter("rollno");
		
		System.out.println("restApiAdmissionFeeController?rollno"+stu_roll);
		
		studentProfile stp = new studentProfile();
		
	    stp.setS_roll(stu_roll);
	    stp = studentFetch.getStudentProfile(stp);
	    
	    System.out.println("---------------------------");
	    
	    String id = stp.getId();
	    String roll = stp.getS_roll();
	    String reg = stp.getS_reg();
	    String name = stp.getS_name();
	    String fname = stp.getS_father_name();
	    String mname = stp.getS_mother_name();
	    String sem = stp.getS_semester();
	    String dept = stp.getS_department();
	    String fac = stp.getS_faculty();
	    
	    System.out.println("line no 58 in restApiAdmissionFeeController ========> profile : "+id  +  roll  + reg + name  + fname  + mname  + sem  + dept+  fac);
	    
	    System.out.println("---------------------------");
	    
	    
	    if(!(id== null)) {
		   
	    	Statement stmt = null;    
			Connection myConn = null;
			PreparedStatement myStmt = null;
			ResultSet myRs = null;
			
			JSONObject profile = new JSONObject();
			    		try {	
			    			
			    			myConn = db.getCon();
			    			
				    		profile.put("d_id",id);
					        profile.put("d_roll",roll);
					        profile.put("d_reg",reg);
					        profile.put("d_name",name);
					        profile.put("d_fname",fname);
					        profile.put("d_mname",mname);
					        profile.put("d_semester",sem);
					        profile.put("d_dept",dept);
					        profile.put("d_faculty",fac);
			    	
					    	String sql2 = "select * from admin_semester_fees_table where semester = '"+sem+"' ";
					    	
					    	stmt=myConn.createStatement();
					    	myRs = stmt.executeQuery(sql2);
					    	
					    	while(myRs.next()) {
					    		
					    		String main = myRs.getString("main_fee");
					    		String mise = myRs.getString("misce_fee");
					    		String startDate = myRs.getString("start_date");
					    		String endDate = myRs.getString("end_date");
					    		
					    		
					    		boolean rs = ck.checkValidity(startDate, endDate);
					    		
					    		System.out.println("line no 91 in restApiAdmissionFeeController  validity status =======>"+ rs);
					    		
					    		
					    	
					    		profile.put("main_fee",main);
					    		profile.put("misce_fee",mise);
					    		profile.put("validity_status",rs);
					    		
					    		
					    		
					    	}
					    	
		
							PrintWriter pw = response.getWriter();
							pw.print(profile);
					        
			    		} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}  
			    		
	    }
	   
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
