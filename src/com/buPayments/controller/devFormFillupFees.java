package com.buPayments.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;


@WebServlet("/devFormFillupFees")
public class devFormFillupFees extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("s_id");
		String semester = request.getParameter("s_semester");
		String formfillup_fee = request.getParameter("s_formfillup_fee");

		
		FormfillupFees newFormfillup = new FormfillupFees(formfillup_fee, semester, id);
		
		try {
			mainController.addFormfillupFeestoDb(newFormfillup);
			
//			HttpSession session = request.getSession(true);       
//		    session.setAttribute("devProcess",100); 
		      
//			RequestDispatcher dispatcher = request.getRequestDispatcher("devprocess.jsp");
//			dispatcher.forward(request, response);
			response.sendRedirect("devprocess.jsp");
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
