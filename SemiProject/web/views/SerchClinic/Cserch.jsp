<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/Cserch.css">
<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<!-- 전공분야 태그 -->
	<div class="firstbackground">
		<div class="first-div">
			<ul class="ul-tag">
				<li class="li-first li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/구강내과.png">
					</div> <span>구강내과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/구강악안면방사선.png">
					</div> <span>구강악안면<br>방사선과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/구강악안면외과.png">
					</div> <span>구강악안면외과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/구강외과.png">
					</div> <span>구강외과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/소아치과.png">
					</div> <span>소아치과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/예방치과.png">
					</div> <span>예방치과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/치아교정.png">
					</div> <span>치아교정</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/치아마취과.png">
					</div> <span>치아마취과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/치아보존.png">
					</div> <span>치아보존과</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/치아보철.png">
					</div> <span>치아보철</span>
				</li>
				<li class="li-tag">
					<div class="li-div-tag">
						<img class="img-round" alt=""
							src="../../images/SerchClinic/치주과.png">
					</div> <span>치주과</span>
				</li>
			</ul>
		</div>
	</div>

	<div>
		<div class="first-div">
			<span class="f17 span-ji">지역</span>&nbsp;&nbsp;
			<select class="select-tag f17">
				<option class="f17">서울시</option>
				<option class="f17">강원도</option>
			</select>
			<select class="select-tag f17">
				<option class="f17">고성군</option>
				<option class="f17">속초시</option>
			</select>
			<select class="select-tag f17">
				<option class="f17">용암1리</option>
				<option class="f17">천진2리</option>
			</select>

		</div>
	</div>
	
	<div>
		<div class="first-div map-tag f20">
			<img class="img-test-tag" alt="" src="../../images/SerchClinic/지도이미지.PNG">
		</div>
	</div>
	
	<div>
		<div class="first-div bluck-in">
			<img alt="" src="../../images/SerchClinic/지도포인트.png">
			<div>
			<span class="f20">강남 루덴 플러스 치과의원</span>
			<span>주소 : 서울특별시 강남구 역삼동 649-10 서림 빌딩 2층</span>
			<span>전화번호</span>
			</div>
		</div>
	
	</div>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>