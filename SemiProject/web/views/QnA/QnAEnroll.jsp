<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/QnAEnroll.css">
</head>
<body>
	
	<%@ include file="../common/header.jsp" %>
	
	<div class="sub-bg">
 		<p>Q&A 등록하기</p>
	</div>
	
	<div class="enroll-wrap w1200  middle">
	<form action="<%=request.getContextPath()%>/InsertQnAServlet" method="post" encType="multipart/form-data">
		
		<div class="title-wrap">
			<span >질문 제목:</span><input cols="50" class="textcl" rows="1" name="title">
		
		</div>
		
		<div class="content-wrap">
			<span >질문 내용:</span><textarea cols="50" rows="10" name="content"></textarea>
			
		</div>
		
		<div class="add-wrap">
		
			<span>첨부파일:</span><input type="file" class="find-btn" name="file"s>파일찾기</button>
		</div>
	
		<button class="enroll-btn" type="submit">등록하기</button>
		</form>
	</div>
	
	
	
	   <%@ include file="../common/footer.jsp" %>


</body>
</html>