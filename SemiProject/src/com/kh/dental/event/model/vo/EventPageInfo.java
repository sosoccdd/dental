package com.kh.dental.event.model.vo;

public class EventPageInfo {
	private static final long serialVersionUID = 7042585890579769582L;
	private int currentPage;
	private int listCount;
	private int limit;
	private int maxpage;
	private int startPage;
	private int endPage;
	
	public EventPageInfo(){}

	public EventPageInfo(int currentPage, int listCount, int limit, int maxpage, int startPage, int endPage) {
		super();
		this.currentPage = currentPage;
		this.listCount = listCount;
		this.limit = limit;
		this.maxpage = maxpage;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getListCount() {
		return listCount;
	}

	public int getLimit() {
		return limit;
	}

	public int getMaxpage() {
		return maxpage;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "PageInfo [currentPage=" + currentPage + ", listCount=" + listCount + ", limit=" + limit + ", maxpage="
				+ maxpage + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
}
