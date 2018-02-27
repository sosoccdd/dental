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
		<li>03 상세정보입력</li>
		<li class="on">04 가입완료</li>
	</ol>

	<div class="join-wrap success-join">
		<h2>회원가입이 완료되었습니다</h2>
		<br><br>
		<p>
			가입하신 <span class="f16 c-308deb">'아이디'</span>와 <span class="f16 c-308deb">'비밀번호'</span>로
			로그인이 가능합니다.
		</p>
		<!-- <p>24시간 이내 담당자 확인 후  고객님께서 남겨주신 연락처로 연락 드리겠습니다.</p> -->
		
		<button type="button" onclick="location.href='/semi/views/member/Login.jsp'">로그인</button>
		<button type="button" onclick="location.href='/semi/index.jsp'">메인 화면으로</button>
					
	
	</div>
</div>
<!-- agreePage -->



<!-- footer -->
<%@ include file="../common/footer.jsp"%>