package com.buPayments.model;

public class FormfillupFees {

	private String s_id;
	private String s_semester;
	private String s_amount;

	
	public FormfillupFees() {
		super();
	}
	public FormfillupFees( String s_id, String s_semester, String s_amount) {
		
		this.s_amount = s_amount;
		this.s_semester = s_semester;
		this.s_id = s_id;
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
	public String getS_amount() {
		return s_amount;
	}
	public void setS_amount(String s_amount) {
		this.s_amount = s_amount;
	}

	
}
