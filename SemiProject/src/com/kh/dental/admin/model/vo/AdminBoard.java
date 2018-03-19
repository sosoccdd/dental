package com.kh.dental.admin.model.vo;

import java.sql.Date;

public class AdminBoard {
	private int b_no;
	private String b_writer;
	private String b_content;
	private int b_tno;
	private Date b_date;
	private int b_count;
	private int b_p_no;
	private String b_title;
	private Date b_modi_date;
	private String b_status;
	private int b_file_no;
	private int pro_no;
	private Date start_date;
	private Date end_date;
	private int start_pt;
	private String ykiho_enc;
	private String status;
	private int ref_bid;
	private int f_num;
	
	public AdminBoard() {
		// TODO Auto-generated constructor stub
	}

	public AdminBoard(int b_no, String b_writer, String b_content, int b_tno, Date b_date, int b_count, int b_p_no,
			String b_title, Date b_modi_date, String b_status, int b_file_no, int pro_no, Date start_date,
			Date end_date, int start_pt, String ykiho_enc, String status, int ref_bid, int f_num) {
		super();
		this.b_no = b_no;
		this.b_writer = b_writer;
		this.b_content = b_content;
		this.b_tno = b_tno;
		this.b_date = b_date;
		this.b_count = b_count;
		this.b_p_no = b_p_no;
		this.b_title = b_title;
		this.b_modi_date = b_modi_date;
		this.b_status = b_status;
		this.b_file_no = b_file_no;
		this.pro_no = pro_no;
		this.start_date = start_date;
		this.end_date = end_date;
		this.start_pt = start_pt;
		this.ykiho_enc = ykiho_enc;
		this.status = status;
		this.ref_bid = ref_bid;
		this.f_num = f_num;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public int getB_tno() {
		return b_tno;
	}

	public void setB_tno(int b_tno) {
		this.b_tno = b_tno;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}

	public int getB_count() {
		return b_count;
	}

	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	public int getB_p_no() {
		return b_p_no;
	}

	public void setB_p_no(int b_p_no) {
		this.b_p_no = b_p_no;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public Date getB_modi_date() {
		return b_modi_date;
	}

	public void setB_modi_date(Date b_modi_date) {
		this.b_modi_date = b_modi_date;
	}

	public String getB_status() {
		return b_status;
	}

	public void setB_status(String b_status) {
		this.b_status = b_status;
	}

	public int getB_file_no() {
		return b_file_no;
	}

	public void setB_file_no(int b_file_no) {
		this.b_file_no = b_file_no;
	}

	public int getPro_no() {
		return pro_no;
	}

	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
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

	public int getStart_pt() {
		return start_pt;
	}

	public void setStart_pt(int start_pt) {
		this.start_pt = start_pt;
	}

	public String getYkiho_enc() {
		return ykiho_enc;
	}

	public void setYkiho_enc(String ykiho_enc) {
		this.ykiho_enc = ykiho_enc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getRef_bid() {
		return ref_bid;
	}

	public void setRef_bid(int ref_bid) {
		this.ref_bid = ref_bid;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	@Override
	public String toString() {
		return "AdminBoard [b_no=" + b_no + ", b_writer=" + b_writer + ", b_content=" + b_content + ", b_tno=" + b_tno
				+ ", b_date=" + b_date + ", b_count=" + b_count + ", b_p_no=" + b_p_no + ", b_title=" + b_title
				+ ", b_modi_date=" + b_modi_date + ", b_status=" + b_status + ", b_file_no=" + b_file_no + ", pro_no="
				+ pro_no + ", start_date=" + start_date + ", end_date=" + end_date + ", start_pt=" + start_pt
				+ ", ykiho_enc=" + ykiho_enc + ", status=" + status + ", ref_bid=" + ref_bid + ", f_num=" + f_num + "]";
	}
	

}
