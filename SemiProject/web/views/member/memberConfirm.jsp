<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/join.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
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
		<button type="button">휴대폰인증</button>
	</div>
	<!-- confirm-wrap -->
</div>

<!-- footer -->
<%@ include file="../common/footer.jsp"%>