package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

/**
 * Servlet implementation class adminSemesterFeesTableEdit
 */
@WebServlet("/adminSemesterFeesTableEdit")
public class adminSemesterFeesTableEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adminSemesterFeesTableEdit() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        out.println("<h1>Update Semester Fees table</h1>");  
        String id=request.getParameter("Edit_id");  
        //Integer newId=Integer.parseInt(id); 
        //System.out.println("ID Line number 39 "+id);
        
        adminSemesterFeesTable devItem = mainController.getSemesterItemById(id);  
          
          
        out.print("<form action='adminSemesterFeesTableController' method='post'>");  
        out.print("<table>");  
        out.print("<tr><td></td><td><input type='hidden' name='id' value='"+devItem.getId()+"'/></td></tr>");          
        out.print("<tr><td>Semester:</td><td><input type='text' name='semester' value='"+devItem.getSemester()+"' readonly/></td></tr>");  
        out.print("<tr><td>Main Fee:</td><td><input type='text' name='main_fee' value='"+devItem.getMain_fee()+"' readonly/></td></tr>");
        out.print("<tr><td>Misce Fee:</td><td><input type='text' name='misce_fee' value='"+devItem.getMisce_fee()+"' readonly/></td></tr>");
        out.print("<tr><td>Start date:</td><td><input type='Date' name='start_date' value='"+devItem.getStart_date()+"'/></td></tr>");
        out.print("<tr><td>End Date:</td><td><input type='Date' name='end_date' value='"+devItem.getEnd_date()+"'/></td></tr>");
        out.print("<tr><td><input type='submit' value='Edit & Save '/></td></tr>");  
        out.print("<table>"); 
        out.print("</form>");  
          
        out.close();  
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
