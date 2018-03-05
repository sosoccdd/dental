<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/semi/css/operate.css">
<!-- header -->
<%@ include file="../common/header.jsp"%>


<div class="w1200 middle hidden">
	<!-- left Nav -->
	<div class="leftBox">
		<div class="left-visi">
			운영방침<br>
			<span>Great Dental</span>
		</div>
		<!-- left-visi -->
		
		<ul class="lnb">
			<li onclick="location.href='/semi/views/common/privacy.jsp'">개인정보취급방침</li>
			<li class="here"  onclick="location.href='/semi/views/common/service.jsp'">비보험 진료비 수가표</li>
			<li onclick="location.href='/semi/views/common/privilege.jsp'">환자의 권리와 의무</li>
		</ul>
	</div>
	<!-- leftBox -->
	
	<div class="contentArea">
		<h3>개인정보취급방침</h3>
		<p>조치홈페이지 이용과 관련한 개인정보취급방침을 안내 드립니다.</p>
		
		<img src="/semi/images/service/wp-content.png">
	</div>
	<!-- contentArea -->
</div>


<!-- footer -->
<%@ include file="../common/footer.jsp"%>