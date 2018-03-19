<<<<<<< HEAD
package com.kh.dental.searchclinic.model.vo;

import java.sql.Date;

public class Res implements java.io.Serializable{
	
	private int rno;			//예약번호
	private String r_time;		//예약시간
	private int f_num;			//전문분야코드
	private String r_status;	//예약여부 =Y,N
	private int m_no;			//회원번호
	private String etc;			//비고
	private String ykiho_enc;	//병원코드
	
	
	public Res(){}

	public Res(int rno, String r_time, Date r_date, int f_num, String r_status, int m_no, String etc, String ykiho_enc) {
		super();
		this.rno = rno;
		this.r_time = r_time;
		this.f_num = f_num;
		this.r_status = r_status;
		this.m_no = m_no;
		this.etc = etc;
		this.ykiho_enc = ykiho_enc;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getR_time() {
		return r_time;
	}

	public void setR_time(String r_time) {
		this.r_time = r_time;
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

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
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
		return "Res [rno=" + rno + ", r_time=" + r_time  + ", f_num=" + f_num + ", r_status="
				+ r_status + ", m_no=" + m_no + ", etc=" + etc + ", ykiho_enc=" + ykiho_enc + "]";
	}
	
	

}
=======
package com.kh.dental.searchclinic.model.vo;

import java.sql.Date;

public class Res implements java.io.Serializable{
	
	private int rno;			//예약번호
	private String r_time;		//예약시간
	private int f_num;			//전문분야코드
	private String f_name;
	private String r_status;	//예약여부 =Y,N
	private int m_no;			//회원번호
	private String etc;			//비고
	private String ykiho_enc;	//병원코드
	
	
	public Res(){}

	public Res(int rno, String r_time, Date r_date, int f_num, String r_status, int m_no, String etc, String ykiho_enc) {
		super();
		this.rno = rno;
		this.r_time = r_time;
		this.f_num = f_num;
		this.r_status = r_status;
		this.m_no = m_no;
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

	public String getR_time() {
		return r_time;
	}

	public void setR_time(String r_time) {
		this.r_time = r_time;
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

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
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
		return "Res [rno=" + rno + ", r_time=" + r_time  + ", f_num=" + f_num + ", r_status="
				+ r_status + ", m_no=" + m_no + ", etc=" + etc + ", ykiho_enc=" + ykiho_enc + "]";
	}
	
	

}
>>>>>>> jihyun
