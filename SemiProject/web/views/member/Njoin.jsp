<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Member joinUser = (Member)request.getSession().getAttribute("joinUser");
%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/semi/css/join.css">
<script type="text/javascript" src="/semi/js/jquery-3.3.1.min.js"></script>
<!-- 우편번호 찾기 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript" src="/semi/js/regex.js"></script>

<!-- header -->
<%@ include file="../../views/common/header.jsp"%>

<div class="w1200 middle CjoinPage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li>02 약관동의</li>
		<li class="on">03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>
	
	<div class="join-wrap">
		<h2>회원가입 | 일반</h2>
		
		<form id="NJoinForm" action="<%= request.getContextPath() %>/insertN.me" method="post" class="hidden" onsubmit="return validate()">
			<ul>
				<!-- 휴대폰인증으로 정보 받아온 영역 -->
				<li class="login-bg getData">
					<label>이름</label>
					<input type="text" value="<%= joinUser.getmName() %>" name="mName" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>핸드폰 번호</label>
					<input type="text" value="<%= joinUser.getPhone() %>" name="phone" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>성별</label>
					<% if(joinUser.getGender() == "0") { %>
						<input type="text" value="M" name="gender" class="c-308deb" readonly />
					<% } else { %>
						<input type="text" value="F" name="gender" class="c-308deb" readonly />
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
			</ul>
			
			<!-- 다음 우편주소 검색 -->
			<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
				<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
			</div>	
				
			<button type="submit" id="joinBtn" class="join-member">확인</button>
			<button type="reset" class="join-can">취소하기</button>
		</form>
		
	</div>
</div>
<!-- agreePage -->

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