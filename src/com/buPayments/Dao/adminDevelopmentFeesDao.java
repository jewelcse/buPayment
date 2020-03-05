package com.buPayments.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.buPayments.controller.dbConnection;
import com.buPayments.model.Admin;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.adminDevelopmentFeesTable;

public class adminDevelopmentFeesDao {

	public static ArrayList<adminDevelopmentFeesTable> showDevelopmentFeesTable(int start,int total){
		dbConnection db = new dbConnection(); 
		ArrayList<adminDevelopmentFeesTable> developmentfee = new ArrayList<adminDevelopmentFeesTable>();
		String sql = "select * from admin_development_fees_table limit "+(start-1)+","+total;
		try {
			Connection con = db.getCon();
		    PreparedStatement ps,ps1;
		    ResultSet myRs,myRs1;
			 ps = con.prepareStatement(sql);
		     myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
		    	String id  = myRs.getString("id");
		    	Integer newId = Integer.parseInt(id);
		    	String deptId  = myRs.getString("department");
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		    	
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
			e.printStackTrace();
		}
		return developmentfee;
	}
	
	
	public static adminDevelopmentFeesTable getDevelopmentItemById(String newId) {
		
		
		dbConnection db = new dbConnection(); 

		
		String sql = "select * from  admin_development_fees_table where id = '" + newId + "'";
		Connection con = db.getCon();
		adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
			
		try {
			PreparedStatement ps,ps1;
			ResultSet myRs,myRs1;
			ps = (PreparedStatement) con.prepareStatement(sql);
			myRs= ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {
				// Integer newid = Integer.parseInt(myRs.getString("id"));
				
				String id  = myRs.getString("id");
		    	String deptId  = myRs.getString("department");
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		    	
		    	String sql1 = "select * from department where id = '"+deptId+"'";
		    	 ps1 = (PreparedStatement)con.prepareStatement(sql1);
			     myRs1 = ps1.executeQuery(sql1);
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
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newItem;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static ArrayList<ChangedFees> showAllChangedFees() {
		dbConnection db = new dbConnection();
		ArrayList<ChangedFees> feesList = new ArrayList<ChangedFees>();

		String sql = "select * from  changed_development_fee ORDER BY id DESC ";
		Connection con = db.getCon();
		try {

			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			while (myRs.next()) {
				
				ChangedFees item = new ChangedFees();
				String id = myRs.getString("id");
				String roll = myRs.getString("roll_no");
				String semester = myRs.getString("semester");
				String ch_amount = myRs.getString("changed_amount");
				
				item.setId(id);
				item.setRoll(roll);
				item.setSemester_name(semester);
				item.setChanged_amount(ch_amount);

				feesList.add(item);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return feesList;
	}
	
}
