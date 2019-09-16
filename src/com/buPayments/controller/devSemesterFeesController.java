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
import com.buPayments.model.SemesterFees;


@WebServlet("/devSemesterFeesController")
public class devSemesterFeesController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("s_id");
		String semester = request.getParameter("s_semester");
		String semester_fee = request.getParameter("s_semester_fee");
		
		//System.out.print(id);
		
		SemesterFees newsemesterFee = new SemesterFees(id,semester,semester_fee);
		
		try {
			
			String rs = mainController.addsemesterFeestoDb(newsemesterFee);
			
			if(rs.equals("success")){
				
				response.sendRedirect("devprocess.jsp");
			}
			else{
				response.sendRedirect("already_payment.jsp");
			}	
				
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
