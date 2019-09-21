package com.buPayments.model;

public class Admin {

	private String id;
	private String name;
	private String password;
	private String adminType;
	public boolean superAdminIsvalid;
	public boolean subAdminIsvalid;
	
	public Admin(String id,String name, String password) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
	}
	
	
	public String getId() {
		return id;
	}


	 
	public Admin(String id, String name, String password, String adminType, boolean superAdminIsvalid,boolean subAdminIsvalid) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.adminType = adminType;
		this.superAdminIsvalid = superAdminIsvalid;
		this.subAdminIsvalid = subAdminIsvalid;
	}


	public String getAdminType() {
		return adminType;
	}


	public void setAdminType(String adminType) {
		this.adminType = adminType;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Admin() {
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	public boolean isSuperAdminIsvalid() {
		return superAdminIsvalid;
	}


	public void setSuperAdminIsvalid(boolean superAdminIsvalid) {
		this.superAdminIsvalid = superAdminIsvalid;
	}


	public boolean isSubAdminIsvalid() {
		return subAdminIsvalid;
	}


	public void setSubAdminIsvalid(boolean subAdminIsvalid) {
		this.subAdminIsvalid = subAdminIsvalid;
	}

 
	
}
