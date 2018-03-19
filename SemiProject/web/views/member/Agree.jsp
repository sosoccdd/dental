<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%	//인증 후 결과값이 null로 나오는 부분은 관리담당자에게 문의 바랍니다.
    NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();

    String sEncodeData = requestReplace(request.getParameter("EncodeData"), "encodeData");

    String sSiteCode = "BF502";				// NICE로부터 부여받은 사이트 코드
    String sSitePassword = "GAqEkFJnpyG8";			// NICE로부터 부여받은 사이트 패스워드

    String sCipherTime = "";			// 복호화한 시간
    String sRequestNumber = "";			// 요청 번호
    String sResponseNumber = "";		// 인증 고유번호
    String sAuthType = "";				// 인증 수단
    String sName = "";					// 성명
    String sDupInfo = "";				// 중복가입 확인값 (DI_64 byte)
    String sConnInfo = "";				// 연계정보 확인값 (CI_88 byte)
    String sBirthDate = "";				// 생년월일(YYYYMMDD)
    String sGender = "";				// 성별
    String sNationalInfo = "";			// 내/외국인정보 (개발가이드 참조)
	String sMobileNo = "";				// 휴대폰번호
	String sMobileCo = "";				// 통신사
    String sMessage = "";
    String sPlainData = "";
    
    int iReturn = niceCheck.fnDecode(sSiteCode, sSitePassword, sEncodeData);

    if( iReturn == 0 )
    {
        sPlainData = niceCheck.getPlainData();
        sCipherTime = niceCheck.getCipherDateTime();
        
        // 데이타를 추출합니다.
        java.util.HashMap mapresult = niceCheck.fnParse(sPlainData);
        
        sRequestNumber  = (String)mapresult.get("REQ_SEQ");
        sResponseNumber = (String)mapresult.get("RES_SEQ");
        sAuthType		= (String)mapresult.get("AUTH_TYPE");
        sName			= (String)mapresult.get("NAME");
		//sName			= (String)mapresult.get("UTF8_NAME"); //charset utf8 사용시 주석 해제 후 사용
        sBirthDate		= (String)mapresult.get("BIRTHDATE");
        sGender			= (String)mapresult.get("GENDER");
        sNationalInfo  	= (String)mapresult.get("NATIONALINFO");
        sDupInfo		= (String)mapresult.get("DI");
        sConnInfo		= (String)mapresult.get("CI");
        sMobileNo		= (String)mapresult.get("MOBILE_NO");
        sMobileCo		= (String)mapresult.get("MOBILE_CO");
        
        String session_sRequestNumber = (String)session.getAttribute("REQ_SEQ");
        if(!sRequestNumber.equals(session_sRequestNumber))
        {
            sMessage = "세션값이 다릅니다. 올바른 경로로 접근하시기 바랍니다.";
            sResponseNumber = "";
            sAuthType = "";
        }
    }
    else if( iReturn == -1)
    {
        sMessage = "복호화 시스템 에러입니다.";
    }    
    else if( iReturn == -4)
    {
        sMessage = "복호화 처리오류입니다.";
    }    
    else if( iReturn == -5)
    {
        sMessage = "복호화 해쉬 오류입니다.";
    }    
    else if( iReturn == -6)
    {
        sMessage = "복호화 데이터 오류입니다.";
    }    
    else if( iReturn == -9)
    {
        sMessage = "입력 데이터 오류입니다.";
    }    
    else if( iReturn == -12)
    {
        sMessage = "사이트 패스워드 오류입니다.";
    }    
    else
    {
        sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
    }

%>
<%!

	public String requestReplace (String paramValue, String gubun) {

        String result = "";
        
        if (paramValue != null) {
        	
        	paramValue = paramValue.replaceAll("<", "&lt;").replaceAll(">", "&gt;");

        	paramValue = paramValue.replaceAll("\\*", "");
        	paramValue = paramValue.replaceAll("\\?", "");
        	paramValue = paramValue.replaceAll("\\[", "");
        	paramValue = paramValue.replaceAll("\\{", "");
        	paramValue = paramValue.replaceAll("\\(", "");
        	paramValue = paramValue.replaceAll("\\)", "");
        	paramValue = paramValue.replaceAll("\\^", "");
        	paramValue = paramValue.replaceAll("\\$", "");
        	paramValue = paramValue.replaceAll("'", "");
        	paramValue = paramValue.replaceAll("@", "");
        	paramValue = paramValue.replaceAll("%", "");
        	paramValue = paramValue.replaceAll(";", "");
        	paramValue = paramValue.replaceAll(":", "");
        	paramValue = paramValue.replaceAll("-", "");
        	paramValue = paramValue.replaceAll("#", "");
        	paramValue = paramValue.replaceAll("--", "");
        	paramValue = paramValue.replaceAll("-", "");
        	paramValue = paramValue.replaceAll(",", "");
        	
        	if(gubun != "encodeData"){
        		paramValue = paramValue.replaceAll("\\+", "");
        		paramValue = paramValue.replaceAll("/", "");
            paramValue = paramValue.replaceAll("=", "");
        	}
        	
        	result = paramValue;
            
        }
        return result;
  }
