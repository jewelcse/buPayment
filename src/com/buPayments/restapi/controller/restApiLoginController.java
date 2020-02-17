package com.buPayments.restapi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import com.buPayments.controller.dbConnection;

@WebServlet("/restApiLoginController")
public class restApiLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		static dbConnection db = new dbConnection();

		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			String roll = request.getParameter("rollno");
			String pass = request.getParameter("pass");
			
			Statement stmt = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			System.out.println(roll+ " "+ pass);
			
			String sql = "select * from  student where s_Roll = '"+roll+"' AND s_Pass = '"+pass+"' ";
			
			try {
				conn = db.getCon();
				stmt = (Statement) conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				boolean more = rs.next();
				
				if(!more) {
					System.out.println("login-faield");
					
				}
				else {
					System.out.println("Login-success");
					
					JSONObject JOSON = new JSONObject();
					
					JOSON.put("roll", roll +" "+pass);
					
					
					
					PrintWriter pw = response.getWriter();
					
					pw.print(JOSON);
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
	}

}
