<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/NoticeView.css">
<style>
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 8px;
}
.button2 {
	border: 2px solid #008CBA;
	background-color: #008CBA;
	color: white;
}
</style>

</head>
<body>

	<!-- header -->
	<%@ include file="../../views/common/header.jsp"%>

	<div class="w1200 middle no1">
		<label align="center" class="f20">신고하기</label>
	</div>
	
	
	<br>
	<br>
	<form id="joinForm" action="<%= request.getContextPath() %>/insertDual.mp" method="post">
	<div class="w1200 middle r3">
			<div class="middle r2 txt-ce" style="height:100px;">
				<br> <label align="center">제목</label>
				<br>
				<input type="hidden" id="userId" name="userId" value="<%= loginUser.getmId()%>">
				
				<input type="text" id="title" name="title" style="width:400px;">
				<hr>
			</div>
			
			<div class="middle r2 txt-ce">
				<br> <label align="center">내용</label>
				
				<hr>
				<textarea rows="20" cols="80" style="resize: none" id="content" name="content"></textarea>
			</div>
		</div>



	<div align="center">
		<br>
		<button class="button button2" onclick="insertOk();">작성완료</button>
		<input type="button" class="button button2" onclick="goMy();" value='돌아가기'>
		<!-- <button class="button button2" onclick="goMy();">돌아가기</button> -->
		<br>
	</div>
	</form>
		
	<script>
		function insertOk(){
			$("#joinForm").submit();
		}
		
		function goMy(){
			
			<%if(loginUser.getType().equals("N")){%>
			
			location.href="<%= request.getContextPath()%>/selectList.mp";
				
			<%}else if(loginUser.getType().equals("D")){%>
			location.href="<%= request.getContextPath()%>/views/MyPage/DMyPage.jsp";
			
			<%}%>
			
		}
			
	
	</script>



	<!-- footer -->
	<%@ include file="../../views/common/footer.jsp"%>


</body>
</html>