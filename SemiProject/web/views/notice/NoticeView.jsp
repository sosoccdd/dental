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
	<%@ include file="../../views/common/header.jsp" %>

	<div class="w1200 middle no1">
		<label align="center" class="f20">공지사항</label>
	</div>
	<br><br>
	
	<div class="w1200 middle r3">
		<div class="no11">
			<table class="r1" align="center">
				<tr>
					<td colspan="2">제목 : <label class="d1">[점검] 1월 28일 점검입니다. 점검내용 확인하세요</label></td>
					<td>작성자 : <label>관리자</label></td>
				</tr>
				<tr>
					<td>날짜 : <label>2018-02-23</label></td>
					<td></td>
					<td>조회수 : <label>200</label></td>
					<td></td>
				</tr>
			</table>
			
			<div class="middle r2 txt-ce">
				<br>
				<label align="center">내용</label>
				<hr>
				<div class="r4">
				<br>
					<p>안녕하세요.
 운영팀입니다.
 
 
2월 14일 ~ 2월 15일 서버 불안정 현상이 확인되었으며,
이용에 불편을 드린 점 사과의 말씀 드립니다.
 
서버 불안정 현상이 확인 될 경우 유관 부서 및 각 담당자가
면밀한 확인 작업을 진행하고 있으며, 2월 14일 ~ 2월 15일 발생한 현상에 
대하여서도 확인 후 조치가 완료된 상태입니다.
 
문제 확인 시 빠르게 처리 및 개선될 수 있도록 노력하고 있으며,
안내가 늦어진 점 대단히 죄송합니다.
 
서버 불안정 현상으로 불편을 겪으신 고객님들께 진심으로 사과 말씀 드리며,
안정된 서버 환경 제공을 위하여 최선을 다하겠습니다.
 
차후 유사한 문제가 확인될 시
가급적 빠르게 상황에 대한 안내 및 조치가 진행될 수 있도록 노력하겠습니다.
 
감사합니다.</p>				
				
				</div>
			</div>
		</div>
		
		
	</div>
	
	<div align="center">
	<br>
			<button class="button button2">돌아가기</button>
		<br>
		</div>
	
	
	








	
	<!-- footer -->
	<%@ include file="../../views/common/footer.jsp" %>


</body>
</html>