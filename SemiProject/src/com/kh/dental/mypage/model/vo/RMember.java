package com.kh.dental.mypage.model.vo;

public class RMember {
	private int mno;
	private String mName;
	private String fname;
	private String status;
	
	public RMember(){}


	public RMember(int mno, String mName, String fname, String status) {
		super();
		this.mno = mno;
		this.mName = mName;
		this.fname = fname;
		this.status = status;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}


	@Override
	public String toString() {
		return "RMember [mno=" + mno + ", mName=" + mName + ", fname=" + fname + ", status=" + status + "]";
	}

	
}	
