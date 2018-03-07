<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/join.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle CjoinPage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li>02 약관동의</li>
		<li class="on">03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>
	
	<div class="join-wrap">
		<h2>회원가입 | 일반</h2>
		
		<form id="NJoinForm" action="<%= request.getContextPath() %>/insertNMember.me" method="post" class="hidden">
			<ul>
				<!-- 휴대폰인증으로 정보 받아온 영역 -->
				<li class="login-bg getData">
					<label>이름</label>
					<input type="text" value="getUserId()" name="mName" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>핸드폰 번호</label>
					<input type="text" value="getPhone()" name="mPhone" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>생년월일</label>
					<input type="text" value="getBirthday()" class="c-308deb" readonly />
				</li>
				<li class="login-bg getData">
					<label>성별</label>
					<input type="text" value="getGender()" name="mGender" class="c-308deb" readonly />
				</li>
				
				<!-- 입력정보 영역 -->
				<li class="login-bg short-input">
					<label class="must">아이디</label>
					<input type="text" name="mId" placeholder="아이디를 입력하세요">
					<button type="button" id="idCheck" class="chkId-overlap">중복확인</button>
				</li>
				<li class="idChk">
					<p class="united">사용할 수 있는 아이디 입니다.</p>
					<p class="inconcinnity">아이디가 중복됩니다.</p>
				</li>
				<li class="login-bg">
					<label class="must">비밀번호</label>
					<input type="password" name="mPwd" placeholder="비밀번호를 입력하세요">
				</li>
				<li class="login-bg">
					<label class="must">비밀번호 확인</label>
					<input type="password" name="mPwd2" placeholder="비밀번호를 다시 한 번 입력하세요">
				</li>
				<li class="pwdChk">
					<p class="united">패스워드가 일치합니다.</p>
					<p class="inconcinnity">패스워드가 일치하지 않습니다.</p>
				</li>
				<li class="login-bg short-input">
					<label>우편번호</label>
					<input type="text" placeholder="우편번호를 검색하세요">
					<button type="button" class="zip-code" id="zipCode">주소검색</button>
				</li>
				<li class="login-bg hidden">
					<label>주소</label>
					<input type="password" name="mAddr" placeholder="주소를 적어주세요">
				</li>
			</ul>
					
			<button type="submit" id="joinBtn" onclick="" class="join-member">확인</button>
			<button type="reset" class="join-can">취소하기</button>
		</form>
	</div>
</div>
<!-- agreePage -->



<!-- footer -->
<%@ include file="../common/footer.jsp"%>