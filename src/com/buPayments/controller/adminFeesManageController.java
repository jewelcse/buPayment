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
import javax.swing.text.StyledEditorKit.BoldAction;

import com.buPayments.Dao.adminDao;
import com.buPayments.Dao.adminFeesDao;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Department;
import com.buPayments.model.Student;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/adminFeesManageController")
public class adminFeesManageController extends HttpServlet {

	static dbConnection db = new dbConnection();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// adminFeesManageController?type=developmentfee&&page
		// adminFeesManageController?type=semesterfee&&page
		// adminFeesManageController?type=formfillupfee&&page
		String type = request.getParameter("type");

		//String pageNo = request.getParameter("page");
		String page = request.getParameter("page");
		
		 

		if (type.equals("developmentfee")) {
			int stpage = Integer.parseInt(page);
			int total = 8;
			if (stpage == 1) {
			} else {
				stpage = stpage - 1;
				stpage = stpage * total + 1;
			}

			ArrayList<adminDevelopmentFeesTable> list = adminFeesDao.showAllDevelopmentFees(stpage, total);

			PrintWriter out = response.getWriter();

			request.setAttribute("development_fees_list", list);

			RequestDispatcher view = request.getRequestDispatcher("admin_development_fees_table.jsp");
			view.forward(request, response);

		} else if (type.equals("semesterfee")) {
			int stpage = Integer.parseInt(page);
			int total = 8;
			if (stpage == 1) {
			} else {
				stpage = stpage - 1;
				stpage = stpage * total + 1;
			}

			ArrayList<adminSemesterFeesTable> list = adminFeesDao.showAllSemesterFees(stpage, total);

			PrintWriter out = response.getWriter();

			request.setAttribute("semester_fees_list", list);

			RequestDispatcher view = request.getRequestDispatcher("admin_semester_fees_table.jsp");
			view.forward(request, response);

		} else if (type.equals("formfillupfee")) {
			int stpage = Integer.parseInt(page);
			int total = 8;
			if (stpage == 1) {
			} else {
				stpage = stpage - 1;
				stpage = stpage * total + 1;
			}

			ArrayList<adminFormFillUpFeesTable> list = adminFeesDao.showAllFormfillupFees(stpage, total);

			PrintWriter out = response.getWriter();

			request.setAttribute("formfillup_fees_list", list);

			RequestDispatcher view = request.getRequestDispatcher("admin_form_fill_up_fees_table.jsp");
			view.forward(request, response);

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// adminFeesManageController?type=update_development_fee

		String type = request.getParameter("type");

		if (type.equals("update_development_fee")) {

			String roll = request.getParameter("roll");
			String semester = request.getParameter("semester");
			String changed_amount = request.getParameter("changed_amount");
			String departmentId = request.getParameter("department");

			System.out.println(roll + semester + changed_amount + " " + departmentId);
			
			

			ChangedFees changedFees = new ChangedFees(roll, semester, changed_amount,departmentId);

			boolean duplicate = mainController.FindDuplicateChangedDevelopmentFees(roll, semester,departmentId);
			
			PrintWriter out = response.getWriter();

			if (!duplicate) {
				mainController.ChangedFeesNow(changedFees);
				response.sendRedirect("adminController?target=update_development_fee");
				out.write("ok");
				out.close();
			} else {
				out.write("err");
				response.sendRedirect("adminController?target=update_development_fee");
				System.out.println("---->Duplicate Entity found!");
				out.close();

			}

		}

	}

}
