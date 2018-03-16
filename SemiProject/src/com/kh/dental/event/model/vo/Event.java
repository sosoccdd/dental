package com.kh.dental.event.model.vo;

import java.sql.Date;

public class Event {

	private int eid;
	private String eWriter;
	private String eContent;
	private Date sysdate;
	private int eCount;
	private String ePhoto;
	private String eTitle;
	private String eStatus;
	private Date eSdate;
	private Date eEdate;
	//product table
	private int ePrice;
	
	public Event(){}

	public Event(String eWriter, String eTitle, int ePrice, Date eSdate, Date eEdate, String ePhoto, String eContent ){
		super();
		this.eTitle = eTitle;
		this.ePrice = ePrice;
		this.eSdate = eSdate;
		this.eEdate = eEdate;
		this.ePhoto = ePhoto;
		this.eContent = eContent;
	}

	public Event(int eid , String eWriter, String eContent, Date sysdate, int eCount, String ePhoto, String eTitle,
			String eStatus, Date eSdate, Date eEdate, int ePrice) {
		super();
		this.eid= eid;
		this.eWriter = eWriter;
		this.eContent = eContent;
		this.sysdate = sysdate;
		this.eCount = eCount;
		this.ePhoto = ePhoto;
		this.eTitle = eTitle;
		this.eStatus = eStatus;
		this.eSdate = eSdate;
		this.eEdate = eEdate;
		this.ePrice = ePrice;
	}

	
	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String geteWriter() {
		return eWriter;
	}

	public String geteContent() {
		return eContent;
	}

	public Date getSysdate() {
		return sysdate;
	}

	public int geteCount() {
		return eCount;
	}

	public String getePhoto() {
		return ePhoto;
	}

	public String geteTitle() {
		return eTitle;
	}

	public String geteStatus() {
		return eStatus;
	}

	public Date geteSdate() {
		return eSdate;
	}

	public Date geteEdate() {
		return eEdate;
	}

	public int getePrice() {
		return ePrice;
	}

	public void seteWriter(String eWriter) {
		this.eWriter = eWriter;
	}

	public void seteContent(String eContent) {
		this.eContent = eContent;
	}

	public void setSysdate(Date sysdate) {
		this.sysdate = sysdate;
	}

	public void seteCount(int eCount) {
		this.eCount = eCount;
	}

	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
	}

	public void seteTitle(String eTitle) {
		this.eTitle = eTitle;
	}

	public void seteStatus(String eStatus) {
		this.eStatus = eStatus;
	}

	public void seteSdate(Date eSdate) {
		this.eSdate = eSdate;
	}

	public void seteEdate(Date eEdate) {
		this.eEdate = eEdate;
	}

	public void setePrice(int ePrice) {
		this.ePrice = ePrice;
	}

	@Override
	public String toString() {
		return "Event [eWriter=" + eWriter + ", eContent=" + eContent + ", sysdate="
				+ sysdate + ", eCount=" + eCount + ", ePhoto=" + ePhoto + ", eTitle=" + eTitle + ", eStatus=" + eStatus
				+ ", eSdate=" + eSdate + ", eEdate=" + eEdate + ", ePrice=" + ePrice + "]";
	}

	
	
	
	
}
