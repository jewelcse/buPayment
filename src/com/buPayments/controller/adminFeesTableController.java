package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

@WebServlet("/adminFeesTableController")
public class adminFeesTableController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fee_type = request.getParameter("type");
		System.out.println(fee_type);

		if (fee_type.equals("development_fee")) {

			RequestDispatcher dispatcher = request.getRequestDispatcher("admin_development_fees_table.jsp");

			dispatcher.forward(request, response);

		} else if (fee_type.equals("semester_fee")) {

			RequestDispatcher dispatcher = request.getRequestDispatcher("admin_semester_fees_table.jsp");

			dispatcher.forward(request, response);

		} else if (fee_type.equals("formfillup_fee")) {

			RequestDispatcher dispatcher = request.getRequestDispatcher("admin_form_fill_up_fees_table.jsp");
			dispatcher.forward(request, response);

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String edit_fee_type = request.getParameter("edit_fee_type");

		if (edit_fee_type.equals("development_fee")) {			
			
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

			

		} else if (edit_fee_type.equals("semester_fee")) {

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
			

		} else if (edit_fee_type.equals("formfillup_fee")) {

			response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	          
	        String id=request.getParameter("id");  
	        //int newId=Integer.parseInt(id);  
	        String semester=request.getParameter("semester");  
	        String main_fee=request.getParameter("main_fee");  
	        String misce_fee=request.getParameter("misce_fee");  
	        String start_date=request.getParameter("start_date");  
	        String end_date=request.getParameter("end_date");
	        
	        adminFormFillUpFeesTable formfillupfee = new adminFormFillUpFeesTable();
	        
	        formfillupfee.setId(id);
	        formfillupfee.setSemester(semester);
	        formfillupfee.setMain_fee(main_fee);
	        formfillupfee.setMisce_fee(misce_fee);
	        formfillupfee.setStart_date(start_date);
	        formfillupfee.setEnd_date(end_date);
	        
	        mainController.updateFormFillUpFeesTable(formfillupfee);
	        
	        RequestDispatcher dispatcher =  request.getRequestDispatcher("admin_form_fill_up_fees_table.jsp");
			
	    	dispatcher.forward(request, response);

		}

	}

}
