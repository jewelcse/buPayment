package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

/**
 * Servlet implementation class adminFormFillUpFeesTableEdit
 */
@WebServlet("/adminFormFillUpFeesTableEdit")
public class adminFormFillUpFeesTableEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminFormFillUpFeesTableEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        out.println("<h1>Update Form Fill Up Fees table</h1>");  
        String id=request.getParameter("Edit_id");  
        //Integer newId=Integer.parseInt(id); 
        //System.out.println("ID Line number 39 "+id);
        
        adminFormFillUpFeesTable Item = mainController.getFormFillUpItemById(id);  
          
          
        out.print("<form action='adminFormFillUpFeesTableController' method='post'>");  
        out.print("<table>");  
        out.print("<tr><td></td><td><input type='hidden' name='id' value='"+Item.getId()+"'/></td></tr>");          
        out.print("<tr><td>Semester:</td><td><input type='text' name='semester' value='"+Item.getSemester()+"' readonly/></td></tr>");  
        out.print("<tr><td>Main Fee:</td><td><input type='text' name='main_fee' value='"+Item.getMain_fee()+"'/></td></tr>");
        out.print("<tr><td>Misce Fee:</td><td><input type='text' name='misce_fee' value='"+Item.getMisce_fee()+"'/></td></tr>");
        out.print("<tr><td>Start date:</td><td><input type='Date' name='start_date' value='"+Item.getStart_date()+"'/></td></tr>");
        out.print("<tr><td>End Date:</td><td><input type='Date' name='end_date' value='"+Item.getEnd_date()+"'/></td></tr>");
        out.print("<tr><td><input type='submit' value='Edit & Save '/></td></tr>");  
        out.print("<table>"); 
        out.print("</form>");  
          
        out.close();  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
