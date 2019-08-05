package com.buPayments.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.buPayments.model.Admin;
import com.buPayments.model.Student;


@WebServlet("/adminLogout")
public class adminLogout extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try
		 {       

			   Admin logoutAdmin  = new Admin();
			  
		       HttpSession session=request.getSession(false);
		       session.removeAttribute("currentSessionAdmin");
		       session.invalidate();
		       response.sendRedirect("adminlogin.jsp");
		       System.out.print("log-out");
		 }      
		 catch (Throwable theException)        
		 {
		      System.out.println(theException); 
		 }
		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
