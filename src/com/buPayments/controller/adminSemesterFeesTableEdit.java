package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

/**
 * Servlet implementation class adminSemesterFeesTableEdit
 */
@WebServlet("/adminSemesterFeesTableEdit")
public class adminSemesterFeesTableEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adminSemesterFeesTableEdit() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


   
        String id=request.getParameter("Edit_id");  

        
        adminSemesterFeesTable semItem = mainController.getSemesterItemById(id);  
          

        
        semItem.setId(semItem.getId());
        semItem.setSemester(semItem.getSemester());
        semItem.setMain_fee(semItem.getMain_fee());
        semItem.setMisce_fee(semItem.getMisce_fee());
        semItem.setStart_date(semItem.getStart_date());
        semItem.setEnd_date(semItem.getEnd_date());
        
        
 	     request.setAttribute("semItem", semItem);
	  	    
	  	    
 		request.getRequestDispatcher("semester_fees_edit.jsp").forward(request, response);
   	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

}
