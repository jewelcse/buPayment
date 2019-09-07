package com.buPayments.model;

public class Devfees {
	
	private String s_id;
	private String s_semester;
	private String s_semester_fee;
	

	public Devfees(String s_id, String s_semester, String s_semester_fee) {

		this.s_id = s_id;
		this.s_semester = s_semester;
		this.s_semester_fee = s_semester_fee;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
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


	
	
}
