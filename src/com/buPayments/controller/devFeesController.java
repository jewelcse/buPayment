package com.buPayments.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.text.StringEscapeUtils;

import com.buPayments.Dao.studentsDao;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Department;
import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.mysql.jdbc.PreparedStatement;

import com.buPayments.sslcommerz.TransactionInitiator;

@WebServlet("/devFeesController")
public class devFeesController extends HttpServlet {
<<<<<<< HEAD

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// devFeesController?feetype=devfees
		// devFeesController?feetype=semesterfee
		// devFeesController?feetype=formfillupfee

		String sub = request.getParameter("feetype");

		String id = request.getParameter("s_id");
		String semester = request.getParameter("s_semester");
		String amount = request.getParameter("total_amount");

		// System.out.println(semester);
		// System.out.println("id" + id + "semester " + semester + " amount " +
		// development_fee);

		if (sub.equals("devfees")) {

			if (!semester.equals("0")) {

				//String rand1 = UUID.randomUUID().toString();
				String rand2 = UUID.randomUUID().toString();
				// System.out.println(id);
				Student student = studentsDao.getStudentProfileById(id);
				// System.out.println("name"+student.getS_name());

				// System.out.println(student.getId() + " ++++" + student.getS_department());
=======
	private static final long serialVersionUID = 1L;
	static dbConnection db = new dbConnection();

    public devFeesController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	/*	String semester = request.getParameter("s_semester");
		String roll= request.getParameter("s_roll");
		String deptname = request.getParameter("s_department");
		
		System.out.println(semester + roll + deptname);
		
		Department dept ;
		
	    dept = mainController.getDepartmentIdByDepartmentName(deptname);
	    
	    String departmentId = dept.getDeptId();
	    
	    System.out.println("dept id "+departmentId);
	    
	    adminDevelopmentFeesTable devfee;
	    devfee = mainController.findDevelopmentFee(departmentId,semester);
		
		System.out.println("devfee = "+devfee.getMain_fee() + devfee.getMisce_fee());
		
		ChangedFees changedfee = mainController.findChangedDevelopmentFee(roll,semester,departmentId);
		
		System.out.println("chfee "+changedfee.getChanged_amount());
		String chfee = changedfee.getChanged_amount();
		
		if(chfee ==  null) {
			chfee = "0";
			
		}
		
		
		PrintWriter out = response.getWriter();
		
		request.setAttribute("mainfee", devfee.getMain_fee());
		request.setAttribute("miscefee", devfee.getMisce_fee());
		request.setAttribute("changedfee", chfee);
		
		request.getRequestDispatcher("devFees.jsp").forward(request, response);
		
		*/
		
	}
	
	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sub=request.getParameter("devfees_id");
		
		
		if(sub.equals("devfees")){
			
			String id = request.getParameter("s_id");
			String semester = request.getParameter("s_semester");
			String development_fee = request.getParameter("total_amount");
			System.out.println(semester);
			System.out.println("id"+id +"semester "+ semester+ " amount "+development_fee);
			if( ! semester.equals("0")) {
			
				Devfees newDevfees = new Devfees(id,semester,development_fee);
				String rand = UUID.randomUUID().toString();
				System.out.println(id);
				Student student = studentsDao.getStudentProfileById(id);
				System.out.println("name"+student.getS_name());
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db
				Devfees devfees = new Devfees();

				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyMM-ddHH-mmss");
				LocalDateTime now = LocalDateTime.now();
				String time = (dtf.format(now));

				String trans_id = time + "-" + rand2;
				System.out.println(trans_id);

				// System.out.println(student.toString());
				String deptName = student.getS_department();
				Department dept = mainController.getDepartmentIdByDepartmentName(deptName);

				// System.out.println("-------------->" + dept.getDeptId());
				devfees.setStudentId(id);
				devfees.setSemester(semester);
				devfees.setAmount(amount);
				devfees.setTransId(trans_id);
				devfees.setDepartmentId(dept.getDeptId());

				com.buPayments.sslcommerz.TransactionInitiator trans = new com.buPayments.sslcommerz.TransactionInitiator();

				String response1 = trans.initTrnxnRequest(student, devfees);
<<<<<<< HEAD
				System.out.println("LINE 131 " + response1);

=======
				System.out.println("LINE 131 "+ response1);
				
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db
				response.sendRedirect(response1);

				
			} else {
				HttpSession session = request.getSession(true);
				String pagename = (String) session.getAttribute("current_page");
				System.out.println("show js msg for confirm semester");
				response.sendRedirect(pagename);
			}
		}

		else if (sub.equals("semesterfee")) {

			if (!semester.equals("0")) {

				//String rand1 = UUID.randomUUID().toString();
				String rand2 = UUID.randomUUID().toString();
				Student student = studentsDao.getStudentProfileById(id);
				SemesterFees semfee = new SemesterFees();

				
				  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyMM-ddHH-mmss");
				  LocalDateTime now = LocalDateTime.now(); 
				  String time = (dtf.format(now));
				 

				String trans_id = time + "-" + rand2;
				System.out.println(trans_id);

				String deptName = student.getS_department();
				Department dept = mainController.getDepartmentIdByDepartmentName(deptName);

				semfee.setStudentId(id);
				semfee.setSemester(semester);
				semfee.setAmount(amount);
				semfee.setTransId(trans_id);
				semfee.setDepartmentId(dept.getDeptId());

				com.buPayments.sslcommerz.TransactionInitiator trans = new com.buPayments.sslcommerz.TransactionInitiator();

				String response2 = trans.initTrnxnRequest(student, semfee);
				System.out.println("LINE 144 " + response2);

				response.sendRedirect(response2);

				
			} else {
				HttpSession session = request.getSession(true);
				String pagename = (String) session.getAttribute("current_page");
				System.out.println("show js msg for confirm semester");
				response.sendRedirect(pagename);
			}

		} else if (sub.equals("formfillupfee")) {
			if (!semester.equals("0")) {

				//String rand1 = UUID.randomUUID().toString();
				String rand2 = UUID.randomUUID().toString();

				Student student = studentsDao.getStudentProfileById(id);
				FormfillupFees formfillupfee = new FormfillupFees();
				
				 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyMM-ddHH-mmss");
				  LocalDateTime now = LocalDateTime.now(); 
				  String time = (dtf.format(now));

				String trans_id = time + "-" + rand2;
				System.out.println(trans_id);

				String deptName = student.getS_department();
				Department dept = mainController.getDepartmentIdByDepartmentName(deptName);

				formfillupfee.setStudentId(id);
				formfillupfee.setSemester(semester);
				formfillupfee.setAmount(amount);
				formfillupfee.setTransId(trans_id);
				formfillupfee.setDepartmentId(dept.getDeptId());

				com.buPayments.sslcommerz.TransactionInitiator trans = new com.buPayments.sslcommerz.TransactionInitiator();

				String response3 = trans.initTrnxnRequest(student, formfillupfee);
				System.out.println("LINE 193 " + response3);

				response.sendRedirect(response3);

			} else {
				HttpSession session = request.getSession(true);
				String pagename = (String) session.getAttribute("current_page");
				System.out.println("show js msg for confirm semester");
				response.sendRedirect(pagename);
			}
		} else if (sub.equals("application_form")) {

			String aid = request.getParameter("id");
			String asemester = request.getParameter("semester");
			String subject = request.getParameter("subject");
			String subject2 = request.getParameter("subject2");
			String feetype = request.getParameter("feetype");
			String reason = request.getParameter("reason"); // String reason1 = StringEscapeUtils. String
			String dept = request.getParameter("s_dept");
			String newSub = "";

			if (subject != null && subject2 != null) {
				newSub = subject + " and " + subject2;
			} else if (subject.length() > 0) {
				newSub = subject;
			} else if (subject2.length() > 0) {
				newSub = subject2;
			} else {
				newSub = "";
			}

			Connection myConn = null;
			PreparedStatement myStmt = null;

			dbConnection db = new dbConnection();

			myConn = db.getCon();

			String sql = "insert into application_form_table "
					+ "(semester,subject,feeType,reason,student_id,department) " + "values (?,?,?,?,?,?)";

			try {
				myStmt = (PreparedStatement) myConn.prepareStatement(sql);
				myStmt.setString(1, asemester);
				myStmt.setString(2, newSub);
				myStmt.setString(3, feetype);
				myStmt.setString(4, reason);
				myStmt.setString(5, aid);
				myStmt.setString(6, dept);

				myStmt.execute();

				System.out.print("application-submit-success");
				//response.setContentType("application/pdf");
				//response.setHeader("content-disposition", "Filename.pdf");
				RequestDispatcher dispatcher = request.getRequestDispatcher("success_form.jsp");
				dispatcher.forward(request, response);

			} catch (SQLException e) { // TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			System.out.println("nothing");
		}

	}

}
