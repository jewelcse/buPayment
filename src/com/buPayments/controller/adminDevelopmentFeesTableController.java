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

import com.buPayments.model.Student;
import com.buPayments.model.adminDevelopmentFeesTable;

/**
 * Servlet implementation class adminDevelopmentFeesTableController
 */
@WebServlet("/adminDevelopmentFeesTableController")
public class adminDevelopmentFeesTableController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adminDevelopmentFeesTableController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    static dbConnection db = new dbConnection(); 
    
ArrayList<adminDevelopmentFeesTable> devId = new ArrayList<adminDevelopmentFeesTable>();
	
	public ArrayList<adminDevelopmentFeesTable> showDevelopmentFeesTable(){
		String sql = "select * from admin_development_fees_table ORDER BY id DESC ";
		Connection con = db.getCon();
		try {
			//Statement stmt = con.createStatement();
			PreparedStatement ps = con.prepareStatement(sql);
		    ResultSet myRs =	ps.executeQuery(sql);
		    while (myRs.next()) {
		    	adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
		    	
		    	String id  = myRs.getString("id");
		    	Integer newId = Integer.parseInt(id);
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		       //System.out.print("53 lin of admin devlopment fess conteoller "+id);
		    	
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
		
    RequestDispatcher dispatcher =  request.getRequestDispatcher("admin_development_fees_table.jsp");
		
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
        
        adminDevelopmentFeesTable devfee = new adminDevelopmentFeesTable();
        
        devfee.setId(id);
        devfee.setSemester(semester);
        devfee.setMain_fee(main_fee);
        devfee.setMisce_fee(misce_fee);
        devfee.setStart_date(start_date);
        devfee.setEnd_date(end_date);
        
        mainController.updateDevelopmentFeesTable(devfee);
        
        RequestDispatcher dispatcher =  request.getRequestDispatcher("admin_development_fees_table.jsp");
		
    	dispatcher.forward(request, response);

        
	}

}
