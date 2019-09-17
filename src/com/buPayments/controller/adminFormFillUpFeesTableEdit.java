package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

/**
 * Servlet implementation class adminFormFillUpFeesTableEdit
 */
@WebServlet("/adminFormFillUpFeesTableEdit")
public class adminFormFillUpFeesTableEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminFormFillUpFeesTableEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id=request.getParameter("Edit_id");  

        
        adminFormFillUpFeesTable formItem = mainController.getFormFillUpItemById(id); 
        
        
        formItem.setId(formItem.getId());
        formItem.setSemester(formItem.getSemester());
        formItem.setMain_fee(formItem.getMain_fee());
        formItem.setMisce_fee(formItem.getMisce_fee());
        formItem.setStart_date(formItem.getStart_date());
        formItem.setEnd_date(formItem.getEnd_date());
        
        
 	     request.setAttribute("formItem", formItem);
	  	    
	  	    
 		request.getRequestDispatcher("form_fillup_fees_edit.jsp").forward(request, response);
          
          
  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
