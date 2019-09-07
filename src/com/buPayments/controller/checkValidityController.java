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

/**
 * Servlet implementation class checkValidityController
 */
@WebServlet("/checkValidityController")
public class checkValidityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkValidityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String semester = request.getParameter("semester");
		String feeType = request.getParameter("fee_type");
		
		//System.out.println(semester + " " + feeType);
		
		
		try {
			String res = mainController.checkValidity(feeType,semester);
			
			if(res.equals("dev_page")){
				RequestDispatcher dispatcher =  request.getRequestDispatcher("devFees.jsp");
		    	dispatcher.forward(request, response);
			}else{
				RequestDispatcher dispatcher =  request.getRequestDispatcher("check_devFees.jsp");
		    	dispatcher.forward(request, response);
			}
		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
