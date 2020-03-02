package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.buPayments.Dao.adminDao;
import com.buPayments.Dao.adminDevelopmentFeesDao;
import com.buPayments.model.Admin;
import com.buPayments.model.Student;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.allApplication;

@WebServlet("/adminController")
public class adminController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// target=show_all_admin
		// target=delete
		// target=new_admin_create

		String action = request.getParameter("target");

		String delete_id = request.getParameter("delete_id");
		// System.out.println(delete_id);

		if (action.equals("show_all_admin")) {

			ArrayList<Admin> admin_list = adminDao.showAllSubAdmin();

			PrintWriter out = response.getWriter();

			request.setAttribute("sub_admin_list", admin_list);

			RequestDispatcher view = request.getRequestDispatcher("all_sub_admin.jsp");
			view.forward(request, response);

		} else if (action.equals("delete")) {

			try {
				mainController.deleteAdmin(delete_id);
				response.sendRedirect("adminController?target=show_all_admin");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (action.equals("new_admin_create")) {

			RequestDispatcher dispatcher = request.getRequestDispatcher("adminSettings.jsp");

			dispatcher.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if (action.equals("login")) {

			String adminType = request.getParameter("admin_status");

			String admin = request.getParameter("admin");
			String password = request.getParameter("password");

			Admin login_admin = new Admin();
			login_admin.setName(admin);
			login_admin.setPassword(password);
			login_admin.setAdminType(adminType);

			login_admin = mainController.admin_login(login_admin);

			if (login_admin.isSuperAdminIsvalid()) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionForSuperAdmin", login_admin);
				session.setAttribute("currentSuperAdminName", admin);
				response.sendRedirect("super-admin.jsp"); // logged-in page

			}

			else if (login_admin.isSubAdminIsvalid()) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentSubAdminName", admin);
				session.setAttribute("currentSessionForSubAdmin", login_admin);
				response.sendRedirect("super-admin.jsp"); // logged-in page

			}

			else
				response.sendRedirect("admin-login.jsp"); // error page

		} else if (action.equals("addNewAdmin")) {

			String newAdminName = request.getParameter("name");
			String item1 = request.getParameter("item1");
			String item2 = request.getParameter("item2");
			String item3 = request.getParameter("item3");
			String item4 = request.getParameter("item4");
			String item5 = request.getParameter("item5");
			String item6 = request.getParameter("item6");

			// System.out.println(item1+item2+item3+item4+item5+item6);

			if (item1 == null) {
				item1 = "0";
			}
			if (item2 == null) {
				item2 = "0";
			}
			if (item3 == null) {
				item3 = "0";
			}
			if (item4 == null) {
				item4 = "0";
			}
			if (item5 == null) {
				item5 = "0";
			}
			if (item6 == null) {
				item6 = "0";
			}

			System.out.println(item1 + item2 + item3 + item4 + item5 + item6);

			Random rand = new Random();
			Integer min = 1000;
			Integer max = 10000;
			Integer rand_int1 = rand.nextInt((max - min) + 1) + min;
			String password = String.valueOf(rand_int1);

			if (mainController.addNewAdmin(newAdminName, password, item1, item2, item3, item4, item5, item6) == true) {

				response.sendRedirect("adminController?target=show_all_admin");

			}

			else {

				response.sendRedirect("adminSettings.jsp?error");
			}

		}

		else {
			System.out.println("Something wrong in adminController servlet ");
		}

	}

}
