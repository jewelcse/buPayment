package com.buPayments.model;

public class Admin {

	private String id;
	private String admin;
	private String password;
	public boolean valid;
	public Admin(String id,String admin, String password) {
		super();
		this.id = id;
		this.admin = admin;
		this.password = password;
	}
	
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Admin() {
		
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isValid() {
	     return valid;
	}

	public void setValid(boolean newValid) {
	      valid = newValid;
	}  
	
}
