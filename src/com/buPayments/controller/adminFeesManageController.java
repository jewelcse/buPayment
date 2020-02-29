package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.mysql.jdbc.PreparedStatement;


@WebServlet("/adminFeesManageController")
public class adminFeesManageController extends HttpServlet {
	static dbConnection db = new dbConnection(); 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deptId=  request.getParameter("deptId");
		
			String sql = "select * from admin_development_fees_table where department = '"+deptId+"'";
			Connection con = db.getCon();
			try {
				//Statement stmt = con.createStatement();
				PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			    ResultSet myRs =	ps.executeQuery(sql);
			    while (myRs.next()) {
			    	
			    	adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
			    	
			    	
			    	String semester  = myRs.getString("semester");
			    	String main_fee  = myRs.getString("main_fee");
			    	String misce_fee  = myRs.getString("misce_fee");
			    	String start_date  = myRs.getString("start_date");
			    	String end_date  = myRs.getString("end_date");
			    
			       //System.out.print("53 lin of admin devlopment fess conteoller "+id);
			    	
			    	newItem.setSemester(semester);
			    	newItem.setMain_fee(main_fee);
			    	newItem.setMisce_fee(misce_fee);
			    	newItem.setStart_date(start_date);
			    	newItem.setEnd_date(end_date);
			    	
			    	
			    
			    	response.setContentType("text/html");
			    	
			    	PrintWriter out = response.getWriter(); 
			    	
			    	//out.println(newItem);
			    	
			    	Gson gson = new Gson();
			    	JsonElement element = gson.toJsonTree(newItem);
			    	out.write(element.toString());
			    	
			    	
			    	
			    	
			    	
			    	
			    	

			    	   	/*out.println("<tbody>");
			    	   		out.println("<tr>");
			    	   			out.println("<td>");
			    	   			out.println(semester);
			    	   			out.println("</td>");
			    	   			
			    	   		
			    	   			out.println("<td>");
			    	   			out.println(main_fee);
			    	   			out.println("</td>");
			    	   			
			    	   			out.println("<td>");
			    	   			out.println(misce_fee);
			    	   			out.println("</td>");
			    	   			
			    	   			out.println("<td>");
			    	   			out.println(start_date);
			    	   			out.println("</td>");
			    	   			
			    	   			out.println("<td>");
			    	   			out.println(end_date);
			    	   			out.println("</td>");
			    	   			
			    	   			out.println("<td>");
			    	   			out.println("update");
			    	   			out.println("</td>");
			    	   			
			    	   			out.println("</tr>");	
			    	   	out.println("</tbody>");
			    	   		
			    	   		
			    	   out.close();*/
			    	
			    	
			    	
			    
			    }
			}catch(Exception e) {}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
