package com.buPayments.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.buPayments.model.Devfees;

@WebServlet("/devFeesController")
public class devFeesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public devFeesController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("s_id");
		String semester = request.getParameter("s_semester");
		String s_development_fee = request.getParameter("s_development_fee");
		


		
		Devfees newDevfees = new Devfees(s_development_fee, semester, id);
		
		try {
			mainController.addDevFeestoDb(newDevfees);
			
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
