<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조은치과 - 당신의 치아를 응원합니다</title>
<link rel="stylesheet" href="/semi/css/reset.css">
<link rel="stylesheet" href="/semi/css/common.css">

<script src="/semi/js/jquery-3.3.1.min.js" type="text/javascript"></script>

<body>
	<header>
		<div class="w1200 middle">
			<h1><a class="logo" href="/semi/index.jsp">조은치과 </a></h1>
			
			<ul class="gnb fl hidden">
				<li><a href="/semi/views/SerchClinic/Cserch.jsp">병원찾기</a></li>
				<li><a href="/semi/views/event/EventForm.jsp">이벤트</a></li>
				<li><a href="/semi/views/QnA/QnAForm.jsp">Q & A</a></li>
				<li><a href="/semi/views/HealthInfo/HealthView.jsp">건강정보</a></li>
			</ul>
			
			<ul class="btn-wrap fr hidden">
				<li>
					<button type="button" class="login-btn" onclick="location.href='/semi/views/member/Login.jsp'">로그인</button>
				</li>
				
				<li>
					<button type="button" class="join-btn" onclick="location.href='/semi/views/member/memberConfirm.jsp'">회원가입</button>
				</li>
			</ul>
		</div>
	</header>

