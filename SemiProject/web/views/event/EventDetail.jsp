<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/semi/css/event.css">
<style>
	.EventDetail{
		background:lightgray;
		height:80px;
		padding-top:20px;
	
	}
	.Dposition2{
		font-size:20px;
		color:orange;
		font-weight:bold;
	}
	.DHname2{
		font-size:20px;
	}
	.Dimg2{
		display:block;
	}
	.Dtitle2{
		padding-top:15px;
		padding-bottom:30px;
	}
	.DsubTitle2{
		font-size:35px;
		
	}
	.Dbutton2{
		background:white;
		border:1px solid blue;
		color:blue;\
		height:40px;
		width:130px;
		font-size:15px;
		position:left;
		float:right;
	}
	
	.Dcontent2{
		border:1px solid black;
		width:800px;
		
	}
	.Dimg2{
		width:800px;
	}
	.Dnav2{}
	
	.Drequest2{
		color:white;
		border:1px solid skyblue;
		background:skyblue;
	}
	.Dtext2{
		border:2px solid lightgray;
	}
	.conArea{
		width: 900px;
		margin-right: 60px;
	}
	.askForm{
		width: 240px;
		margin-top:50px;
	
		
	}
	.askForm li input,
	.askForm li textarea{
		width: 100%;
		padding: 10px;
		font-size: 14px;
	}
	.askForm label{
		text-align: center;
		
	}

	.Dcheck2{
		border:3px solid black;
		width:25px;
		height:25px;
		background:white;
	}
	.Dlabel2{
		font-size:18px;
	}
	

</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class = "EventDetail" style="margin-bottom:20px;">
		<ul class="w1200 middle">
			<label class = "Dposition2">[인천광역시 연수구]</label>&nbsp;&nbsp;
			<label class = "DHname2">강남 365 치과의원(송도점)</label><br>
			<label class = "Ddate2">이벤트 기간: 2018.01.31 ~ 2018.02.28 </label>
		</ul>
	</div>
		
	
		
	<div class="w1200 middle">
		<label class = "DsubTitle2">내 스타일에 맞춰 선택하는 치아교정! </label>
		<button class ="Dbutton2 btn btn-outline-primary" >이벤트 등록하기 </button>
		<div class="conArea fl">
			<img src = "../../images/event/event01-01.jpg" class = "Dimg2"/>
			<img src = "../../images/event/event01-02.jpg" class = "Dimg2"/>
			<img src = "../../images/event/event01-03.jpg" class = "Dimg2"/>
			<img src = "../../images/event/event01-04.jpg" class = "Dimg2"/>
			<img src = "../../images/event/event01-05.jpg" class = "Dimg2"/>
		</div>
		
		<div class="askForm fl">
			<ul class = "Dul">
				<li><label style = "font-size:25px;"> 병원 예약 </label></li><br>
				<li>이름 <br>
				<input type = "text" placeholder="이름을 입력하세요" class = "Dtext2"></li>
				<br>
				
				<li>연락처 <br>
				<input type = "text" placeholder="연락처를 입력하세요" class = "Dtext2"></li>
				<br>
				
				<li>연받을 시간<br>
				<input type = "text" placeholder="연락을 받을시간을 입력하세요" class = "Dtext2"></li>
				<br>
				
				<li>추가문의 <br>
				<textarea class = "Dtext2" style="resize:none;"></textarea></li>
				<br>
				
				<input type = "checkbox"id = "Dcheck2" class = "Dcheck2" value = "check">
				<label class = "Dlabel2" for = "Dcheck2"> 개인정보 취급 방침 동의 및 <br>개인정보 제 3자 동의 (필수)</label>
				
				<br><br>
				
				<li align ="center"><label style="color:skyblue;" class = "Dlabel2">* 이벤트 신청을 하시면 병원에서 <br>직접 안내전화를 드립니다. </label></li><br>
				<li align ="center"><button class = "Drequest2 btn btn-outline-primary" align ="center" onclick = "alert('예약이 완료 되었어용 ^ ~ ^ !')"> 신청하기 </li></button>
			</ul>
		</div>
	</div>


	<%@ include file="../common/footer.jsp" %>
</body>
</html>