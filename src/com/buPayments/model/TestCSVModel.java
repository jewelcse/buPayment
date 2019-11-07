package com.buPayments.model;

public class TestCSVModel {
	
	private String name;
	private String price;
	private String description;
	
	public TestCSVModel(String name, String price, String description) {
		super();
		this.name = name;
		this.price = price;
		this.description = description;
	}
	
	public TestCSVModel() {

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

	
	

}
