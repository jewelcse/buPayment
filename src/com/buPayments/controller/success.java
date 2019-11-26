package com.buPayments.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.sslcommerz.TransactionResponseValidator;

/**
 * Servlet implementation class success
 */
@WebServlet("/success")
public class success extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public success() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("cus_id"));
		System.out.println(request.getParameterMap());

		Map<String, String[]> map = request.getParameterMap();
		Map<String, String> map2 = new HashMap<String, String>();
	
		com.buPayments.sslcommerz.TransactionResponseValidator transactionResponseValidator = new com.buPayments.sslcommerz.TransactionResponseValidator();
		//		transactionResponseValidator.receiveSuccessResponse(map);
		int line = 1;
		for (String var : map.keySet()) {
		//	System.out.println(map.get(var).length);
			String[] array = map.get(var);
			for (String string : array) {
				System.out.println("line "+ line++ + " -> " +var + " : " +string + "\n\n");	
				map2.put(var, string);
			}	
		}	
		try {
			if (transactionResponseValidator.receiveSuccessResponse(map2)) {
				request.getRequestDispatcher("success.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("fail.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
		


}
