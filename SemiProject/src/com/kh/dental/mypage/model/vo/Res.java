package com.kh.dental.mypage.model.vo;

public class Res implements java.io.Serializable{
	
	private int rno;
	private String rtime;
	private int f_num;
	private String f_name;
	private String r_status;
	private int mno;
	private String etc;
	private String ykiho_enc;
	
	public Res(){}

	public Res(int rno, String rtime, int f_num, String r_status, int mno, String etc, String ykiho_enc) {
		super();
		this.rno = rno;
		this.rtime = rtime;
		this.f_num = f_num;
		this.r_status = r_status;
		this.mno = mno;
		this.etc = etc;
		this.ykiho_enc = ykiho_enc;
	}

	
	
	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	public String getR_status() {
		return r_status;
	}

	public void setR_status(String r_status) {
		this.r_status = r_status;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getYkiho_enc() {
		return ykiho_enc;
	}

	public void setYkiho_enc(String ykiho_enc) {
		this.ykiho_enc = ykiho_enc;
	}

	@Override
	public String toString() {
		return "Res [rno=" + rno + ", rtime=" + rtime + ", f_num=" + f_num + ", r_status=" + r_status + ", mno=" + mno
				+ ", etc=" + etc + ", ykiho_enc=" + ykiho_enc + "]";
	}
	
	
	
	
	
}
