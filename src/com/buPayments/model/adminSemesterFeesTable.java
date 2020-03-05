package com.buPayments.model;

public class adminSemesterFeesTable {
	private String id;
	private String deptId;
	private String deptName;
	private String semester;
	private String main_fee;
	private String misce_fee;
	private String start_date;
	private String end_date;

	public adminSemesterFeesTable() {

	}

	public adminSemesterFeesTable(String id, String deptId, String deptName, String semester, String main_fee,
			String misce_fee, String start_date, String end_date) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.deptName = deptName;
		this.semester = semester;
		this.main_fee = main_fee;
		this.misce_fee = misce_fee;
		this.start_date = start_date;
		this.end_date = end_date;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDeptId() {
		return deptId;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getMain_fee() {
		return main_fee;
	}

	public void setMain_fee(String main_fee) {
		this.main_fee = main_fee;
	}

	public String getMisce_fee() {
		return misce_fee;
	}

	public void setMisce_fee(String misce_fee) {
		this.misce_fee = misce_fee;
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
