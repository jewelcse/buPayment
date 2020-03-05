package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.Dao.adminFeesDao;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

@WebServlet("/adminFeesEditTableController")
public class adminFeesEditTableController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// adminFeesEditTableController?fee_type=developmentfee&&edit_id
		// adminFeesEditTableController?fee_type=formfillupfee&&edit_id
		// adminFeesEditTableController?fee_type=semesterfee&&edit_id

		String fee_type = request.getParameter("fee_type");

		String id = request.getParameter("edit_id");

		if (fee_type.equals("developmentfee")) {

			adminDevelopmentFeesTable devItem = adminFeesDao.getDevelopmentFeeById(id);

			PrintWriter out = response.getWriter();

			request.setAttribute("development_fee", devItem);

			RequestDispatcher view = request.getRequestDispatcher("development_fees_edit.jsp");
			view.forward(request, response);

		} else if (fee_type.equals("semesterfee")) {

			adminSemesterFeesTable semItem = adminFeesDao.getSemesterFeeById(id);

			PrintWriter out = response.getWriter();

			request.setAttribute("semester_fee", semItem);

			RequestDispatcher view = request.getRequestDispatcher("semester_fees_edit.jsp");
			view.forward(request, response);

		} else if (fee_type.equals("formfillupfee")) {

			adminFormFillUpFeesTable formItem = adminFeesDao.getFormfillupFeeById(id);

			PrintWriter out = response.getWriter();

			request.setAttribute("formfillup_fee", formItem);

			RequestDispatcher view = request.getRequestDispatcher("form_fillup_fees_edit.jsp");
			view.forward(request, response);

		}

	}

}
