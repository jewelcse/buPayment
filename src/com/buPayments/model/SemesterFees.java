package com.buPayments.model;

public class SemesterFees {

	private String s_roll;
	private String s_reg;
	private String s_name;
	private String s_department;
	private String s_semester;
	private String s_semester_fee;
	private String s_phone;
	public SemesterFees(String s_roll, String s_reg, String s_name,
			String s_department, String s_semester, String s_semester_fee,
			String s_phone) {
		
		this.s_roll = s_roll;
		this.s_reg = s_reg;
		this.s_name = s_name;
		this.s_department = s_department;
		this.s_semester = s_semester;
		this.s_semester_fee = s_semester_fee;
		this.s_phone = s_phone;
	}
	public String getS_roll() {
		return s_roll;
	}
	public void setS_roll(String s_roll) {
		this.s_roll = s_roll;
	}
	public String getS_reg() {
		return s_reg;
	}
	public void setS_reg(String s_reg) {
		this.s_reg = s_reg;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_department() {
		return s_department;
	}
	public void setS_department(String s_department) {
		this.s_department = s_department;
	}
	public String getS_semester() {
		return s_semester;
	}
	public void setS_semester(String s_semester) {
		this.s_semester = s_semester;
	}
	public String getS_semester_fee() {
		return s_semester_fee;
	}
	public void setS_semester_fee(String s_semester_fee) {
		this.s_semester_fee = s_semester_fee;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	
	
	
	
}
