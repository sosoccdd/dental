package com.kh.dental.searchclinic.model.vo;

import java.sql.Date;

public class Cdetail {

	private String yadm_nm;
	private String addr;
	private String telno;
	private String hospurl;
	private String status;
	private int m_no;
	private Date estp_dd;
	private String lunch_week;
	private String lunch_sat;
	private String rcv_week;
	private String rcv_sat;
	private String trmt_sun_start;
	private String trmt_sun_end;
	private String trmt_mon_start;
	private String trmt_mon_end;
	private String trmt_tue_start;
	private String trmt_tue_end;
	private String trmt_wed_start;
	private String trmt_wed_end;
	private String trmt_thu_start;
	private String trmt_thu_end;
	private String trmt_fri_start;
	private String trmt_fri_end;
	private String trmt_sat_start;
	private String trmt_sat_end;
	
	public Cdetail(){}

	public Cdetail(String yadm_nm, String addr, String telno, String hospurl, String status, int m_no, Date estp_dd,
			String lunch_week, String lunch_sat, String rcv_week, String rcv_sat, String trmt_sun_start,
			String trmt_sun_end, String trmt_mon_start, String trmt_mon_end, String trmt_tue_start, String trmt_tue_end,
			String trmt_wed_start, String trmt_wed_end, String trmt_thu_start, String trmt_thu_end,
			String trmt_fri_start, String trmt_fri_end, String trmt_sat_start, String trmt_sat_end) {
		super();
		this.yadm_nm = yadm_nm;
		this.addr = addr;
		this.telno = telno;
		this.hospurl = hospurl;
		this.status = status;
		this.m_no = m_no;
		this.estp_dd = estp_dd;
		this.lunch_week = lunch_week;
		this.lunch_sat = lunch_sat;
		this.rcv_week = rcv_week;
		this.rcv_sat = rcv_sat;
		this.trmt_sun_start = trmt_sun_start;
		this.trmt_sun_end = trmt_sun_end;
		this.trmt_mon_start = trmt_mon_start;
		this.trmt_mon_end = trmt_mon_end;
		this.trmt_tue_start = trmt_tue_start;
		this.trmt_tue_end = trmt_tue_end;
		this.trmt_wed_start = trmt_wed_start;
		this.trmt_wed_end = trmt_wed_end;
		this.trmt_thu_start = trmt_thu_start;
		this.trmt_thu_end = trmt_thu_end;
		this.trmt_fri_start = trmt_fri_start;
		this.trmt_fri_end = trmt_fri_end;
		this.trmt_sat_start = trmt_sat_start;
		this.trmt_sat_end = trmt_sat_end;
	}

	public String getYadm_nm() {
		return yadm_nm;
	}

