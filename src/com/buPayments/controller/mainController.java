package com.buPayments.controller;

import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buPayments.model.Admin;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;
import com.buPayments.model.TestCSVModel;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;
import com.mysql.jdbc.PreparedStatement;

public class mainController {
	static dbConnection db = new dbConnection();
	ArrayList<Student> al = new ArrayList<Student>();

	public static void addStudent(Student newStudent) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		String sql = "insert into student "
				+ "(s_Roll,s_Reg,s_Name,s_Father_name,s_Mother_name,s_Email,s_Phone,s_Pass,s_Semester,s_Department,s_Faculty) "
				+ "values (?,?,?,?,?,?,?,?,?,?,?)";
		myStmt = (PreparedStatement) myConn.prepareStatement(sql);
		// set the param values for the student
		myStmt.setString(1, newStudent.getS_roll());
		myStmt.setString(2, newStudent.getS_reg());
		myStmt.setString(3, newStudent.getS_name());
		myStmt.setString(4, newStudent.getS_father_name());
		myStmt.setString(5, newStudent.getS_mother_name());
		myStmt.setString(6, newStudent.getS_email());
		myStmt.setString(7, newStudent.getS_phone());
		myStmt.setString(8, newStudent.getS_password());
		myStmt.setString(9, newStudent.getS_semester());
		myStmt.setString(10, newStudent.getS_department());
		myStmt.setString(11, newStudent.getS_faculty());
		myStmt.execute();
	}

	public static Student login(Student login_student) {
		Statement stmt = null;
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		String roll = login_student.getS_roll();
		String password = login_student.getS_password();
		String sql = "select * from student where s_Roll = '" + roll + "' AND s_Pass = '" + password + "'";
		try {
			myConn = db.getCon();
			stmt = myConn.createStatement();
			myRs = stmt.executeQuery(sql);
			boolean more = myRs.next();
			if (!more) {
				System.out.println("----->Login Failed!");
				login_student.setValid(false);
			} else if (more) {
				String d_id = myRs.getString("s_Id");
				String d_roll = myRs.getString("s_Roll");
				String d_reg = myRs.getString("s_Reg");
				String d_name = myRs.getString("s_Name");
				String d_fname = myRs.getString("s_Father_name");
				String d_mname = myRs.getString("s_Mother_name");
				String d_email = myRs.getString("s_Email");
				String d_phone = myRs.getString("s_Phone");
				String d_semester = myRs.getString("s_Semester");
				String d_dept = myRs.getString("s_Department");
				String d_faculty = myRs.getString("s_Faculty");
				// System.out.println("Welcome " + d_name);
				// login_student.setS_name(name);
				login_student.setId(d_id);
				login_student.setS_roll(d_roll);
				login_student.setS_reg(d_reg);
				login_student.setS_name(d_name);
				login_student.setS_father_name(d_fname);
				login_student.setS_mother_name(d_mname);
				login_student.setS_email(d_email);
				login_student.setS_phone(d_phone);
				login_student.setS_faculty(d_faculty);
				login_student.setS_semester(d_semester);
				login_student.setS_department(d_dept);
				login_student.setValid(true);
				System.out.println("----->Login Successful!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return login_student;
	}

	public static String addDevFeestoDb(Devfees newDevfees) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		myConn = db.getCon();
		ResultSet myRs = null;
		String result = "";
		String id = newDevfees.getS_id();
		String semester = newDevfees.getS_semester();
		// System.out.println(id + " " + semester);
		String select_sql = "select * from development_fees where s_id = '" + id + "' AND semester = '" + semester
				+ "'";
		stmt = myConn.createStatement();
		myRs = stmt.executeQuery(select_sql);
		boolean more = myRs.next();
		if (!more) {
			String sql = "insert into development_fees " + "(s_id,semester,amount) " + "values (?,?,?)";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, newDevfees.getS_id());
			myStmt.setString(2, newDevfees.getS_semester());
			myStmt.setString(3, newDevfees.getS_semester_fee());
			myStmt.execute();
			System.out.print("----->Development Fees payment successful!");
			return result = "success";
		} else {
			System.out.println("----->Already paid!");
			return result = "failed";
		}
	}

	public static String addsemesterFeestoDb(SemesterFees newsemesterFee) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		myConn = db.getCon();
		ResultSet myRs = null;
		String result = "";
		String id = newsemesterFee.getS_id();
		String semester = newsemesterFee.getS_semester();
		System.out.println(id + " " + semester);
		String select_sql = "select * from semester_fees2 where s_id = '" + id + "' AND semester = '" + semester + "'";
		stmt = myConn.createStatement();
		myRs = stmt.executeQuery(select_sql);
		boolean more = myRs.next();
		if (!more) {
			String sql = "insert into semester_fees2 " + "(s_id,semester,amount) " + "values (?,?,?)";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, newsemesterFee.getS_id());
			myStmt.setString(2, newsemesterFee.getS_semester());
			myStmt.setString(3, newsemesterFee.getS_semester_fee());
			myStmt.execute();
			System.out.print("----->Semester Fees payment successful!");
			return result = "success";
		} else {
			System.out.println("----->Already paid!");
			return result = "failed";
		}
	}

	public static String addFormfillupFeestoDb(FormfillupFees newFormfillup) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		ResultSet myRs = null;
		myConn = db.getCon();
		String result = "";
		String id = newFormfillup.getS_id();
		String semester = newFormfillup.getS_semester();
		System.out.println(id + " " + semester);
		String select_sql = "select * from formfillup_fees where s_id = '" + id + "' AND semester = '" + semester + "'";
		stmt = myConn.createStatement();
		myRs = stmt.executeQuery(select_sql);
		boolean more = myRs.next();
		if (!more) {
			String sql = "insert into  formfillup_fees " + "(semester,amount,s_id) " + "values (?,?,?)";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, newFormfillup.getS_semester());
			myStmt.setString(2, newFormfillup.getS_amount());
			myStmt.setString(3, newFormfillup.getS_id());
			myStmt.execute();
			System.out.print("----->Formfillup Fees payment successful!");
			return result = "success";
		} else {
			System.out.println("----->Already paid!");
			return result = "failed";
		}
	}

	public static boolean FindDuplicateChangedDevelopmentFees(String roll, String semester) {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		ResultSet myRs = null;

		myConn = db.getCon();

		String select_sql = "select * from changed_development_fee where roll_no = '" + roll + "' AND semester = '"
				+ semester + "'";
		try {
			stmt = myConn.createStatement();
			myRs = stmt.executeQuery(select_sql);

			boolean more = myRs.next();

			if (more) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static void ChangedFeesNow(ChangedFees changedFees) {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		ResultSet myRs = null;
		myConn = db.getCon();

		String roll = changedFees.getRoll();
		String semester = changedFees.getSemester_name();
		String amount = changedFees.getChanged_amount();

		String select_sql = "select * from changed_development_fee where roll_no = '" + roll + "' AND semester = '"
				+ semester + "'";

		try {
			stmt = myConn.createStatement();
			myRs = stmt.executeQuery(select_sql);
			boolean more = myRs.next();
			if (!more) {
				String sql = "insert into changed_development_fee (roll_no,semester,changed_amount) values (?,?,?)";
				myStmt = (PreparedStatement) myConn.prepareStatement(sql);
				myStmt.setString(1, roll);
				myStmt.setString(2, semester);
				myStmt.setString(3, amount);
				myStmt.execute();
				System.out.print("--->Changed Development Fee Successfull!\n");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static Admin admin_login(Admin login_admin) {
		Statement stmt = null;
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		String admin = login_admin.getName();
		String password = login_admin.getPassword();
		String adminType = login_admin.getAdminType();
		if (adminType.equals("SuperAdmin")) {
			String sql1 = "select * from super_admin where name = '" + admin + "' AND password = '" + password + "'";
			try {
				myConn = db.getCon();
				stmt = myConn.createStatement();
				myRs = stmt.executeQuery(sql1);
				boolean more = myRs.next();
				if (!more) {
					System.out.println("----->Super Admin Login Failed!");
					login_admin.setSuperAdminIsvalid(false);
				} else if (more) {
					login_admin.setSuperAdminIsvalid(true);
					System.out.println("----->Super Admin Login Successful!");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			String sql2 = "select * from sub_admin where name = '" + admin + "' AND password = '" + password + "'";
			try {
				myConn = db.getCon();
				stmt = myConn.createStatement();
				myRs = stmt.executeQuery(sql2);
				boolean more = myRs.next();
				if (!more) {
					System.out.println("----->Sub Admin Login Failed!");
					login_admin.setSubAdminIsvalid(false);
				} else if (more) {
					login_admin.setSubAdminIsvalid(true);
					login_admin.setItem1(myRs.getString("update_development_fee"));
					login_admin.setItem2(myRs.getString("student_information"));
					login_admin.setItem3(myRs.getString("application_letters"));
					login_admin.setItem4(myRs.getString("update_development_fees_table"));
					login_admin.setItem5(myRs.getString("update_semester_fees_table"));
					login_admin.setItem6(myRs.getString("update_formfillup_fees_table"));
					System.out.println("----->Sub Admin Login Successful!");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return login_admin;
	}

	public ArrayList<Student> showData() {
		String sql = "select * from student";
		Connection con = db.getCon();
		try {
			// Statement stmt = con.createStatement();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {
				Student newStudent = new Student();
				String s_id = myRs.getString("s_Id");
				String d_roll = myRs.getString("s_Roll");
				String d_reg = myRs.getString("s_Reg");
				String d_name = myRs.getString("s_Name");
				String d_fname = myRs.getString("s_Father_name");
				String d_mname = myRs.getString("s_Mother_name");
				String d_email = myRs.getString("s_Email");
				String d_phone = myRs.getString("s_Phone");
				String d_pass = myRs.getString("s_Pass");
				String d_semester = myRs.getString("s_Semester");
				String d_dept = myRs.getString("s_Department");
				String d_faculty = myRs.getString("s_Faculty");
				// System.out.print(s_id);
				// login_student.setS_name(name);
				newStudent.setId(s_id);
				newStudent.setS_roll(d_roll);
				newStudent.setS_reg(d_reg);
				newStudent.setS_name(d_name);
				newStudent.setS_father_name(d_fname);
				newStudent.setS_mother_name(d_mname);
				newStudent.setS_email(d_email);
				newStudent.setS_phone(d_phone);
				newStudent.setS_faculty(d_faculty);
				newStudent.setS_password(d_pass);
				newStudent.setS_semester(d_semester);
				newStudent.setS_department(d_dept);
				newStudent.setValid(true);
				al.add(newStudent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}

	public static String check_development_fee(String semester, String roll) throws SQLException {
		String amount = "";
		String main = "";
		String misce = "";
		Integer sum = 0;
		String sql = "select * from  changed_development_fee where roll_no = '" + roll + "' AND semester = '" + semester
				+ "' ";
		Connection con = db.getCon();
		PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		ResultSet myRs = ps.executeQuery(sql);
		if (myRs.next()) {
			amount = myRs.getString("changed_amount");
		} else {
			String sql2 = "select * from  admin_development_fees_table where semester = '" + semester + "' ";
			Connection con2 = db.getCon();
			PreparedStatement ps2 = (PreparedStatement) con2.prepareStatement(sql2);
			ResultSet myRs2 = ps2.executeQuery(sql2);
			if (myRs2.next()) {
				misce = myRs2.getString("misce_fee");
				sum = Integer.parseInt(misce);
				amount = String.valueOf(sum);
			}
		}
		return amount;
	}

	public static String checkValidity(String feeType, String semester, String departmentId)
			throws SQLException, ParseException {
		String sql = "";
		Connection con = db.getCon();
		String result = "";
		Statement stmt = null;
		ResultSet myRs1, myRs2 = null;
		LocalDate today = LocalDate.now(ZoneId.systemDefault());
		String strDate = today.toString();
		// System.out.println("=================>" + departmentId);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date curr = sdf.parse(strDate);
		if (feeType.equals("devfee")) {
			sql = "select * from  admin_development_fees_table where semester = '" + semester + "' AND department = '"
					+ departmentId + "'  ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			myRs2 = ps.executeQuery(sql);
			if (myRs2.next()) {
				String startDate = myRs2.getString("start_date");
				String endDate = myRs2.getString("end_date");
				if (startDate != null && endDate != null) {
					Date s_date = sdf.parse(startDate);
					Date e_date = sdf.parse(endDate);
					if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
						System.out.println("----->Valid Date to pay development fees!");
						result = "dev_page";
					} else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
						System.out.println("----->Same Day and Valid Date to pay development fees!");
						result = "dev_page";
					} else {
						System.out.println("----->Date Expaire to pay development fees!");
						result = "false";
					}
				} else {
					System.out.println("----->ERROR IN CHECKVALIDITY CONTROLLER IN LINE 479!");
					result = "false";
				}
			} else {
				System.out.println("----->ERROR IN CHECKVALIDITY CONTROLLER IN LINE 484!");
			}
		} else if (feeType.equals("semfee")) {
			sql = "select * from  admin_semester_fees_table where semester = '" + semester + "' ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			myRs2 = ps.executeQuery(sql);
			if (myRs2.next()) {
				String startDate = myRs2.getString("start_date");
				String endDate = myRs2.getString("end_date");
				if (startDate != null && endDate != null) {
					Date s_date = sdf.parse(startDate);
					Date e_date = sdf.parse(endDate);
					if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
						System.out.println("----->Valid Date to pay semester fees!");
						result = "semester_page";
					} else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
						System.out.println("----->Same Day and valid Day to pay semester fees!");
						result = "semester_page";
					} else {
						System.out.println("----->Date Expaire to pay semester fees!");
						result = "false";
					}
				} else {
					System.out.println("----->ERROR IN CHECKVALIDITY CONTROLLER IN LINE 510!");
					result = "false";
				}

			} else {
				System.out.println("----->ERROR IN CHECKVALIDITY CONTROLLER IN LINE 515!");
			}
		} else if (feeType.equals("formfee")) {
			sql = "select * from  admin_formfillup_fees_table where semester = '" + semester + "' ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			myRs2 = ps.executeQuery(sql);
			if (myRs2.next()) {
				String startDate = myRs2.getString("start_date");
				String endDate = myRs2.getString("end_date");
				if (startDate != null && endDate != null) {
					Date s_date = sdf.parse(startDate);
					Date e_date = sdf.parse(endDate);
					if (curr.compareTo(s_date) > 0 && curr.compareTo(e_date) < 0) {
						System.out.println("----->Valid Date to pay formfillup fees!");
						result = "formfillup_page";
					} else if (curr.compareTo(s_date) == 0 || curr.compareTo(e_date) == 0) {
						System.out.println("----->Same Day and Valid Date to pay formfillup fees!");
						result = "formfillup_page";
					} else {
						System.out.println("----->Date Expaire to pay formfillup fees!");
						result = "false";
					}
				} else {
					System.out.println("----->ERROR IN CHECKVALIDITY CONTROLLER IN LINE 541!");
					result = "false";
				}
			} else {
				System.out.println("----->ERROR IN CHECKVALIDITY CONTROLLER IN LINE 546!");
			}
		} else {
			result = "false";
		}
		return result;
	}

	public static adminDevelopmentFeesTable getDevelopmentItemById(String newId) {
		PreparedStatement ps,ps1;
		ResultSet myRs,myRs1;
		String sql = "select * from  admin_development_fees_table where id = '" + newId + "'";
		Connection con = db.getCon();
		adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();
			
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			myRs= ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {
				// Integer newid = Integer.parseInt(myRs.getString("id"));
				
				String id  = myRs.getString("id");
		    	String deptId  = myRs.getString("department");
		    	String semester  = myRs.getString("semester");
		    	String main_fee  = myRs.getString("main_fee");
		    	String misce_fee  = myRs.getString("misce_fee");
		    	String start_date  = myRs.getString("start_date");
		    	String end_date  = myRs.getString("end_date");
		    
		    	
		    	String sql1 = "select * from department where id = '"+deptId+"'";
		    	 ps1 = (PreparedStatement)con.prepareStatement(sql1);
			     myRs1 = ps1.executeQuery(sql1);
			     while(myRs1.next()) {
			     String deptname = myRs1.getString("dept_name");
			     newItem.setDeptName(deptname);
			     }		    	
		    	newItem.setId(id);
		    	newItem.setDeptId(deptId);
		    	newItem.setSemester(semester);
		    	newItem.setMain_fee(main_fee);
		    	newItem.setMisce_fee(misce_fee);
		    	newItem.setStart_date(start_date);
		    	newItem.setEnd_date(end_date);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newItem;
	}

	public static adminSemesterFeesTable getSemesterItemById(String id) {
		String sql = "select * from  admin_semester_fees_table where id = '" + id + "'";
		Connection con = db.getCon();
		adminSemesterFeesTable newItem = new adminSemesterFeesTable();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {
				// Integer newid = Integer.parseInt(myRs.getString("id"));
				newItem.setId(myRs.getString("id"));
				newItem.setSemester(myRs.getString("semester"));
				newItem.setMain_fee(myRs.getString("main_fee"));
				newItem.setMisce_fee(myRs.getString("misce_fee"));
				newItem.setStart_date(myRs.getString("start_date"));
				newItem.setEnd_date(myRs.getString("end_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newItem;
	}

	public static adminFormFillUpFeesTable getFormFillUpItemById(String id) {
		String sql = "select * from  admin_formfillup_fees_table where id = '" + id + "'";
		Connection con = db.getCon();
		adminFormFillUpFeesTable newItem = new adminFormFillUpFeesTable();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {
				// Integer newid = Integer.parseInt(myRs.getString("id"));
				newItem.setId(myRs.getString("id"));
				newItem.setSemester(myRs.getString("semester"));
				newItem.setMain_fee(myRs.getString("main_fee"));
				newItem.setMisce_fee(myRs.getString("misce_fee"));
				newItem.setStart_date(myRs.getString("start_date"));
				newItem.setEnd_date(myRs.getString("end_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newItem;
	}

	// update development fee table
	public static void updateDevelopmentFeesTable(adminDevelopmentFeesTable devfee) {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		try {
			String sql = "update admin_development_fees_table  set semester=?,main_fee=?,misce_fee=?,start_date=?,end_date=? where id=?";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, devfee.getSemester());
			myStmt.setString(2, devfee.getMain_fee());
			myStmt.setString(3, devfee.getMisce_fee());
			myStmt.setString(4, devfee.getStart_date());
			myStmt.setString(5, devfee.getEnd_date());
			myStmt.setString(6, devfee.getId());
			myStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// update semester fee table
	public static void updateSemesterFeesTable(adminSemesterFeesTable devfee) {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		try {
			String sql = "update admin_semester_fees_table  set semester=?,main_fee=?,misce_fee=?,start_date=?,end_date=? where id=?";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, devfee.getSemester());
			myStmt.setString(2, devfee.getMain_fee());
			myStmt.setString(3, devfee.getMisce_fee());
			myStmt.setString(4, devfee.getStart_date());
			myStmt.setString(5, devfee.getEnd_date());
			myStmt.setString(6, devfee.getId());
			myStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// update formfillup table

	public static void updateFormFillUpFeesTable(adminFormFillUpFeesTable formfillupfee) {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		try {
			String sql = "update admin_formfillup_fees_table  set semester=?,main_fee=?,misce_fee=?,start_date=?,end_date=? where id=?";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, formfillupfee.getSemester());
			myStmt.setString(2, formfillupfee.getMain_fee());
			myStmt.setString(3, formfillupfee.getMisce_fee());
			myStmt.setString(4, formfillupfee.getStart_date());
			myStmt.setString(5, formfillupfee.getEnd_date());
			myStmt.setString(6, formfillupfee.getId());
			myStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/*
	 * public static boolean addNewAdmin(Admin newadmin) {
	 * 
	 * Connection myConn = null; PreparedStatement myStmt = null; Statement stmt =
	 * null;
	 * 
	 * ResultSet myRs = null; String adminName = newadmin.getName();
	 * 
	 * boolean retrunStatus = false;
	 * 
	 * try { String sql = "select * from sub_admin where name = '" + adminName +
	 * "' ";
	 * 
	 * myConn = db.getCon(); stmt = myConn.createStatement(); myRs =
	 * stmt.executeQuery(sql); boolean more = myRs.next();
	 * 
	 * if (!more) {
	 * 
	 * String inserQuery = "insert into sub_admin " + "(name,password) " +
	 * "values (?,?)";
	 * 
	 * myStmt = (PreparedStatement) myConn.prepareStatement(inserQuery);
	 * 
	 * myStmt.setString(1, newadmin.getName()); myStmt.setString(2,
	 * newadmin.getPassword());
	 * 
	 * myStmt.execute(); retrunStatus = true;
	 * System.out.print("----->New Sub Admin Created Successfuly!"); }
	 * 
	 * else {
	 * 
	 * System.out.println("----->Already Have " + adminName + " !"); retrunStatus =
	 * false; }
	 * 
	 * }
	 * 
	 * catch (SQLException e) { e.printStackTrace(); } return retrunStatus;
	 * 
	 * }
	 */

	public static void deleteAdmin(String delete_id) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		String sql = "delete from sub_admin  where id = '" + delete_id + "'";
		myStmt = (PreparedStatement) myConn.prepareStatement(sql);
		myStmt.execute();
		System.out.println("----->Deleted Sub Admin id = " + delete_id + " !");
	}

	public static void updateSubAdmin(String id, String name) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		String sql = "UPDATE sub_admin SET name ='" + name + "' WHERE id='" + id + "'";
		myStmt = (PreparedStatement) myConn.prepareStatement(sql);
		myStmt.execute();
		System.out.println("----->Update Sub Admin Successful!");
	}

	public static boolean addNewAdmin(String newAdminName, String password, String item1, String item2, String item3,
			String item4, String item5, String item6) {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		Statement stmt = null;
		ResultSet myRs = null;
		boolean retrunStatus = false;
		try {
			String sql = "select * from sub_admin where name = '" + newAdminName + "' ";
			myConn = db.getCon();
			stmt = myConn.createStatement();
			myRs = stmt.executeQuery(sql);
			boolean more = myRs.next();
			if (!more) {
				String inserQuery = "insert into sub_admin "
						+ "(name,password,update_development_fee,student_information,application_letters,update_development_fees_table,update_semester_fees_table,update_formfillup_fees_table) "
						+ "values ('" + newAdminName + "','" + password + "','" + item1 + "','" + item2 + "','" + item3
						+ "','" + item4 + "','" + item5 + "','" + item6 + "')";
				myStmt = (PreparedStatement) myConn.prepareStatement(inserQuery);
				myStmt.execute();
				retrunStatus = true;
				System.out.print("----->New Sub Admin Created Successfuly!");
			} else {
				System.out.println("----->Already have " + newAdminName + " !");
				retrunStatus = false;
			}
		} catch (Exception e) {
		}
		return retrunStatus;
	}

	public static void saveCSVData(TestCSVModel testCSVModel) {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		myConn = db.getCon();
		try {
			String sql = "insert into testcsv " + "(name,price,description) " + "values (?,?,?)";
			myStmt = (PreparedStatement) myConn.prepareStatement(sql);
			myStmt.setString(1, testCSVModel.getName());
			myStmt.setString(2, testCSVModel.getPrice());
			myStmt.setString(3, testCSVModel.getDescription());
			myStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static Student getStudentByStudentId(String id) {
		Statement stmt = null;
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		String sql = "select * from student where s_Id = '" + id + "'";
		Student student = new Student();
		try {
			myConn = db.getCon();
			stmt = myConn.createStatement();
			myRs = stmt.executeQuery(sql);
			myRs.next();
			String d_id = myRs.getString("s_Id");
			String d_roll = myRs.getString("s_Roll");
			String d_reg = myRs.getString("s_Reg");
			String d_name = myRs.getString("s_Name");
			String d_fname = myRs.getString("s_Father_name");
			String d_mname = myRs.getString("s_Mother_name");
			String d_email = myRs.getString("s_Email");
			String d_phone = myRs.getString("s_Phone");
			String d_semester = myRs.getString("s_Semester");
			String d_dept = myRs.getString("s_Department");
			String d_faculty = myRs.getString("s_Faculty");

			student.setId(d_id);
			student.setS_roll(d_roll);
			student.setS_reg(d_reg);
			student.setS_name(d_name);
			student.setS_father_name(d_fname);
			student.setS_mother_name(d_mname);
			student.setS_email(d_email);
			student.setS_phone(d_phone);
			student.setS_faculty(d_faculty);
			student.setS_semester(d_semester);
			student.setS_department(d_dept);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return student;
	}

}
