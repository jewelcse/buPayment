package com.buPayments.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminManageFeesController
 */
@WebServlet("/adminManageFeesController")
public class adminManageFeesController extends HttpServlet {
	
	

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deptname=  request.getParameter("deptname");
		
		System.out.println(deptname);
		
		
		//RequestDispatcher dispatcher =  request.getRequestDispatcher("admin_development_fees_table.jsp");
		
	    //dispatcher.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
