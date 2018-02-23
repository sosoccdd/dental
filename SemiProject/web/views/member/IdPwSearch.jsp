<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/idPwdSearch.css">
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle idPwdSrchPage subPage">
	<div class="agree-wrap">
		<!-- tab menu -->
		<div class="tab">
			<button class="tablinks active" onclick="openTab(event, 'srchId')" id="defaultOpen">아이디찾기</button>
			<button class="tablinks" onclick="openTab(event, 'srchPwd')">비밀번호 찾기</button>
		</div>

		<!-- tabContent: 아이디찾기 -->
		<div id="srchId" class="tabcontent">
			<h3>아이디 찾기</h3>
			<span>아래의 사항을 입력하시면 회원님의 아이디를 확인하실 수 있습니다.</span>
			<form id="idSrch" action="" method="post" class="hidden">
				<ul>
					<li class="login-bg">
						<label>이름</label>
						<input type="text" placeholder="이름을 입력하세요">
					</li>
					<li class="login-bg">
						<label>핸드폰 번호</label>
						<input type="tel" placeholder="'_'를 제외하고 숫자만 입력하세요">
					</li>
				</ul>
				
				<button type="submit" class="btn-srch-id">확인</button>
				<button type="button" class="btn-srch-id-can">취소</button>
			</form>
			
			<div class="ask-for-help pl20 pt10">
				<span class="help1">치과회원이세요?</span><br>
				회원님 중 아이디/비밀번호 찾기가 어려우신 경우
				1:1문의 또는 대표전화 <span>1588-0000</span>으로 문의해 주시기 바랍니다.
			</div>
		</div>
		<!-- 아이디찾기 End -->

		<!-- tabContent: 비밀번호 찾기  -->
		<div id="srchPwd" class="tabcontent">
			<h3>비밀번호 찾기</h3>
			<span>
				아래의 사항을 입력하시면 회원님의 비밀번호를 초기화하실 수 있습니다.<br>
				<span class="c-308deb">휴대폰번호 인증</span>을 거치시면 <span class="c-308deb">즉시 비밀번호</span>를 
				<span class="c-308deb">변경</span>하실 수 있습니다.
			</span>
			<form id="pwdSrch" action="" method="post" class="hidden">
				<ul>
					<li class="login-bg">
						<label>아이디</label>
						<input type="text" placeholder="아이디를 입력하세요">
					</li>
					<li class="login-bg">
						<label>이름</label>
						<input type="text" placeholder="이름을 입력하세요">
					</li>
					<li class="login-bg certifi-btn">
						<label>핸드폰 번호</label>
						<input type="button" value="인증하기">
					</li>
				</ul>
				
				<button type="submit" class="btn-srch-pwd">확인</button>
				<button type="button" class="btn-srch-pwd-can">취소</button>
			</form>

			<form id="pwdSrch2" action="" method="post" class="hidden" style="display:none">
				<ul>
					<li class="login-bg">
						<label>아이디</label>
						<span class="c-308deb">getUserId()</span>
					</li>
					<li class="login-bg">
						<label>신규비밀번호 입력</label>
						<input type="password" placeholder="비밀번호는 영문/숫자/특수문자를 혼합하여 6자~16자 이내로 입력하실 수 있습니다.">
					</li>
					<li class="login-bg certifi-btn">
						<label>신규비밀번호 확인</label>
						<input type="password" placeholder="비밀번호를 다시 한 번 입력해주세요.">
					</li>
					<li class="pwdChk">
						<p class="united">패스워드가 일치합니다.</p>
						<p class="inconcinnity">패스워드가 일치하지 않습니다.</p>
					</li>
				</ul>
				
				<button type="submit" class="btn-srch-pwd">확인</button>
				<button type="button" class="btn-srch-pwd-can">취소</button>
			</form>
			
			<div class="ask-for-help pl20 pt10">
				<span class="help1">치과회원이세요?</span><br>
				회원님 중 아이디/비밀번호 찾기가 어려우신 경우
				1:1문의 또는 대표전화 <span>1588-0000</span>으로 문의해 주시기 바랍니다.
			</div>
		</div>
		<!-- 비밀번호 찾기 End -->

	</div>
</div>

<script>
//Tab Menu
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<!-- footer -->
<%@ include file="../common/footer.jsp"%>