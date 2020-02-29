package com.buPayments.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;


@WebServlet("/adminFeesFindTableController")
public class adminFeesFindTableController extends HttpServlet {
	
static dbConnection db = new dbConnection(); 
    
    ArrayList<adminDevelopmentFeesTable> developmentfee = new ArrayList<adminDevelopmentFeesTable>();
    Connection con;
    PreparedStatement ps,ps1;
    ResultSet myRs,myRs1;
	public ArrayList<adminDevelopmentFeesTable> showDevelopmentFeesTable(){
		String sql = "select * from admin_development_fees_table";
		Connection con = db.getCon();
		try {
			//Statement stmt = con.createStatement();
			 ps = con.prepareStatement(sql);
		     myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
		    	
		    	String id  = myRs.getString("id");
		    	Integer newId = Integer.parseInt(id);
		    	String deptId  = myRs.getString("department");
		    	//String deptname = myRs.getString("dept_name");
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		       //System.out.print("53 lin of admin devlopment fess conteoller "+id);
		    	
		    	String sql1 = "select * from department where id = '"+deptId+"'";
		    	 ps1 = con.prepareStatement(sql1);
			     myRs1 =	ps1.executeQuery(sql1);
			     while(myRs1.next()) {
			     String deptname = myRs1.getString("dept_name");
			     newItem.setDeptName(deptname);
			     }
		    	
		    	newItem.setId(id);
		    	newItem.setDeptId(deptId);
		    	
		    	newItem.setSemester(semester);
		    	newItem.setMain_fee(main_fee);
		    	newItem.setMisce_fee(misce_fee);
		    	newItem.setStart_date(start_date);
		    	newItem.setEnd_date(end_date);
		    	
		    	
		    	developmentfee.add(newItem);
			}
		    
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return developmentfee;
	}
	
	
	
	ArrayList<adminFormFillUpFeesTable> formfillupfee = new ArrayList<adminFormFillUpFeesTable>();
	
	public ArrayList<adminFormFillUpFeesTable> showFormFillUpFeesTable(){
		String sql = "select * from admin_formfillup_fees_table ORDER BY id DESC ";
		Connection con = db.getCon();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	
		    	adminFormFillUpFeesTable newItem = new adminFormFillUpFeesTable();
		    	
		    	String id  = myRs.getString("id");
		    	Integer newId = Integer.parseInt(id);
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		       
		    	
		    	newItem.setId(id);
		    	newItem.setSemester(semester);
		    	newItem.setMain_fee(main_fee);
		    	newItem.setMisce_fee(misce_fee);
		    	newItem.setStart_date(start_date);
		    	newItem.setEnd_date(end_date);
		    	
		    	
		    	formfillupfee.add(newItem);
			}
		    
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return formfillupfee;
	}

	
	

ArrayList<adminSemesterFeesTable> semesterfee = new ArrayList<adminSemesterFeesTable>();
	
	public ArrayList<adminSemesterFeesTable> showSemesterFeesTable(){
		String sql = "select * from admin_semester_fees_table ORDER BY id DESC ";
		Connection con = db.getCon();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	
		    	adminSemesterFeesTable newItem = new adminSemesterFeesTable();
		    	
		    	String id  = myRs.getString("id");
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		      
		    	newItem.setId(id);
		    	newItem.setSemester(semester);
		    	newItem.setMain_fee(main_fee);
		    	newItem.setMisce_fee(misce_fee);
		    	newItem.setStart_date(start_date);
		    	newItem.setEnd_date(end_date);
		    	
		    	
		    	semesterfee.add(newItem);
			}
		    
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return semesterfee;
	}
    
	
	
	
}