%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/semi/css/agree.css">
<script type="text/javascript" src="/semi/js/jquery-3.3.1.min.js"></script>
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle agreePage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li class="on">02 약관동의</li>
		<li>03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>
	
	<div class="agree-wrap">
		<h2>회원가입 약관 동의</h2>
		
		<form action="<%= request.getContextPath() %>/agree.me" method="post" id="agreeJoin1">
		
		<div class="terms_p">
			<p class="terms_chk_all">
				<span class="input_chk"> 
				
					<input type="checkbox" id="chk_all" onclick="" class=""> 
					<label id="chk_allLb" for="chk_all" class="">
						이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), <br>
						프로모션 안내 메일 수신(선택)에 모두 동의합니다.
					</label>
				</span>
			</p>
			
			<ul class="terms_bx_list">
				<!-- 이용약관 -->
				<li class="terms_bx terms_service">
					<span class="input_chk"> 
						<input type="checkbox" id="termsService" onclick="" class=""> 
						<label id="termsServiceLb" for="termsService" class="">
							조치 이용약관 동의 <span class="terms_choice">(필수)</span>
						</label>
					</span>
					
					<div class="terms_box" id="divTerm">
						<%@ include file="join/service.jsp" %>
					</div>
				</li>
				
				<!-- 개인정보 수집  -->
				<li class="terms_bx terms_privacy">
					<span class="input_chk"> 
						<input type="checkbox" id="termsPrivacy" onclick="" class=""> 
						<label id="termsPrivacyLb" for="termsPrivacy" class="">
							개인정보 수집 및 이용에 대한 안내 <span class="terms_choice">(필수)</span>
						</label>
					</span>
					
					<div class="terms_box" id="divTerm">
						<%@ include file="join/privacy.jsp" %>
					</div>
				</li>
				
				<!-- 위치정보 이용약관 동의 -->
				<li class="terms_bx terms_location">
					<span class="input_chk"> 
						<input type="checkbox" id="termsLocation" onclick="" class=""> 
						<label id="termsLocationLb" for="termsLocation" class="">
							위치정보 이용약관 동의 <span class="terms_no">(선택)</span>
						</label>
					</span>
					
					<div class="terms_box" id="divTerm">
						<%@ include file="join/location.jsp" %>
					</div>
				</li>
				
				<!-- 이벤트 등 프로모션 알림 메일 수신 동의 -->
				<li class="terms_bx terms_event">
					<span class="input_chk"> 
						<input type="checkbox" id="termsEvent" onclick="" class=""> 
						<label id="termsEventLb" for="termsEvent" class="">
							이벤트 등 프로모션 알림 메일 수신<span class="terms_no">(선택)</span>
						</label>
					</span>
				</li>
			</ul>
			
			<!-- 회원선택 -->
			<div class="choice_mem txt-ce">
				<span class="f16">회원 유형에 따라 가입 절차에 차이가 있으니 일반회원 또는 의사회원을 선택해주세요</span>
				<br><br>
				<!-- 일반  -->
				<input type="radio" id="ch_mem_normal" name="chs_mem" value="N">
				<label for="ch_mem_normal" class="ch_mem_normal">일반회원</label>
				
				<!-- 의사 -->
				<input type="radio" id="ch_mem_dentist" name="chs_mem" value="D">
				<label for="ch_mem_dentist">의사회원</label>
			</div>
			<!-- choice -->
			<input type="hidden" value="<%= sName %>" name="sName">
			<input type="hidden" value="<%= sBirthDate %>" name="sBirthDate">
			<input type="hidden" value="<%= sGender %>" name="sGender">
			<input type="hidden" value="<%= sMobileNo %>" name="sMobileNo">
		</div>
		<!-- terms_p -->
			<button type="button" onclick="location.href='/semi/index.jsp'" class="agree-btn disagree">비동의</button>
			<button type="submit" class="agree-btn agree-join-btn" >동의</button>
		</form>
		
		<br>
		<p class="goHosJoin">치과에서 사용할 ID가 필요하세요? <a href="#">치과 병원 가입</a></p>
	</div>
</div>
<!-- agreePage -->






<script type="text/javascript">
	//체크박스 전체 선택
	$(function(){
 		$("#chk_all").click(function(){
			if($("#chk_all").prop("checked")){
				$(".terms_bx input[type=checkbox]").prop("checked", true);
			} else {
				$(".terms_bx input[type=checkbox]").prop("checked", false);
			}
		})
	});

</script>
<script type="text/javascript">

//체크박스 체크여부 확인
function CheckForm(Join){
	
	var chk1 = $("#termsService").is(":checked");
	var chk2 = $("#termsPrivacy").is(":checked");
	var memType = $("input:radio[name='chs_mem']:checked").val();
	
	if(!chk1){
        alert('조치 이용약관에 대한 안내에 동의해주세요.');
        return false;
    } else if(!chk2){
    	alert('조치 개인정보 수집 및 이용에 대한 안내에 동의해주세요.');
    	return false;
    } 

	//회원 종류 선택 여부
    if(memType == null){ 
    	alert('회원 유형에 따라 가입 절차에 차이가 있으니 반드시 일반회원 또는 의사회원을 선택해주세요 ');
    }
    
	/* if(chk1 && chk2 && memType == "N"){
		location.href="/semi/views/member/Njoin.jsp";
	} else if(chk1 && chk2 && memType == "D"){
		location.href="/semi/views/member/Djoin.jsp";
	} */
	
	return false;
}
</script>


<!-- footer -->
<%@ include file="../common/footer.jsp"%>