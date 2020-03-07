package com.buPayments.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.buPayments.controller.dbConnection;
import com.buPayments.model.Student;

public class studentsDao {

	public static Student getStudentProfileById(String id) {
		
		dbConnection db = new dbConnection();
		Student stu = new Student();
		
		String sql = "select * from student where s_Id = '"+id+"'";
		
		try {
			Connection con = db.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	
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
		    	String d_pass  = myRs.getString("s_Pass");
		        //System.out.println("Welcome " + d_name);
		        // login_student.setS_name(name);
		    	stu.setS_roll(d_roll);
		    	stu.setS_reg(d_reg);
		    	stu.setS_name(d_name);
		    	stu.setS_father_name(d_fname);
		    	stu.setS_mother_name(d_mname);
		    	stu.setS_email(d_email);
		    	stu.setS_phone(d_phone);
		    	stu.setS_faculty(d_faculty);
		    	stu.setS_semester(d_semester);
		    	stu.setS_department(d_dept);
		    	
		    	
		    }
		    
		}catch (SQLException e) {
		e.printStackTrace();
	}
		    
	return stu;
	
	}
}
