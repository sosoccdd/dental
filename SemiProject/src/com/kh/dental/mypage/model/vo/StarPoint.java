package com.kh.dental.mypage.model.vo;

import java.sql.Date;

public class StarPoint implements java.io.Serializable{
	
	private int bno;
	private String bwriter;
	private String bcontent;
	private int btno;
	private int btype;
	private String btitle;
	private String bstatus;
	private int startpt;
	private String ykiho_enc;
	private Date bdate;
	
	public StarPoint(){}
	
	
	
	public StarPoint(int bno, String bwriter, String bcontent, int btno, int btype, String btitle, String bstatus,
			int startpt, String ykiho_enc, Date bdate) {
		super();
		this.bno = bno;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.btno = btno;
		this.btype = btype;
		this.btitle = btitle;
		this.bstatus = bstatus;
		this.startpt = startpt;
		this.ykiho_enc = ykiho_enc;
		this.bdate = bdate;
	}

	
	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public int getBtno() {
		return btno;
	}

	public void setBtno(int btno) {
		this.btno = btno;
	}

	public int getBtype() {
		return btype;
	}

	public void setBtype(int btype) {
		this.btype = btype;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBstatus() {
		return bstatus;
	}

	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}

	public int getStartpt() {
		return startpt;
	}

	public void setStartpt(int startpt) {
		this.startpt = startpt;
	}

	public String getYkiho_enc() {
		return ykiho_enc;
	}

	public void setYkiho_enc(String ykiho_enc) {
		this.ykiho_enc = ykiho_enc;
	}

	@Override
	public String toString() {
		return "StarPoint [bno=" + bno + ", bwriter=" + bwriter + ", bcontent=" + bcontent + ", btno=" + btno
				+ ", btype=" + btype + ", btitle=" + btitle + ", bstatus=" + bstatus + ", startpt=" + startpt
				+ ", ykiho_enc=" + ykiho_enc + "]";
	}
	
	
	
}
