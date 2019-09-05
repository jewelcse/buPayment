package com.buPayments.model;

public class FormfillupFees {

	private String s_id;
	private String s_semester;
	private String s_formfillup_fee;

	public FormfillupFees( String formfillup_fee, String semester, String id) {
		
		this.s_formfillup_fee = s_formfillup_fee;
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
	public String getS_formfillup_fee() {
		return s_formfillup_fee;
	}
	public void setS_formfillup_fee(String s_formfillup_fee) {
		this.s_formfillup_fee = s_formfillup_fee;
	}

	
}
