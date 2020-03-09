package com.buPayments.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.buPayments.controller.dbConnection;
import com.buPayments.model.Devfees;
import com.buPayments.model.FormfillupFees;
import com.buPayments.model.SemesterFees;
import com.buPayments.model.Student;

public class studentsDao {

	public static Student getStudentProfileById(String id) {

		dbConnection db = new dbConnection();
		Student stu = new Student();

		String sql = "select * from student where s_Id = '" + id + "'";

		try {
			Connection con = db.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			while (myRs.next()) {

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
				String d_pass = myRs.getString("s_Pass");
				
				
				stu.setS_roll(d_roll);
				stu.setS_reg(d_reg);
				stu.setS_name(d_name);
				stu.setS_father_name(d_fname);
				stu.setS_mother_name(d_mname);
				stu.setS_email(d_email);
				stu.setS_phone(d_phone);
				stu.setS_faculty(d_faculty);
				stu.setS_semester(d_semester);
				stu.setS_department(d_dept);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return stu;

	}

	public static ArrayList<Devfees> getPaidDevelopmentFeeByUserId(String id) {

		dbConnection db = new dbConnection();

		ArrayList<Devfees> devfeelist = new ArrayList<Devfees>();

		String sql = "select * from  development_fees where s_id = '" + id + "'";

		try {
			Connection con = db.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			while (myRs.next()) {

				Devfees devfee = new Devfees();
				String semester = myRs.getString("semester");
				String amount = myRs.getString("amount");

				devfee.setS_semester(semester);
				devfee.setAmount(amount);
				devfeelist.add(devfee);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return devfeelist;

	}

	public static ArrayList<FormfillupFees> getPaidFormfillupFeeByUserId(String id) {

		dbConnection db = new dbConnection();

		ArrayList<FormfillupFees> formfillupfeelist = new ArrayList<FormfillupFees>();

		String sql = "select * from   formfillup_fees where s_id = '" + id + "'";

		try {
			Connection con = db.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			while (myRs.next()) {

				FormfillupFees formfillupfee = new FormfillupFees();
				String semester = myRs.getString("semester");
				String amount = myRs.getString("amount");

				formfillupfee.setS_semester(semester);
				formfillupfee.setS_amount(amount);
				formfillupfeelist.add(formfillupfee);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return formfillupfeelist;

	}

	public static ArrayList<SemesterFees> getPaidSemesterpFeeByUserId(String id) {

		dbConnection db = new dbConnection();

		ArrayList<SemesterFees> Semesterfeelist = new ArrayList<SemesterFees>();

		String sql = "select * from   semester_fees2 where s_id = '" + id + "'";

		try {
			Connection con = db.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet myRs = ps.executeQuery(sql);
			while (myRs.next()) {

				SemesterFees semesterfee = new SemesterFees();
				String semester = myRs.getString("semester");
				String amount = myRs.getString("amount");

				semesterfee.setS_semester(semester);
				semesterfee.setS_semester_fee(amount);
				Semesterfeelist.add(semesterfee);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return Semesterfeelist;

	}
}
