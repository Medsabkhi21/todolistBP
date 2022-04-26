package com.qcm;

public class item {

	private int id;
	private String label;
	private String desc;
	private String date;
	private String time;
	
	public item(int id, String label,String desc, String date, String time) {
		super();
		this.id = id;
		this.label = label;//name of exam
		this.desc = desc;
		this.date = date; //date of exam
		this.time = time; // time of exam
	}
	
	public item(String label, String desc,String date, String time) {
		super();
		this.label = label;
		this.desc = desc;
		this.date = date;
		this.time = time;
	}
	
	public int getId() {
		return id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLabel() {
		return label;
	}
	
	public void setLabel(String label) {
		this.label = label;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
}
