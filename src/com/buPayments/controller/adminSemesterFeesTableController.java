package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

/**
 * Servlet implementation class adminSemesterFeesTableController
 */
@WebServlet("/adminSemesterFeesTableController")
public class adminSemesterFeesTableController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public adminSemesterFeesTableController() {
        super();

    }

    
static dbConnection db = new dbConnection(); 
    
ArrayList<adminSemesterFeesTable> devId = new ArrayList<adminSemesterFeesTable>();
	
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
		    	
		    	
		    	devId.add(newItem);
			}
		    
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return devId;
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		RequestDispatcher dispatcher =  request.getRequestDispatcher("admin_semester_fees_table.jsp");
		
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String id=request.getParameter("id");  
        //int newId=Integer.parseInt(id);  
        String semester=request.getParameter("semester");  
        String main_fee=request.getParameter("main_fee");  
        String misce_fee=request.getParameter("misce_fee");  
        String start_date=request.getParameter("start_date");  
        String end_date=request.getParameter("end_date");
        
        adminSemesterFeesTable devfee = new adminSemesterFeesTable();
        
        devfee.setId(id);
        devfee.setSemester(semester);
        devfee.setMain_fee(main_fee);
        devfee.setMisce_fee(misce_fee);
        devfee.setStart_date(start_date);
        devfee.setEnd_date(end_date);
        
        mainController.updateSemesterFeesTable(devfee);
        
        RequestDispatcher dispatcher =  request.getRequestDispatcher("admin_semester_fees_table.jsp");
		
    	dispatcher.forward(request, response);
	}

}
