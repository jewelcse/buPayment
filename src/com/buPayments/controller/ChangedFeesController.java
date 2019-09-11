package com.buPayments.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.ChangedFees;
import com.buPayments.model.SemesterFees;

/**
 * Servlet implementation class ChangedFeesController
 */
@WebServlet("/ChangedFeesController")
public class ChangedFeesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String roll = request.getParameter("roll");
		String semester = request.getParameter("ssemester");
		String changed_amount = request.getParameter("changed_amount");
		
		
		ChangedFees changedFees = new ChangedFees(roll,semester,changed_amount);
		
		mainController.ChangedFeesNow(changedFees);

		response.sendRedirect("admin_index.jsp");
	}
}


