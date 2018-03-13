<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
    
    String sSiteCode = "BF502";			// NICE로부터 부여받은 사이트 코드
    String sSitePassword = "GAqEkFJnpyG8";		// NICE로부터 부여받은 사이트 패스워드
    
    String sRequestNumber = "REQ0000000001";        	// 요청 번호, 이는 성공/실패후에 같은 값으로 되돌려주게 되므로 
                                                    	// 업체에서 적절하게 변경하여 쓰거나, 아래와 같이 생성한다.
    sRequestNumber = niceCheck.getRequestNO(sSiteCode);
  	session.setAttribute("REQ_SEQ" , sRequestNumber);	// 해킹등의 방지를 위하여 세션을 쓴다면, 세션에 요청번호를 넣는다.
  	
   	String sAuthType = "";      	// 없으면 기본 선택화면, M: 핸드폰, C: 신용카드, X: 공인인증서
   	
   	String popgubun 	= "N";		//Y : 취소버튼 있음 / N : 취소버튼 없음
	String customize 	= "";		//없으면 기본 웹페이지 / Mobile : 모바일페이지
	
	String sGender = ""; 			//없으면 기본 선택 값, 0 : 여자, 1 : 남자 
	
    // CheckPlus(본인인증) 처리 후, 결과 데이타를 리턴 받기위해 다음예제와 같이 http부터 입력합니다.
	//리턴url은 인증 전 인증페이지를 호출하기 전 url과 동일해야 합니다. ex) 인증 전 url : http://www.~ 리턴 url : http://www.~
    String sReturnUrl = "http://127.0.0.1:8001/semi/views/member/Agree.jsp";      // 성공시 이동될 URL
    String sErrorUrl = "http://127.0.0.1:8001/semi/views/member/checkplus_fail.jsp";          // 실패시 이동될 URL

    // 입력될 plain 데이타를 만든다.
    String sPlainData = "7:REQ_SEQ" + sRequestNumber.getBytes().length + ":" + sRequestNumber +
                        "8:SITECODE" + sSiteCode.getBytes().length + ":" + sSiteCode +
                        "9:AUTH_TYPE" + sAuthType.getBytes().length + ":" + sAuthType +
                        "7:RTN_URL" + sReturnUrl.getBytes().length + ":" + sReturnUrl +
                        "7:ERR_URL" + sErrorUrl.getBytes().length + ":" + sErrorUrl +
                        "11:POPUP_GUBUN" + popgubun.getBytes().length + ":" + popgubun +
                        "9:CUSTOMIZE" + customize.getBytes().length + ":" + customize + 
						"6:GENDER" + sGender.getBytes().length + ":" + sGender;
    
    String sMessage = "";
    String sEncData = "";
    
    int iReturn = niceCheck.fnEncode(sSiteCode, sSitePassword, sPlainData);
    if( iReturn == 0 )
    {
        sEncData = niceCheck.getCipherData();
    }
    else if( iReturn == -1)
    {
        sMessage = "암호화 시스템 에러입니다.";
    }    
    else if( iReturn == -2)
    {
        sMessage = "암호화 처리오류입니다.";
    }    
    else if( iReturn == -3)
    {
        sMessage = "암호화 데이터 오류입니다.";
    }    
    else if( iReturn == -9)
    {
        sMessage = "입력 데이터 오류입니다.";
    }    
    else
    {
        sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
    }
%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/join.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type='text/javascript'>
	window.name ="Parent_window";
	function fnPopup(){
		//window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		window.open('', 'popupChk', '_blank');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
</script>
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle CjoinPage subPage">
	<ol class="join-process hidden">
		<li class="on">01 본인인증</li>
		<li>02 약관동의</li>
		<li>03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>
	
	<div class="confirm-wrap">
		<h2>회원가입</h2>
		<br> 
		<span>
			<span class="f17">
				안전한 회원 가입을 위해<br>
				<span class="f17 c-308deb">본인 인증 과정</span>을 진행해 주세요<br>
				<br>
			</span>
			본인인증을 위해 입력하신 개인정보는 본인 인증 기관에서 수집하는 정보이며,<br>
			회원가입 여부 확인 및 입력 편의 제공, 본인인증 목적으로만 이용됩니다.
		</span>
		<br>
		<form name="form_chk" method="post">
			<input type="hidden" name="m" value="checkplusSerivce">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
			<input type="hidden" name="EncodeData" value="<%= sEncData %>">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
		    
			<button type="button" onclick="location.href='javascript:fnPopup();'">휴대폰인증</button>
		</form>
	</div>
	<!-- confirm-wrap -->
</div>


<!-- footer -->
<%@ include file="../common/footer.jsp"%>