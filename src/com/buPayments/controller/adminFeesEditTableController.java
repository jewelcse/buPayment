package com.buPayments.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;


@WebServlet("/adminFeesEditTableController")
public class adminFeesEditTableController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//adminFeesEditTableController?fee_type=development_fee&&edit_id
		
		String fee_type = request.getParameter("fee_type");
		
		
		//System.out.println("Development fee edit type "+fee_type);
		
		
		String id=request.getParameter("edit_id");
		
		if (fee_type.equals("development_fee")) {

		        
		        adminDevelopmentFeesTable devItem=mainController.getDevelopmentItemById(id);  
		        
		        
		        devItem.setId(devItem.getId());
		        devItem.setSemester(devItem.getSemester());
		        devItem.setMain_fee(devItem.getMain_fee());
		        devItem.setMisce_fee(devItem.getMisce_fee());
		        devItem.setStart_date(devItem.getStart_date());
		        devItem.setEnd_date(devItem.getEnd_date());
		        
		        
		 	    request.setAttribute("devItem", devItem);			  	   			  	    
		 		request.getRequestDispatcher("development_fees_edit.jsp").forward(request, response);
		 		

		} else if (fee_type.equals("semester_fee")) {

			adminSemesterFeesTable semItem = mainController.getSemesterItemById(id);  
	          

	        
	        semItem.setId(semItem.getId());
	        semItem.setSemester(semItem.getSemester());
	        semItem.setMain_fee(semItem.getMain_fee());
	        semItem.setMisce_fee(semItem.getMisce_fee());
	        semItem.setStart_date(semItem.getStart_date());
	        semItem.setEnd_date(semItem.getEnd_date());
	        
	        
	 	     request.setAttribute("semItem", semItem);
	 	     request.getRequestDispatcher("semester_fees_edit.jsp").forward(request, response);
			
		} else if (fee_type.equals("formfillup_fee")) {

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
		
	}


}
