package com.inyoung.finalprj.domain;

import java.util.Date;

public class PaymentVO {
	private int p_code;
	private int m_code;
	private Date time;
	private int amount;
	private String means;
	
	
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public int getM_code() {
		return m_code;
	}
	public void setM_code(int m_code) {
		this.m_code = m_code;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getMeans() {
		return means;
	}
	public void setMeans(String means) {
		this.means = means;
	}
	

}
