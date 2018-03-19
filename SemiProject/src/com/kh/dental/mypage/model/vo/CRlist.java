package com.kh.dental.mypage.model.vo;

public class CRlist {
	
	private int mno;
	private String hosName;
	private String r_date;
	private String r_time;
	private String etc;
	
	public CRlist(){}

	public CRlist(int mno, String hosName, String r_date, String r_time, String etc) {
		super();
		this.mno = mno;
		this.hosName = hosName;
		this.r_date = r_date;
		this.r_time = r_time;
		this.etc = etc;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getHosName() {
		return hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getR_time() {
		return r_time;
	}

	public void setR_time(String r_time) {
		this.r_time = r_time;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	@Override
	public String toString() {
		return "CRlist [mno=" + mno + ", hosName=" + hosName + ", r_date=" + r_date + ", r_time=" + r_time + ", etc="
				+ etc + "]";
	}
	
	
}
