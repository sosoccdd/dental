package com.kh.dental.admin.model.vo;

import java.sql.Date;

public class AdminEvent {
	
	private int pay_no;
	private String success;
	private String error_code;
	private String error_msg;
	private String imp_uid;
	private String merchant_uid;
	private String pay_method;
	private int paid_amount;
	private String name;
	private String pg_provider;
	private String pg_tid;
	private String buyer_name;
	private String buyer_id;
	private String buyer_tel;
	private String buyer_addr;
	private String buyer_postcode;
	private String custom_data;
	private int paid_at;
	private String recipt_url;
	private int rec_no;
	private int m_no;
	//보드
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
	
	public AdminEvent() {
		// TODO Auto-generated constructor stub
	}

	

	public AdminEvent(int pay_no, String success, String error_code, String error_msg, String imp_uid,
			String merchant_uid, String pay_method, int paid_amount, String name, String pg_provider, String pg_tid,
			String buyer_name, String buyer_id, String buyer_tel, String buyer_addr, String buyer_postcode,
			String custom_data, int paid_at, String recipt_url, int rec_no, int m_no, int b_no, String b_writer,
			String b_content, int b_tno, Date b_date, int b_count, int b_p_no, String b_title, Date b_modi_date,
			String b_status, int b_file_no, int pro_no, Date start_date, Date end_date, int start_pt, String ykiho_enc,
			String status, int ref_bid, int f_num) {
		super();
		this.pay_no = pay_no;
		this.success = success;
		this.error_code = error_code;
		this.error_msg = error_msg;
		this.imp_uid = imp_uid;
		this.merchant_uid = merchant_uid;
		this.pay_method = pay_method;
		this.paid_amount = paid_amount;
		this.name = name;
		this.pg_provider = pg_provider;
		this.pg_tid = pg_tid;
		this.buyer_name = buyer_name;
		this.buyer_id = buyer_id;
		this.buyer_tel = buyer_tel;
		this.buyer_addr = buyer_addr;
		this.buyer_postcode = buyer_postcode;
		this.custom_data = custom_data;
		this.paid_at = paid_at;
		this.recipt_url = recipt_url;
		this.rec_no = rec_no;
		this.m_no = m_no;
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



	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}

	public String getSuccess() {
		return success;
	}

	public void setSuccess(String success) {
		this.success = success;
	}

	public String getError_code() {
		return error_code;
	}

	public void setError_code(String error_code) {
		this.error_code = error_code;
	}

	public String getError_msg() {
		return error_msg;
	}

	public void setError_msg(String error_msg) {
		this.error_msg = error_msg;
	}

	public String getImp_uid() {
		return imp_uid;
	}

	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}

	public String getMerchant_uid() {
		return merchant_uid;
	}

	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public int getPaid_amount() {
		return paid_amount;
	}

	public void setPaid_amount(int paid_amount) {
		this.paid_amount = paid_amount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPg_provider() {
		return pg_provider;
	}

	public void setPg_provider(String pg_provider) {
		this.pg_provider = pg_provider;
	}

	public String getPg_tid() {
		return pg_tid;
	}

	public void setPg_tid(String pg_tid) {
		this.pg_tid = pg_tid;
	}

	public String getBuyer_name() {
		return buyer_name;
	}

	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}

	public String getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}

	public String getBuyer_tel() {
		return buyer_tel;
	}

	public void setBuyer_tel(String buyer_tel) {
		this.buyer_tel = buyer_tel;
	}

	public String getBuyer_addr() {
		return buyer_addr;
	}

	public void setBuyer_addr(String buyer_addr) {
		this.buyer_addr = buyer_addr;
	}

	public String getBuyer_postcode() {
		return buyer_postcode;
	}

	public void setBuyer_postcode(String buyer_postcode) {
		this.buyer_postcode = buyer_postcode;
	}

	public String getCustom_data() {
		return custom_data;
	}

	public void setCustom_data(String custom_data) {
		this.custom_data = custom_data;
	}

	public int getPaid_at() {
		return paid_at;
	}

	public void setPaid_at(int paid_at) {
		this.paid_at = paid_at;
	}

	public String getRecipt_url() {
		return recipt_url;
	}

	public void setRecipt_url(String recipt_url) {
		this.recipt_url = recipt_url;
	}

	public int getRec_no() {
		return rec_no;
	}

	public void setRec_no(int rec_no) {
		this.rec_no = rec_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}



	@Override
	public String toString() {
		return "AdminEvent [pay_no=" + pay_no + ", success=" + success + ", error_code=" + error_code + ", error_msg="
				+ error_msg + ", imp_uid=" + imp_uid + ", merchant_uid=" + merchant_uid + ", pay_method=" + pay_method
				+ ", paid_amount=" + paid_amount + ", name=" + name + ", pg_provider=" + pg_provider + ", pg_tid="
				+ pg_tid + ", buyer_name=" + buyer_name + ", buyer_id=" + buyer_id + ", buyer_tel=" + buyer_tel
				+ ", buyer_addr=" + buyer_addr + ", buyer_postcode=" + buyer_postcode + ", custom_data=" + custom_data
				+ ", paid_at=" + paid_at + ", recipt_url=" + recipt_url + ", rec_no=" + rec_no + ", m_no=" + m_no
				+ ", b_no=" + b_no + ", b_writer=" + b_writer + ", b_content=" + b_content + ", b_tno=" + b_tno
				+ ", b_date=" + b_date + ", b_count=" + b_count + ", b_p_no=" + b_p_no + ", b_title=" + b_title
				+ ", b_modi_date=" + b_modi_date + ", b_status=" + b_status + ", b_file_no=" + b_file_no + ", pro_no="
				+ pro_no + ", start_date=" + start_date + ", end_date=" + end_date + ", start_pt=" + start_pt
				+ ", ykiho_enc=" + ykiho_enc + ", status=" + status + ", ref_bid=" + ref_bid + ", f_num=" + f_num + "]";
	}

	
	
	



}
