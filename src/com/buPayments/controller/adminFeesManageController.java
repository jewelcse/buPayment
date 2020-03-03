package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.Dao.adminDevelopmentFeesDao;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Student;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/adminFeesManageController")
public class adminFeesManageController extends HttpServlet {

	static dbConnection db = new dbConnection();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// type=development&&page=1
		String type = request.getParameter("type");
		String page = request.getParameter("page");

		if (type.equals("developmentfee")) {

			int stpage = Integer.parseInt(page);
			int total = 8;
			if (stpage == 1) {
			} else {
				stpage = stpage - 1;
				stpage = stpage * total + 1;
			}

			ArrayList<adminDevelopmentFeesTable> list = adminDevelopmentFeesDao.showDevelopmentFeesTable(stpage, total);

			PrintWriter out = response.getWriter();

			request.setAttribute("development_fees_list", list);

			RequestDispatcher view = request.getRequestDispatcher("admin_development_fees_table.jsp");
			view.forward(request, response);

		} else if (type.equals("semesterfee")) {

		} else if (type.equals("formfillupfee")) {

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// adminFeesManageController?type=update_development_fee

		String type = request.getParameter("type");

		if (type.equals("update_development_fee")) {

			String roll = request.getParameter("roll");
			String semester = request.getParameter("ssemester");
			String changed_amount = request.getParameter("changed_amount");

			ChangedFees changedFees = new ChangedFees(roll, semester, changed_amount);
			boolean duplicate = true;
			
			duplicate = FindDuplicateChangedDevelopmentFees(roll, semester);

			System.out.println(duplicate);
			
			

			if(!duplicate) {
				mainController.ChangedFeesNow(changedFees);
				response.sendRedirect("adminController?target=update_development_fee");
			}else {
				System.out.println("---->Duplicate Entity found!");
			}

		
			
		}

	}

	private boolean FindDuplicateChangedDevelopmentFees(String roll, String semester) {
		// TODO Auto-generated method stub
		return false;
	}

}