	public void setYadm_nm(String yadm_nm) {
		this.yadm_nm = yadm_nm;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public Date getEstp_dd() {
		return estp_dd;
	}

	public void setEstp_dd(Date estp_dd) {
		this.estp_dd = estp_dd;
	}

	public String getLunch_week() {
		return lunch_week;
	}

	public void setLunch_week(String lunch_week) {
		this.lunch_week = lunch_week;
	}

	public String getLunch_sat() {
		return lunch_sat;
	}

	public void setLunch_sat(String lunch_sat) {
		this.lunch_sat = lunch_sat;
	}

	public String getRcv_week() {
		return rcv_week;
	}

	public void setRcv_week(String rcv_week) {
		this.rcv_week = rcv_week;
	}

	public String getRcv_sat() {
		return rcv_sat;
	}

	public void setRcv_sat(String rcv_sat) {
		this.rcv_sat = rcv_sat;
	}

	public String getTrmt_sun_start() {
		return trmt_sun_start;
	}

	public void setTrmt_sun_start(String trmt_sun_start) {
		this.trmt_sun_start = trmt_sun_start;
	}

	public String getTrmt_sun_end() {
		return trmt_sun_end;
	}

	public void setTrmt_sun_end(String trmt_sun_end) {
		this.trmt_sun_end = trmt_sun_end;
	}

	public String getTrmt_mon_start() {
		return trmt_mon_start;
	}

	public void setTrmt_mon_start(String trmt_mon_start) {
		this.trmt_mon_start = trmt_mon_start;
	}

	public String getTrmt_mon_end() {
		return trmt_mon_end;
	}

	public void setTrmt_mon_end(String trmt_mon_end) {
		this.trmt_mon_end = trmt_mon_end;
	}

	public String getTrmt_tue_start() {
		return trmt_tue_start;
	}

	public void setTrmt_tue_start(String trmt_tue_start) {
		this.trmt_tue_start = trmt_tue_start;
	}

	public String getTrmt_tue_end() {
		return trmt_tue_end;
	}

	public void setTrmt_tue_end(String trmt_tue_end) {
		this.trmt_tue_end = trmt_tue_end;
	}

	public String getTrmt_wed_start() {
		return trmt_wed_start;
	}

	public void setTrmt_wed_start(String trmt_wed_start) {
		this.trmt_wed_start = trmt_wed_start;
	}

	public String getTrmt_wed_end() {
		return trmt_wed_end;
	}

	public void setTrmt_wed_end(String trmt_wed_end) {
		this.trmt_wed_end = trmt_wed_end;
	}

	public String getTrmt_thu_start() {
		return trmt_thu_start;
	}

	public void setTrmt_thu_start(String trmt_thu_start) {
		this.trmt_thu_start = trmt_thu_start;
	}

	public String getTrmt_thu_end() {
		return trmt_thu_end;
	}

	public void setTrmt_thu_end(String trmt_thu_end) {
		this.trmt_thu_end = trmt_thu_end;
	}

	public String getTrmt_fri_start() {
		return trmt_fri_start;
	}

	public void setTrmt_fri_start(String trmt_fri_start) {
		this.trmt_fri_start = trmt_fri_start;
	}

	public String getTrmt_fri_end() {
		return trmt_fri_end;
	}

	public void setTrmt_fri_end(String trmt_fri_end) {
		this.trmt_fri_end = trmt_fri_end;
	}

	public String getTrmt_sat_start() {
		return trmt_sat_start;
	}

	public void setTrmt_sat_start(String trmt_sat_start) {
		this.trmt_sat_start = trmt_sat_start;
	}

	public String getTrmt_sat_end() {
		return trmt_sat_end;
	}

	public void setTrmt_sat_end(String trmt_sat_end) {
		this.trmt_sat_end = trmt_sat_end;
	}

	@Override
	public String toString() {
		return "Cdetail [yadm_nm=" + yadm_nm + ", addr=" + addr + ", telno=" + telno + ", hospurl=" + hospurl
				+ ", status=" + status + ", m_no=" + m_no + ", estp_dd=" + estp_dd + ", lunch_week=" + lunch_week
				+ ", lunch_sat=" + lunch_sat + ", rcv_week=" + rcv_week + ", rcv_sat=" + rcv_sat + ", trmt_sun_start="
				+ trmt_sun_start + ", trmt_sun_end=" + trmt_sun_end + ", trmt_mon_start=" + trmt_mon_start
				+ ", trmt_mon_end=" + trmt_mon_end + ", trmt_tue_start=" + trmt_tue_start + ", trmt_tue_end="
				+ trmt_tue_end + ", trmt_wed_start=" + trmt_wed_start + ", trmt_wed_end=" + trmt_wed_end
				+ ", trmt_thu_start=" + trmt_thu_start + ", trmt_thu_end=" + trmt_thu_end + ", trmt_fri_start="
				+ trmt_fri_start + ", trmt_fri_end=" + trmt_fri_end + ", trmt_sat_start=" + trmt_sat_start
				+ ", trmt_sat_end=" + trmt_sat_end + "]";
	}
	
	
}
