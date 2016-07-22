package com.inyoung.finalprj.domain;

public class MemberVO {

	private int		m_code;
	private String 	id;
	private String	password;
	private String	name;
	private String grade;
	private int mileage;
	private int cash;
	
	
	public int getM_code() {
		return m_code;
	}
	public void setM_code(int m_code) {
		this.m_code = m_code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}

	
	
}
