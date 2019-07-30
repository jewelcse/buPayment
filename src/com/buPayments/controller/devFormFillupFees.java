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
		
		String roll = request.getParameter("s_roll");
		String reg = request.getParameter("s_reg");
		String name = request.getParameter("s_name");
		String mother_name = request.getParameter("s_mother_name");
		String father_name = request.getParameter("s_father_name");
		String faculty = request.getParameter("s_faculty");
		String department = request.getParameter("s_department");
		String semester = request.getParameter("s_semester");
		String formfillup_fee = request.getParameter("s_formfillup_fee");
		String phone = request.getParameter("s_phone");
		
		FormfillupFees newFormfillup = new FormfillupFees(roll, reg, name, department, semester, formfillup_fee, phone);
		
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
