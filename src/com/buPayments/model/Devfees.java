package com.buPayments.model;

public class Devfees {
	
	private String s_roll;
	private String s_semester;
	private String s_development_fee;
	

	public Devfees(String s_roll, String s_semester, String s_development_fee) {
		
		this.s_roll = s_roll;
		this.s_semester = s_semester;
		this.s_development_fee = s_development_fee;

	}




	public String getS_roll() {
		return s_roll;
	}
	public void setS_roll(String s_roll) {
		this.s_roll = s_roll;
	}

	public String getS_semester() {
		return s_semester;
	}

	public void setS_semester(String s_semester) {
		this.s_semester = s_semester;
	}

	

	public String getS_development_fee() {
		return s_development_fee;
	}

	public void setS_development_fee(String s_development_fee) {
		this.s_development_fee = s_development_fee;
	}



	
	
	
	
}
