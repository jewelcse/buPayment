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

import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;

/**
 * Servlet implementation class adminShowAllFeesController
 */
@WebServlet("/adminShowAllFeesController")
public class adminShowAllFeesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	dbConnection db = new dbConnection();
	ArrayList<Devfees> devfee = new ArrayList<Devfees>();
	public ArrayList<Devfees> showAllDevFees(){
		String sql = "select * from  development_fees ORDER BY id DESC ";
		Connection con = db.getCon();
		try {

			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	Devfees newItem = new Devfees();
		    	
		    	String semester  = myRs.getString("semester");
		    	String amount  = myRs.getString("amount");
		    	String stu_id  = myRs.getString("s_id");

		    	newItem.setS_semester(semester);
		    	newItem.setS_semester_fee(amount);
		    	newItem.setS_id(stu_id);

		        devfee.add(newItem);
			}
		    
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return devfee;
	}
	
	ArrayList<SemesterFees> semfee = new ArrayList<SemesterFees>();
	public ArrayList<SemesterFees> showAllSemesterFee(){
		String sql = "select * from  semester_fees2 ORDER BY id DESC ";
		Connection con = db.getCon();
		try {

			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	
		    	SemesterFees newItem1 = new SemesterFees();
		    	
		    	String semester  = myRs.getString("semester");
		    	String amount  = myRs.getString("amount");
		    	String stu_id  = myRs.getString("s_id");

		    	newItem1.setS_semester(semester);
		    	newItem1.setS_semester_fee(amount);
		    	newItem1.setS_id(stu_id);

		    	semfee.add(newItem1);
			}
		    
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return semfee;
	}
	
	
	ArrayList<FormfillupFees> formfillupfee = new ArrayList<FormfillupFees>();
	
	public ArrayList<FormfillupFees> showAllFormfillupFee(){
		String sql = "select * from  formfillup_fees ORDER BY id DESC ";
		Connection con = db.getCon();
		try {

			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	
		    	FormfillupFees newItem1 = new FormfillupFees();
		    	
		    	String semester  = myRs.getString("semester");
		    	String amount  = myRs.getString("amount");
		    	String stu_id  = myRs.getString("s_id");

		    	newItem1.setS_semester(semester);
		    	newItem1.setS_amount(amount);
		    	newItem1.setS_id(stu_id);

		    	formfillupfee.add(newItem1);
			}
		    
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return formfillupfee;
	}
	

       



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
