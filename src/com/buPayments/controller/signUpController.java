package com.buPayments.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.Student;


@WebServlet("/signUpController")
public class signUpController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		String roll = request.getParameter("s_roll");
		String reg = request.getParameter("s_reg");
		String name = request.getParameter("s_name");
		String mother_name = request.getParameter("s_mother_name");
		String father_name = request.getParameter("s_father_name");
		String email = request.getParameter("s_email");
		String faculty = request.getParameter("s_faculty");
		String department = request.getParameter("s_department");
		String semester = request.getParameter("s_semester");
		String phone = request.getParameter("s_phone");
		String password = request.getParameter("s_password");
		
//		System.out.print(roll);
		
		Student newStudent = new Student(roll,reg,name,father_name,mother_name,email,phone,password,semester,department,faculty);
			
		try {
			mainController.addStudent(newStudent);
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		

		
	}

}
