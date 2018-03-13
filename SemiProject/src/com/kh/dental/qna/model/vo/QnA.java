package com.kh.dental.qna.model.vo;

import java.sql.Date;

public class QnA {

	
	/*작성날짜
	조회수
	사진번호
	작성자ID
	제목
	내용
	수정날짜
	게시여부
	첨부파일
	글번호
	게시판별번호*/
	private Date bDate; 
	private int bCount;
	private int bPno;
	private String bWriter;
	private String bTitle;
	private String bContent;
	private String bStatus;
	private int fileNo;
	private int bNo;
	private int tNo;
	public QnA() {}
	
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public int getbCount() {
		return bCount;
	}
	public void setbCount(int bCount) {
		this.bCount = bCount;
	}
	public int getbPno() {
		return bPno;
	}
	public void setbPno(int bPno) {
		this.bPno = bPno;
	}
	public String getbWriter() {
		return bWriter;
	}
	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbStatus() {
		return bStatus;
	}
	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	
	@Override
	public String toString() {
		return "QnA [bDate=" + bDate + ", bCount=" + bCount + ", bPno=" + bPno + ", bWriter=" + bWriter + ", bTitle="
				+ bTitle + ", bContent=" + bContent + ", bStatus=" + bStatus + ", fileNo=" + fileNo + ", bNo=" + bNo
				+ ", tNo=" + tNo + "]";
	}

	public QnA(Date bDate, int bCount, int bPno, String bWriter, String bTitle, String bContent, String bStatus,
			int fileNo, int bNo, int tNo) {
		super();
		this.bDate = bDate;
		this.bCount = bCount;
		this.bPno = bPno;
		this.bWriter = bWriter;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bStatus = bStatus;
		this.fileNo = fileNo;
		this.bNo = bNo;
		this.tNo = tNo;
	}
	
	
	
	
	

	
	
}
