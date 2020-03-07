package com.buPayments.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.buPayments.controller.dbConnection;
import com.buPayments.controller.mainController;
import com.buPayments.model.ChangedFees;
import com.buPayments.model.Department;
import com.buPayments.model.adminDevelopmentFeesTable;
import com.buPayments.model.adminFormFillUpFeesTable;
import com.buPayments.model.adminSemesterFeesTable;

public class adminFeesDao {

	public static ArrayList<adminDevelopmentFeesTable> showAllDevelopmentFees(int start, int total) {
		dbConnection db = new dbConnection();
		ArrayList<adminDevelopmentFeesTable> developmentfee = new ArrayList<adminDevelopmentFeesTable>();
		String sql = "select * from admin_development_fees_table limit " + (start - 1) + "," + total;
		try {
			Connection con = db.getCon();
			PreparedStatement ps, ps1;
			ResultSet myRs, myRs1;
			ps = con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			while (myRs.next()) {
				adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();

				String id = myRs.getString("id");
				String deptId = myRs.getString("department");
				String semester = myRs.getString("semester");
				String main_fee = myRs.getString("main_fee");
				String misce_fee = myRs.getString("misce_fee");
				String start_date = myRs.getString("start_date");
				String end_date = myRs.getString("end_date");

				Department dept = mainController.getDepartmentById(deptId);

				newItem.setId(id);
				newItem.setSemester(semester);
				newItem.setDepartment(dept.getDeptName());
				newItem.setMain_fee(main_fee);
				newItem.setMisce_fee(misce_fee);
				newItem.setStart_date(start_date);
				newItem.setEnd_date(end_date);
				developmentfee.add(newItem);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return developmentfee;
	}

	public static adminDevelopmentFeesTable getDevelopmentFeeById(String newId) {

		dbConnection db = new dbConnection();

		String sql = "select * from  admin_development_fees_table where id = '" + newId + "'";
		Connection con = db.getCon();
		adminDevelopmentFeesTable newItem = new adminDevelopmentFeesTable();

		try {
			PreparedStatement ps, ps1;
			ResultSet myRs, myRs1;
			ps = (PreparedStatement) con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {
				// Integer newid = Integer.parseInt(myRs.getString("id"));

				String id = myRs.getString("id");
				String deptId = myRs.getString("department");
				String semester = myRs.getString("semester");
				String main_fee = myRs.getString("main_fee");
				String misce_fee = myRs.getString("misce_fee");
				String start_date = myRs.getString("start_date");
				String end_date = myRs.getString("end_date");

				Department dept = mainController.getDepartmentById(deptId);

				newItem.setId(id);
				newItem.setSemester(semester);
				newItem.setDepartment(dept.getDeptName());
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

	public static ArrayList<ChangedFees> showAllChangedFees() {

		dbConnection db = new dbConnection();
		ArrayList<ChangedFees> changedDevelopmentfee = new ArrayList<ChangedFees>();
		String sql = "select * from  changed_development_fee";
		Connection con = db.getCon();
		ChangedFees newItem = new ChangedFees();

		try {

			PreparedStatement ps;
			ResultSet myRs;
			ps = (PreparedStatement) con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {

				String id = myRs.getString("id");
				String roll = myRs.getString("roll_no");
				String semester = myRs.getString("semester");
				String amount = myRs.getString("changed_amount");

				newItem.setId(id);
				newItem.setRoll(roll);
				newItem.setSemester_name(semester);
				newItem.setChanged_amount(amount);
				changedDevelopmentfee.add(newItem);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return changedDevelopmentfee;
	}

	public static ArrayList<adminSemesterFeesTable> showAllSemesterFees(int start, int total) {
		dbConnection db = new dbConnection();
		ArrayList<adminSemesterFeesTable> semesterfee = new ArrayList<adminSemesterFeesTable>();
		String sql = "select * from admin_semester_fees_table limit " + (start - 1) + "," + total;
		try {
			Connection con = db.getCon();
			PreparedStatement ps, ps1;
			ResultSet myRs, myRs1;
			ps = con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			while (myRs.next()) {
				adminSemesterFeesTable newItem = new adminSemesterFeesTable();
				String id = myRs.getString("id");
				String deptId = myRs.getString("department");
				String semester = myRs.getString("semester");
				String semester_admission_fee = myRs.getString("semester_admission_fee");
				String tution_fee = myRs.getString("tution_fee");
				String lab_or_seminar_fee = myRs.getString("lab_or_seminar_fee");
				String transport_fee = myRs.getString("transport_fee");
				String misce_fee = myRs.getString("misce_fee");
				String start_date = myRs.getString("start_date");
				String end_date = myRs.getString("end_date");

				Department dept = mainController.getDepartmentById(deptId);

				newItem.setId(id);
				newItem.setSemester(semester);
				newItem.setDepartment(dept.getDeptName());
				newItem.setSemester_admission_fee(semester_admission_fee);
				newItem.setTution_fee(tution_fee);
				newItem.setLab_or_seminar_fee(lab_or_seminar_fee);
				newItem.setTransport_fee(transport_fee);
				newItem.setMisce_fee(misce_fee);
				newItem.setStart_date(start_date);
				newItem.setEnd_date(end_date);
				semesterfee.add(newItem);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return semesterfee;
	}

	public static ArrayList<adminFormFillUpFeesTable> showAllFormfillupFees(int start, int total) {
		dbConnection db = new dbConnection();
		ArrayList<adminFormFillUpFeesTable> formfillupfee = new ArrayList<adminFormFillUpFeesTable>();
		String sql = "select * from admin_formfillup_fees_table limit " + (start - 1) + "," + total;
		try {
			Connection con = db.getCon();
			PreparedStatement ps, ps1;
			ResultSet myRs, myRs1;
			ps = con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			while (myRs.next()) {
				adminFormFillUpFeesTable newItem = new adminFormFillUpFeesTable();
				String id = myRs.getString("id");
				String deptId = myRs.getString("department");
				String semester = myRs.getString("semester");
				String main_fee = myRs.getString("main_fee");
				String misce_fee = myRs.getString("misce_fee");
				String start_date = myRs.getString("start_date");
				String end_date = myRs.getString("end_date");

				Department dept = mainController.getDepartmentById(deptId);

				newItem.setId(id);
				newItem.setDepartment(dept.getDeptName());
				newItem.setSemester(semester);
				newItem.setMain_fee(main_fee);
				newItem.setMisce_fee(misce_fee);
				newItem.setStart_date(start_date);
				newItem.setEnd_date(end_date);
				formfillupfee.add(newItem);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return formfillupfee;
	}

	public static adminSemesterFeesTable getSemesterFeeById(String ID) {
		dbConnection db = new dbConnection();

		String sql = "select * from  admin_semester_fees_table where id = '" + ID + "'";
		Connection con = db.getCon();
		adminSemesterFeesTable newItem = new adminSemesterFeesTable();

		try {
			PreparedStatement ps, ps1;
			ResultSet myRs, myRs1;
			ps = (PreparedStatement) con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {

				String id = myRs.getString("id");
				String deptId = myRs.getString("department");
				String semester = myRs.getString("semester");
				String semester_admission_fee = myRs.getString("semester_admission_fee");
				String tution_fee = myRs.getString("tution_fee");
				String lab_or_seminar_fee = myRs.getString("lab_or_seminar_fee");
				String transport_fee = myRs.getString("transport_fee");
				String misce_fee = myRs.getString("misce_fee");
				String start_date = myRs.getString("start_date");
				String end_date = myRs.getString("end_date");

				Department dept = mainController.getDepartmentById(deptId);

				newItem.setId(id);
				newItem.setSemester(semester);
				newItem.setDepartment(dept.getDeptName());
				newItem.setSemester_admission_fee(semester_admission_fee);
				newItem.setTution_fee(tution_fee);
				newItem.setLab_or_seminar_fee(lab_or_seminar_fee);
				newItem.setTransport_fee(transport_fee);
				newItem.setMisce_fee(misce_fee);
				newItem.setStart_date(start_date);
				newItem.setEnd_date(end_date);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newItem;

	}

	public static adminFormFillUpFeesTable getFormfillupFeeById(String ID) {
		dbConnection db = new dbConnection();

		String sql = "select * from  admin_formfillup_fees_table where id = '" + ID + "'";
		Connection con = db.getCon();
		adminFormFillUpFeesTable newItem = new adminFormFillUpFeesTable();

		try {
			PreparedStatement ps, ps1;
			ResultSet myRs, myRs1;
			ps = (PreparedStatement) con.prepareStatement(sql);
			myRs = ps.executeQuery(sql);
			System.out.print(myRs);
			while (myRs.next()) {

				String id = myRs.getString("id");
				String deptId = myRs.getString("department");
				String semester = myRs.getString("semester");
				String main_fee = myRs.getString("main_fee");
				String misce_fee = myRs.getString("misce_fee");
				String start_date = myRs.getString("start_date");
				String end_date = myRs.getString("end_date");

				Department dept = mainController.getDepartmentById(deptId);

				newItem.setId(id);
				newItem.setDepartment(dept.getDeptName());
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

}
