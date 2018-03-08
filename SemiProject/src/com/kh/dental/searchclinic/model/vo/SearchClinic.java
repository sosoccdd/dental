package com.kh.dental.searchclinic.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class SearchClinic implements Serializable{
	private String ykiho_enc;
	private String yadm_nm;
	private int pst_no;
	private String addr;
	private String telno;
	private String hospurl;
	private Date estb_dd;
	private String x_pos;
	private String y_pos;
	private String status;
	private String sido_cd;
	private String sggu_cd;
	private String sggu_cd_nm;
	private String emdong_nm;
	private String sido_cd_nm;
	private int m_no;
	private String m_id;
	
	public SearchClinic() {
		// TODO Auto-generated constructor stub
	}
	
	public SearchClinic(String ykiho_enc, String yadm_nm, int pst_no, String addr, String telno, String hospurl,
			Date estb_dd, String x_pos, String y_pos, String status, String sido_cd, String sggu_cd, String sggu_cd_nm,
			String emdong_nm, String sido_cd_nm, int m_no, String m_id) {
		super();
		this.ykiho_enc = ykiho_enc;
		this.yadm_nm = yadm_nm;
		this.pst_no = pst_no;
		this.addr = addr;
		this.telno = telno;
		this.hospurl = hospurl;
		this.estb_dd = estb_dd;
		this.x_pos = x_pos;
		this.y_pos = y_pos;
		this.status = status;
		this.sido_cd = sido_cd;
		this.sggu_cd = sggu_cd;
		this.sggu_cd_nm = sggu_cd_nm;
		this.emdong_nm = emdong_nm;
		this.sido_cd_nm = sido_cd_nm;
		this.m_no = m_no;
		this.m_id = m_id;
	}

	public String getYkiho_enc() {
		return ykiho_enc;
	}

	public void setYkiho_enc(String ykiho_enc) {
		this.ykiho_enc = ykiho_enc;
	}

	public String getYadm_nm() {
		return yadm_nm;
	}

	public void setYadm_nm(String yadm_nm) {
		this.yadm_nm = yadm_nm;
	}

	public int getPst_no() {
		return pst_no;
	}

	public void setPst_no(int pst_no) {
		this.pst_no = pst_no;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getHospurl() {
		return hospurl;
	}

	public void setHospurl(String hospurl) {
		this.hospurl = hospurl;
	}

	public Date getEstb_dd() {
		return estb_dd;
	}

	public void setEstb_dd(Date estb_dd) {
		this.estb_dd = estb_dd;
	}

	public String getX_pos() {
		return x_pos;
	}

	public void setX_pos(String x_pos) {
		this.x_pos = x_pos;
	}

	public String getY_pos() {
		return y_pos;
	}

	public void setY_pos(String y_pos) {
		this.y_pos = y_pos;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSido_cd() {
		return sido_cd;
	}

	public void setSido_cd(String sido_cd) {
		this.sido_cd = sido_cd;
	}

	public String getSggu_cd() {
		return sggu_cd;
	}

	public void setSggu_cd(String sggu_cd) {
		this.sggu_cd = sggu_cd;
	}

	public String getSggu_cd_nm() {
		return sggu_cd_nm;
	}

	public void setSggu_cd_nm(String sggu_cd_nm) {
		this.sggu_cd_nm = sggu_cd_nm;
	}

	public String getEmdong_nm() {
		return emdong_nm;
	}

	public void setEmdong_nm(String emdong_nm) {
		this.emdong_nm = emdong_nm;
	}

	public String getSido_cd_nm() {
		return sido_cd_nm;
	}

	public void setSido_cd_nm(String sido_cd_nm) {
		this.sido_cd_nm = sido_cd_nm;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	@Override
	public String toString() {
		return "SearchClinic [ykiho_enc=" + ykiho_enc + ", yadm_nm=" + yadm_nm + ", pst_no=" + pst_no + ", addr=" + addr
				+ ", telno=" + telno + ", hospurl=" + hospurl + ", estb_dd=" + estb_dd + ", x_pos=" + x_pos + ", y_pos="
				+ y_pos + ", status=" + status + ", sido_cd=" + sido_cd + ", sggu_cd=" + sggu_cd + ", sggu_cd_nm="
				+ sggu_cd_nm + ", emdong_nm=" + emdong_nm + ", sido_cd_nm=" + sido_cd_nm + ", m_no=" + m_no + ", m_id="
				+ m_id + "]";
	}
	
	
	
	

}
