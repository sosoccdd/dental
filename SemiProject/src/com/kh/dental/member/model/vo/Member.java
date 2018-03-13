package com.kh.dental.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable {
	private String mId;
	private String mName;
	private String mAddr;
	private String mPwd;
	private String mPhone;
	private Date mDate;
	private String mGender;
	private String mType;
	private String mStatus;
	private int mNo;
	private int fNum;
	private int mPtNo;
	private int mRes;
	private String hosDoc;
	private String hosDocGender;
	private String hosDocType;
	private String hosDocEtc;
	private int bid_count;
	
	public Member(){}

	
	
	
	

	public Member(String mId, String mName, String mAddr, String mPwd, String mPhone, Date mDate, String mGender,
			String mType, String mStatus, int mNo, int fNum, int mPtNo, int mRes, String hosDoc, String hosDocGender,
			String hosDocType, String hosDocEtc, int bid_count) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.mAddr = mAddr;
		this.mPwd = mPwd;
		this.mPhone = mPhone;
		this.mDate = mDate;
		this.mGender = mGender;
		this.mType = mType;
		this.mStatus = mStatus;
		this.mNo = mNo;
		this.fNum = fNum;
		this.mPtNo = mPtNo;
		this.mRes = mRes;
		this.hosDoc = hosDoc;
		this.hosDocGender = hosDocGender;
		this.hosDocType = hosDocType;
		this.hosDocEtc = hosDocEtc;
		this.bid_count = bid_count;
	}






	public int getBid_count() {
		return bid_count;
	}






	public void setBid_count(int bid_count) {
		this.bid_count = bid_count;
	}






	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmAddr() {
		return mAddr;
	}

	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}

	public String getmGender() {
		return mGender;
	}

	public void setmGender(String mGender) {
		this.mGender = mGender;
	}

	public String getmType() {
		return mType;
	}

	public void setmType(String mType) {
		this.mType = mType;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public int getfNum() {
		return fNum;
	}

	public void setfNum(int fNum) {
		this.fNum = fNum;
	}

	public int getmPtNo() {
		return mPtNo;
	}

	public void setmPtNo(int mPtNo) {
		this.mPtNo = mPtNo;
	}

	public int getmRes() {
		return mRes;
	}

	public void setmRes(int mRes) {
		this.mRes = mRes;
	}

	public String getHosDoc() {
		return hosDoc;
	}

	public void setHosDoc(String hosDoc) {
		this.hosDoc = hosDoc;
	}

	public String getHosDocGender() {
		return hosDocGender;
	}

	public void setHosDocGender(String hosDocGender) {
		this.hosDocGender = hosDocGender;
	}

	public String getHosDocType() {
		return hosDocType;
	}

	public void setHosDocType(String hosDocType) {
		this.hosDocType = hosDocType;
	}

	public String getHosDocEtc() {
		return hosDocEtc;
	}

	public void setHosDocEtc(String hosDocEtc) {
		this.hosDocEtc = hosDocEtc;
	}




	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mName=" + mName + ", mAddr=" + mAddr + ", mPwd=" + mPwd + ", mPhone=" + mPhone
				+ ", mDate=" + mDate + ", mGender=" + mGender + ", mType=" + mType + ", mStatus=" + mStatus + ", mNo="
				+ mNo + ", fNum=" + fNum + ", mPtNo=" + mPtNo + ", mRes=" + mRes + ", hosDoc=" + hosDoc
				+ ", hosDocGender=" + hosDocGender + ", hosDocType=" + hosDocType + ", hosDocEtc=" + hosDocEtc
				+ ", bid_count=" + bid_count + "]";
	}

	
	
	
}
