package com.kh.dental.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable {
	private int mNo;
	private String mId;
	private String mName;
	private String mPwd;
	private String address;
	private String phone;
	private String gender;
	private String type;
	private int ptNo;
	private Date joinDate;
	private String status;
	private Date delDate;
	private int fNum;
<<<<<<< HEAD
	private int hosNo;
	private String hosName;
	private String hosGender;
	private String hosEtc;
	private int bIdCnt;

	public Member(){}

	public Member(int mNo, String mId, String mName, String mPwd, String address, String phone, String gender,
			String type, int ptNo, Date joinDate, String status, Date delDate, int fNum, int hosNo, String hosName,
			String hosGender, String hosEtc, int bIdCnt) {
=======
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
>>>>>>> jihyun
		super();
		this.mNo = mNo;
		this.mId = mId;
		this.mName = mName;
		this.mPwd = mPwd;
		this.address = address;
		this.phone = phone;
		this.gender = gender;
		this.type = type;
		this.ptNo = ptNo;
		this.joinDate = joinDate;
		this.status = status;
		this.delDate = delDate;
		this.fNum = fNum;
<<<<<<< HEAD
		this.hosNo = hosNo;
		this.hosName = hosName;
		this.hosGender = hosGender;
		this.hosEtc = hosEtc;
		this.bIdCnt = bIdCnt;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
=======
		this.mPtNo = mPtNo;
		this.mRes = mRes;
		this.hosDoc = hosDoc;
		this.hosDocGender = hosDocGender;
		this.hosDocType = hosDocType;
		this.hosDocEtc = hosDocEtc;
		this.bid_count = bid_count;
>>>>>>> jihyun
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

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPtNo() {
		return ptNo;
	}

	public void setPtNo(int ptNo) {
		this.ptNo = ptNo;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getDelDate() {
		return delDate;
	}

	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}

	public int getfNum() {
		return fNum;
	}

	public void setfNum(int fNum) {
		this.fNum = fNum;
	}

	public int getHosNo() {
		return hosNo;
	}

	public void setHosNo(int hosNo) {
		this.hosNo = hosNo;
	}

	public String getHosName() {
		return hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}

	public String getHosGender() {
		return hosGender;
	}

	public void setHosGender(String hosGender) {
		this.hosGender = hosGender;
	}

	public String getHosEtc() {
		return hosEtc;
	}

	public void setHosEtc(String hosEtc) {
		this.hosEtc = hosEtc;
	}

	public int getbIdCnt() {
		return bIdCnt;
	}

	public void setbIdCnt(int bIdCnt) {
		this.bIdCnt = bIdCnt;
	}

	@Override
	public String toString() {
<<<<<<< HEAD
		return "Member [mNo=" + mNo + ", mId=" + mId + ", mName=" + mName + ", mPwd=" + mPwd + ", address=" + address
				+ ", phone=" + phone + ", gender=" + gender + ", type=" + type + ", ptNo=" + ptNo + ", joinDate="
				+ joinDate + ", status=" + status + ", delDate=" + delDate + ", fNum=" + fNum + ", hosNo=" + hosNo
				+ ", hosName=" + hosName + ", hosGender=" + hosGender + ", hosEtc=" + hosEtc + ", bIdCnt=" + bIdCnt
				+ "]";
=======
		return "Member [mId=" + mId + ", mName=" + mName + ", mAddr=" + mAddr + ", mPwd=" + mPwd + ", mPhone=" + mPhone
				+ ", mDate=" + mDate + ", mGender=" + mGender + ", mType=" + mType + ", mStatus=" + mStatus + ", mNo="
				+ mNo + ", fNum=" + fNum + ", mPtNo=" + mPtNo + ", mRes=" + mRes + ", hosDoc=" + hosDoc
				+ ", hosDocGender=" + hosDocGender + ", hosDocType=" + hosDocType + ", hosDocEtc=" + hosDocEtc
				+ ", bid_count=" + bid_count + "]";
>>>>>>> jihyun
	}

	
	
	
}
