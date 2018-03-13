package com.kh.dental.mypage.model.vo;

import java.sql.Date;

public class Dual implements java.io.Serializable{
	
	
	
	private int bno;
	private int btype;
	private int btno;
	private String bstatus;
	private String bcontent;
	private String btitle;
	private String bwriter;
	private Date bdate;
	
	private int ref_bid;
	private int bcount;
	private int bpno;
	private Date bmodidate;
	private int bfileno;
	private String pstatus;
	private int star_point;
	private Date start_date;
	private Date end_date;
	private int rec_no;
	private String ykiho_enc;
	
	public Dual(){}

	public Dual(int bno, int btype, int btno, int ref_bid, String bstatus, String bcontent, String btitle,
			String bwriter, Date bdate) {
		super();
		this.bno = bno;
		this.btype = btype;
		this.btno = btno;
		this.ref_bid = ref_bid;
		this.bstatus = bstatus;
		this.bcontent = bcontent;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bdate = bdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getBtype() {
		return btype;
	}

	public void setBtype(int btype) {
		this.btype = btype;
	}

	public int getBtno() {
		return btno;
	}

	public void setBtno(int btno) {
		this.btno = btno;
	}

	public int getRef_bid() {
		return ref_bid;
	}

	public void setRef_bid(int ref_bid) {
		this.ref_bid = ref_bid;
	}

	public String getBstatus() {
		return bstatus;
	}

	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public int getBcount() {
		return bcount;
	}

	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	public int getBpno() {
		return bpno;
	}

	public void setBpno(int bpno) {
		this.bpno = bpno;
	}

	public Date getBmodidate() {
		return bmodidate;
	}

	public void setBmodidate(Date bmodidate) {
		this.bmodidate = bmodidate;
	}

	public int getBfileno() {
		return bfileno;
	}

	public void setBfileno(int bfileno) {
		this.bfileno = bfileno;
	}

	public String getPstatus() {
		return pstatus;
	}

	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}

	public int getStar_point() {
		return star_point;
	}

	public void setStar_point(int star_point) {
		this.star_point = star_point;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public int getRec_no() {
		return rec_no;
	}

	public void setRec_no(int rec_no) {
		this.rec_no = rec_no;
	}

	public String getYkiho_enc() {
		return ykiho_enc;
	}

	public void setYkiho_enc(String ykiho_enc) {
		this.ykiho_enc = ykiho_enc;
	}

	@Override
	public String toString() {
		return "Dual [bno=" + bno + ", btype=" + btype + ", btno=" + btno + ", ref_bid=" + ref_bid + ", bstatus="
				+ bstatus + ", bcontent=" + bcontent + ", btitle=" + btitle + ", bwriter=" + bwriter + ", bdate="
				+ bdate + ", bcount=" + bcount + ", bpno=" + bpno + ", bmodidate=" + bmodidate + ", bfileno=" + bfileno
				+ ", pstatus=" + pstatus + ", star_point=" + star_point + ", start_date=" + start_date + ", end_date="
				+ end_date + ", rec_no=" + rec_no + ", ykiho_enc=" + ykiho_enc + "]";
	}
	
	
	
}
