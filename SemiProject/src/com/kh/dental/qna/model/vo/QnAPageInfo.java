package com.kh.dental.qna.model.vo;

public class QnAPageInfo {

	private int listCount;
	private int totalPage;
	private int pageNum;
	private int currentPage;
	private int startPage;
	private int lastPage;
	
	public QnAPageInfo() {}
	
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	@Override
	public String toString() {
		return "QnAPageInfo [listCount=" + listCount + ", totalPage=" + totalPage + ", pageNum=" + pageNum
				+ ", currentPage=" + currentPage + ", startPage=" + startPage + ", lastPage=" + lastPage + "]";
	}
	public QnAPageInfo(int listCount, int totalPage, int pageNum, int currentPage, int startPage, int lastPage) {
		super();
		this.listCount = listCount;
		this.totalPage = totalPage;
		this.pageNum = pageNum;
		this.currentPage = currentPage;
		this.startPage = startPage;
		this.lastPage = lastPage;
	}
	
}
