package com.buPayments.model;

public class SemesterFees {
	private String id;
	private String studentId;
	private String departmentId;
	private String semester;
	private String amount;
	private String paymentTime;
	private String transId;
	private boolean paymentStatus;

<<<<<<< HEAD
=======
	private String s_id;
	private String departmentId;
	private String s_semester;
	private String s_semester_fee;
	
	
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db
	public SemesterFees() {
	}

	public SemesterFees(String id, String studentId, String departmentId, String semester, String amount,
			String paymentTime, String transId, boolean paymentStatus) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.departmentId = departmentId;
		this.semester = semester;
		this.amount = amount;
		this.paymentTime = paymentTime;
		this.transId = transId;
		this.paymentStatus = paymentStatus;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getPaymentTime() {
		return paymentTime;
	}

	public void setPaymentTime(String paymentTime) {
		this.paymentTime = paymentTime;
	}

	public String getTransId() {
		return transId;
	}

	public void setTransId(String transId) {
		this.transId = transId;
	}

	public boolean isPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(boolean paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	



}
