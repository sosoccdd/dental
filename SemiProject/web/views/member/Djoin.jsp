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
<link rel="stylesheet" type="text/css" href="/semi/css/join.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/semi/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/semi/js/join.js"></script>
<script type="text/javascript" src="/semi/js/Njoin.js"></script>
<!-- 우편번호 찾기 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- header -->
<%@ include file="../common/header.jsp"%>
<script>

	var arr = 0;
	
	$(function(){
		
		
	});
</script>
<div class="w1200 middle CjoinPage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li>02 약관동의</li>
		<li class="on">03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>
	
	<div class="join-wrap">
		<h2>회원가입 | 의사</h2>
		
		<form id="DJoinForm" action="<%= request.getContextPath() %>/insertD.me" method="post" class="hidden" encType="multipart/form-data">
		<%-- <form action="<%=request.getContextPath()%>/insert.me" method="post" class="hidden" encType="multipart/form-data"> --%>
			<ul>
				<!-- 휴대폰인증으로 정보 받아온 영역 -->
				<li class="login-bg getData">
					<label>이름</label>
					<input type="text" value="신경배" name="mName" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>핸드폰 번호</label>
					<input type="text" value="010-4369-5555" name="phone" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>생년월일</label>
					<input type="text" value="19940226" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>성별</label>
					<% if(sGender == "0") { %>
						<input type="text" value="F" name="gender" class="c-308deb" readonly />
					<% } else { %>
						<input type="text" value="M" name="gender" class="c-308deb" readonly />
					<% } %>
				</li>
				
				<!-- 입력정보 영역 -->
				<li class="login-bg short-input">
					<label class="must">아이디</label>
					<input type="text" name="mId" id="mId" placeholder="아이디를 입력하세요" onkeyup="regId()">
					<button type="button" id="idCheck" class="chkId-overlap">중복확인</button>
				</li>
				<li class="idChk"></li>
				<li class="login-bg">
					<label class="must">비밀번호</label>
					<input type="password" id="pwd" name="mPwd" placeholder="비밀번호를 입력하세요" onkeyup="regPwd()">
				</li>
				<li class="login-bg">
					<label class="must">비밀번호 확인</label>
					<input type="password" id="pwd2" name="mPwd2" placeholder="비밀번호를 다시 한 번 입력하세요">
				</li>
				<li class="pwdChk"></li>
				<li class="login-bg short-input">
					<label>우편번호</label>
					<input type="text" placeholder="우편번호를 검색하세요" id="postCode">
					<button type="button" class="zip-code" id="zipCode" onclick="execDaumPostCode()">주소검색</button>
				</li>
				<li class="login-bg hidden">
					<label>주소</label>
					<input type="text" id="address" name="address" placeholder="주소를 입력해주세요">
				</li>
				<li class="login-bg">
					<label></label>
					<input type="text" id="detailAddress" name="address2" placeholder="상세 주소를 입력해주세요">
				</li>
				
				<li class="login-bg">
					<label class="must">의사면허번호</label>
					<input type="number" placeholder="의사 인증을 위해 수집하는 정보이며 의사 진위 여부 확인 및 인증 목적으로만 이용됩니다." name="licence">
						<p style="text-indent:120px">
							- 허위 사실 발각 시 의사면허 자격정지 처분 또는 의사면허 자격취소 등 법적 절차에 따라 처벌 받을 수 있습니다.
						</p>
				</li>
				<li class="other-bg">
					<label class="must">전문분야</label>
					
					<!-- 전문분야 체크박스 -->
					<div class="chkbox-wrap">
						<input type="radio" id="field1" name="field" value="10" />
						<label for="field1">구강내과</label>
						
						<input type="radio" id="field2" name="field" value="20" />
						<label for="field2">구강악안면 방사선과</label>
						
						<input type="radio" id="field3" name="field" value="30" />
						<label for="field3">구강악악면외과</label>
						
						<input type="radio" id="field4" name="field" value="40" />
						<label for="field4">구강외과</label>
						<br>
						<br>
						
						<input type="radio" id="field5" name="field" value="50" />
						<label for="field5">소아치과</label>
						
						<input type="radio" id="field6" name="field" value="60" />
						<label for="field6">예방치과</label>
						
						<input type="radio" id="field7" name="field" value="70" />
						<label for="field7">치아교정</label>
						
						<input type="radio" id="field8" name="field" value="80" />
						<label for="field8">치아마취과</label>
						<br>
						<br>
						
						<input type="radio" id="field9" name="field" value="90" />
						<label for="field9">치아보존과</label>
						
						<input type=radio id="field10" name="field" value="100" />
						<label for="field10">치아보철</label>
						
						<input type="radio" id="field11" name="field" value="110" />
						<label for="field11">치주과</label>
					</div>
					<!-- chkbox-wrap -->
				</li>
				
				<li class="login-bg">
					<label>경력사항</label>
					<input type="text" id="career" placeholder="학력 및 경력사항을 입력해주세요.">
					<button type="button" class="add-btn" id="careerBtn" onclick="addCareer()">추가</button>
				</li>
				<li><div id="careerList" class="careerList"></div></li>
				
				
				
				<li class="form-group form_file">
					<label>프로필 사진</label>
					<div class="filebox bs3-primary preview-image">
						<input class="upload-name" value="파일선택" disabled="disabled" style="width: 250px;">
					
						<label for="input_file">업로드</label> 
						<input type="file" id="input_file" class="upload-hidden" name="mFile"> 
						<br>
						<p class="mt10">
							- 5MB 미만의 파일만 등록할 수 있습니다.<br>
							- 이미지 도용할 경우 법적 절차에 따라 처벌 받을 수 있습니다.<br>
							- 프로필 사진은 비율에 따라 줄어들어 이미지가 변형될 수 있으니 정사각형 사이즈를 권장합니다.
						</p>
					</div>

				</li>
			</ul>
			
			<button type="submit" class="join-member">확인</button>
			<button type="reset" class="join-can">취소하기</button>
		</form>
	</div>
</div>
<!-- DjoinPage -->


<script type="text/javascript">
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function execDaumPostCode() {
	var width = 500; //팝업의 너비
	var height = 600; //팝업의 높이
	
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = data.address; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 기본 주소가 도로명 타입일때 조합한다.
            if(data.addressType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }


            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('address').value = fullAddr;
            document.getElementById('detailAddress').focus();

        }
    }).open({
        left: ((window.screen.width - width) / 2),
        top: ((window.screen.height - height) / 2)
    });
}
</script>

<!-- footer -->
<%@ include file="../common/footer.jsp"%>