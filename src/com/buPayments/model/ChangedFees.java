package com.buPayments.model;

public class ChangedFees {
	
	private String id;
	private String roll;
	private String semester_name;
	private String changed_amount;
	public ChangedFees(String id,String roll, String semester_name, String changed_amount) {
		super();
		this.id = id;
		this.roll = roll;
		this.semester_name = semester_name;
		this.changed_amount = changed_amount;
	}
	public ChangedFees(String roll, String semester_name, String changed_amount) {
		super();
		
		this.roll = roll;
		this.semester_name = semester_name;
		this.changed_amount = changed_amount;
	}
	
	public ChangedFees( String semester_name, String changed_amount) {
		super();
		
		this.semester_name = semester_name;
		this.changed_amount = changed_amount;
	}
	public ChangedFees() {
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRoll() {
		return roll;
	}
	public void setRoll(String roll) {
		this.roll = roll;
	}
	public String getSemester_name() {
		return semester_name;
	}
	public void setSemester_name(String semester_name) {
		this.semester_name = semester_name;
	}
	public String getChanged_amount() {
		return changed_amount;
	}
	public void setChanged_amount(String changed_amount) {
		this.changed_amount = changed_amount;
	}
	
	

}
