package com.kh.dental.event.model.vo;

public class Pay {
	private int payNo; //결제번호
	private String paySuccess; //결제처리 성곡여부
	private String impUid; // 아임포트 거래 고유아이디
	private String merchant_uid; // 고유 주문 번호 
	private String payMethod; // 결제 수단
	private int paidAmount; //결제금액
	private String status; // 성공 여부
	private String payName; // 주문 명
	private String pgProvider; // 결제승인
	private String tid; //pg 사 고유 거래  번호
	private String buyerName; // 주문자 이름
	private String buyerEmail; // 주문자이메일 (2018-03-10 DB에 email x ) 
	private String buyerTel; // 주문자 연락처
	private String buyerAddr; //주문자 주소
	private String buyerPostcode; //주문자 우편번호
	private String applyNum; //카드사 승인번호
	
	public Pay(){}
	
	
	public Pay(String impUid, String merchant_uid, String payMethod, int paidAmount, String payName,String buyerName,String buyerTel,String buyerAddr,String applyNum){
		super();
		this.impUid = impUid;
		this.merchant_uid = merchant_uid;
		this.payMethod = payMethod;
		this.paidAmount = paidAmount;
		this.payName = payName;
		this.buyerName = buyerName;
		this.buyerTel = buyerTel;
		this.buyerAddr = buyerAddr;
		this.applyNum = applyNum;
	}
	public Pay(int payNo, String paySuccess, String impUid, String payMethod, int paidAmount, String status,
			String payName, String pgProvider, String tid, String buyerName, String buyerEmail, String buyerTel,
			String buyerAddr, String buyerPostcode) {
		super();
		this.payNo = payNo;
		this.paySuccess = paySuccess;
		this.impUid = impUid;
		this.payMethod = payMethod;
		this.paidAmount = paidAmount;
		this.status = status;
		this.payName = payName;
		this.pgProvider = pgProvider;
		this.tid = tid;
		this.buyerName = buyerName;
		this.buyerEmail = buyerEmail;
		this.buyerTel = buyerTel;
		this.buyerAddr = buyerAddr;
		this.buyerPostcode = buyerPostcode;
	}

	public int getPayNo() {
		return payNo;
	}

	public String getPaySuccess() {
		return paySuccess;
	}

	public String getImpUid() {
		return impUid;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public int getPaidAmount() {
		return paidAmount;
	}

	public String getStatus() {
		return status;
	}

	public String getPayName() {
		return payName;
	}

	public String getPgProvider() {
		return pgProvider;
	}

	public String getTid() {
		return tid;
	}

	public String getBuyerName() {
		return buyerName;
	}

	public String getBuyerEmail() {
		return buyerEmail;
	}

	public String getBuyerTel() {
		return buyerTel;
	}

	public String getBuyerAddr() {
		return buyerAddr;
	}

	public String getBuyerPostcode() {
		return buyerPostcode;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public void setPaySuccess(String paySuccess) {
		this.paySuccess = paySuccess;
	}

	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public void setPaidAmount(int paidAmount) {
		this.paidAmount = paidAmount;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	public void setPgProvider(String pgProvider) {
		this.pgProvider = pgProvider;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public void setBuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}

	public void setBuyerTel(String buyerTel) {
		this.buyerTel = buyerTel;
	}

	public void setBuyerAddr(String buyerAddr) {
		this.buyerAddr = buyerAddr;
	}

	public void setBuyerPostcode(String buyerPostcode) {
		this.buyerPostcode = buyerPostcode;
	}

	
	
	public String getMerchant_uid() {
		return merchant_uid;
	}



	public String getApplyNum() {
		return applyNum;
	}



	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}



	public void setApplyNum(String applyNum) {
		this.applyNum = applyNum;
	}



	@Override
	public String toString() {
		return "Pay [payNo=" + payNo + ", paySuccess=" + paySuccess + ", impUid=" + impUid + ", payMethod=" + payMethod
				+ ", paidAmount=" + paidAmount + ", status=" + status + ", payName=" + payName + ", pgProvider="
				+ pgProvider + ", tid=" + tid + ", buyerName=" + buyerName + ", buyerEmail=" + buyerEmail
				+ ", buyerTel=" + buyerTel + ", buyerAddr=" + buyerAddr + ", buyerPostcode=" + buyerPostcode + "]";
	};

	
	
	
}
