package com.buPayments.model;

public class Devfees {

<<<<<<< HEAD
	private String id;
	private String studentId;
	private String departmentId;
	private String semester;
	private String amount;
	private String paymentTime;
	private String transId;
	private boolean paymentStatus;
=======
	private String s_id;
	private String departmentId;
	private String s_semester;
	private String amount;
	private String s_semester_fee;
	private String start_date;
	private String end_date;
	private String trans_id;
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db

	public Devfees() {
	}

	
	public Devfees(String id, String studentId, String departmentId, String semester, String amount, String paymentTime,
			String transId, boolean paymentStatus) {
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

<<<<<<< HEAD

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
=======
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
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db
	}

	public String getStudentId() {
		return studentId;
	}

<<<<<<< HEAD
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
=======
	public void setTrans_id(String trans_id) {
		this.trans_id = trans_id;
	}

	public Devfees(String s_id, String s_semester, String s_semester_fee) {
>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db

	public String getDepartmentId() {
		return departmentId;
	}

<<<<<<< HEAD
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


=======
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

>>>>>>> 265d245e3a9ff47d197af4d6ef3e408c3ca0b3db
}
