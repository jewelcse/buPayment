package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;

/**
 * Servlet implementation class adminDevelopmentFeesTableEdit
 */
@WebServlet("/adminDevelopmentFeesTableEdit")
public class adminDevelopmentFeesTableEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static dbConnection db = new dbConnection(); 
	
    public adminDevelopmentFeesTableEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	        String id=request.getParameter("Edit_id");  

	        
	        adminDevelopmentFeesTable devItem=mainController.getDevelopmentItemById(id);  
	          
	        devItem.setId(devItem.getId());
	        devItem.setSemester(devItem.getSemester());
	        devItem.setMain_fee(devItem.getMain_fee());
	        devItem.setMisce_fee(devItem.getMisce_fee());
	        devItem.setStart_date(devItem.getStart_date());
	        devItem.setEnd_date(devItem.getEnd_date());
	        
	        
	 	     request.setAttribute("devItem", devItem);
		  	    
		  	    
	 		request.getRequestDispatcher("development_fees_edit.jsp").forward(request, response);
	        

	     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
