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


@WebServlet("/adminController")
public class adminController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String admin = request.getParameter("admin");
		String password = request.getParameter("password");
		
		
		
		
		Admin login_admin  = new Admin();
		login_admin.setAdmin(admin);
		login_admin.setPassword(password);
		
		login_admin = mainController.admin_login(login_admin);
		 if (login_admin.isValid())
		 {
		       
		      HttpSession session = request.getSession(true);       
		      session.setAttribute("currentSessionAdmin",login_admin); 
		      response.sendRedirect("super-admin.jsp"); //logged-in page           
			  System.out.print("admin login success");
		 }
		       
		 else 
		      response.sendRedirect("admin-login.jsp"); //error page 
		
		
	}
	

}
