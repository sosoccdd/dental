<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조은치과 - 당신의 치아를 응원합니다</title
<link rel="stylesheet" href="/semi/css/reset.css">
<link rel="stylesheet" href="/semi/css/common.css">
<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
<body>
	<header>
		<div class="w1200 middle">
			<h1><a class="logo" href="<%= request.getContextPath()%>/index.jsp">조은치과 </a></h1>
			
			<ul class="gnb fl hidden">
				<li><a href="/semi/views/SerchClinic/Cserch.jsp">병원찾기</a></li>
				<li><a href="#">가족병원</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
			
			<ul class="btn-wrap fr hidden">
				<li><button type="button" class="login-btn">로그인</button></li>
				<li><button type="button" class="join-btn">회원가입</button></li>
			</ul>
		</div>
	</header>
