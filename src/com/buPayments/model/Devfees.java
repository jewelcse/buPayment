package com.buPayments.model;

public class Devfees {

	private String s_id;
	private String departmentId;
	private String s_semester;
	private String amount;
	private String s_semester_fee;
	private String start_date;
	private String end_date;
	private String trans_id;

	public Devfees() {
		super();
	}

	public Devfees(String s_id, String s_semester, String start_date, String end_date) {

		this.s_id = s_id;
		this.start_date = start_date;
		this.end_date = end_date;
		this.s_semester = s_semester;
	}

	public Devfees(String s_id, String departmentId, String s_semester, String amount, String s_semester_fee,
			String start_date, String end_date, String trans_id) {
		super();
		this.s_id = s_id;
		this.departmentId = departmentId;
		this.s_semester = s_semester;
		this.amount = amount;
		this.s_semester_fee = s_semester_fee;
		this.start_date = start_date;
		this.end_date = end_date;
		this.trans_id = trans_id;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getTrans_id() {
		return trans_id;
	}

	public void setTrans_id(String trans_id) {
		this.trans_id = trans_id;
	}

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

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

}
