package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import netscape.javascript.JSObject;

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
	
		//RequestDispatcher rd=null;
		String semester = request.getParameter("s_semester");
		String roll= request.getParameter("s_roll");
		
		//System.out.print(roll + "  " +semester);
		
		try {

			String	amount =  mainController.check_development_fee(semester,roll);

			
		    //System.out.println(amount);
			PrintWriter out = response.getWriter();  
			//request.setAttribute("amount", amount);
			
			//response.setContentType("text/plain");
			//response.setCharacterEncoding("UTF-8");
			//response.getWriter().write(amount);
	        out.println(amount);
	        //rd=request.getRequestDispatcher("/test.jsp");
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//rd.forward(request, response);
		
	}
	

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("s_id");
		String semester = request.getParameter("s_semester");
		String development_fee = request.getParameter("amount");
		
	
		
		System.out.println("Amount Line no 75 "+development_fee);

		
		Devfees newDevfees = new Devfees(id,semester,development_fee);
		
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
