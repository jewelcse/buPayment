package com.buPayments.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class checkValidityController
 */
@WebServlet("/checkValidityController")
public class checkValidityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public checkValidityController() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String semester = request.getParameter("semester");
		String feeType = request.getParameter("fee_type");

		//System.out.println(semester+"Check Validity:  "+feeType);
		HttpSession session = request.getSession(true);
		
		try {
			String res = mainController.checkValidity(feeType,semester);
			
			System.out.println("Res value: "+res);
			String pagename = "checkValidityController?fee_type="+feeType+"&semester="+semester;
			session.setAttribute("current_page",pagename); 
		    
		    
		    
			if(res.equals("dev_page")){
				RequestDispatcher dispatcher =  request.getRequestDispatcher("devFees.jsp");
		    	dispatcher.forward(request, response);
			}
			else if(res.equals("semester_page")){
				RequestDispatcher dispatcher =  request.getRequestDispatcher("semesterFees.jsp");
		    	dispatcher.forward(request, response);
				
			}
			
			else if(res.equals("formfillup_page")){
				RequestDispatcher dispatcher =  request.getRequestDispatcher("formFillUp.jsp");
		    	dispatcher.forward(request, response);
				
			}
			else{
			
				response.sendRedirect("payment.jsp?expire_date"); 
				System.out.println("line no 63");
			}
		} catch (SQLException | ParseException e) {

			e.printStackTrace();
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String test=request.getParameter("action");
		
		System.out.println("Action: "+test);
		
	}

}
