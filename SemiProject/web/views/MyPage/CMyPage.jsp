<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/semi/css/event.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>/
<style>
	.CHeader2{
		background:#2f6bad;
		color: white;
		height:160px;
		
	}
	body {font-family: Arial;}
	
	/* Style the tab */
	.tab {
	    overflow: hidden;
	    border: 1px solid #ccc;
	    background-color: #f1f1f1;
	}
	
	/* Style the buttons inside the tab */
	.tab button {
	    background-color: inherit;
	    float: left;
	    border: none;
	    outline: none;
	    cursor: pointer;
	    padding: 14px 16px;
	    transition: 0.3s;
	    font-size: 17px;
	}
	
	/* Change background color of buttons on hover */
	.tab button:hover {
	    background-color: #ddd;
	}
	
	/* Create an active/current tablink class */
	.tab button.active {
	    background-color: #ccc;
	}
	
	/* Style the tab content */
	.tabcontent {
	    display: none;
	    padding: 6px 12px;
	
	    border-top: none;
	}
	.tablinks{
		width:290px;
	}
	.Register{
	margin-left:20px;
	}
	.Ctotal2{
		height:600px;
		background:#f1f1f1;
	}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<div class ="w1200 middle CHeader2">
		<div class = "fl">
			<img src = "../../images/common/tooth2.png" class = "CMsubtitle" style ="width:100px;height:100px;">
			<label class = "CMname"> 서은별 님</label>
		</div>
		
		<div class = "fl">
			<i class="fa fa-calendar"></i>
			접수현황
			
		</div>
		
		<div class = "fl">
			<i class="fa fa-pencil"></i>
			병원후기
				
		</div>
		
		<div class = "fl">
			<i class="fa fa-question"></i>
			문의내역
			
		</div>
	</div>
	
	<br><br><br>
	<div class = "Ctotal2 w1200 middle">	
		<div class="tab w1200 middle">
		  <button class="tablinks Register" onclick="openCity(event, 'Register')"> 접수현황 </button>
		  <button class="tablinks" onclick="openCity(event, 'Review')"> 병원후기 </button>
		  <button class="tablinks" onclick="openCity(event, 'Inquiry')"> 1:1 문의 </button>
		  <button class="tablinks" onclick="openCity(event, 'Information')"> 개인정보 </button>
		</div>
		
		<div id="Register" class="tabcontent w1200 middle" align = "center">
		 <%-- <% if(){ %> --%> <!-- 접수 현황이 null이 아닐때  -->
		 	<div class = "fl">
		 		<label> 접수 현황 </label>
		 		<hr>
		 		<label> 병원 도착 시 꼭 접수실에 알려주세요</label>
		 		<br>
		 			<div>
		 				<label class = "fl">대기<br>인원 </label>
		 				<label style="font-size:20px; color:blue;"> 001 <%  %></label> <!-- 대기인원을 알려주는 칸  -->
		 			</div><br>
		 			
		 		<label> 진료 순서가 지나면 다시 접수를 하셔야 합니다. <br> 시간 내 방문이 어려운 경우, 병원에 미리 연락 부탁드립니다.</label>
		 		<hr>
		 		
		 		<div class = "fl" align = "left">
		 			<label>병원명</label><br>
		 			<label>예약자</label><br>
		 			<label>예약일</label><br>
		 			<label>담당의</label>
		 		</div>
		 	
		 		
		 		<div class ="" align = "right">
		 			<% %><!-- 병원명 -->
		 			<% %><!-- 예약자 -->
		 			<% %><!-- 예약일 -->
		 			<% %><!-- 원장 명 -->
		 			
		 			<label> 아삭 치과 의원</label><br>
		 			<label> 서은별</label><br>
		 			<label> 2018-02-26 (월) 13:21</label><br>
		 			<label> 김지현 원장</label>
		 		</div>
		 		
		 		<hr>
		 		
		 		<div>
		 			<label> 예약 변경 </label>&nbsp;&nbsp;
		 			<label> 예약 취소 </label>
		 		</div>
		 		
		 	</div>
		 		<div class="container fl" style="width:850px;">
					  <h4>지난 접수 내역</h4>
					
					  <table class="table">
					    <thead>
					      <tr>
					        <th style = "width:100px;">병원명</th>
					        <th style = "width:160px;">예약일자</th>
					        <th style = "width:80px;">예약시간</th>
					        <th style = "width:120px;">담당의</th>
					        <th>비고</th>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					        
					      </tr>      
					      <tr class="table-primary">
					        <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-success">
					        <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-danger">
					       <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-info">
					        <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-warning">
					        <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-active">
					        <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-secondary">
					      <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-light">
					      	 <td>아삭치과의원</td>
					        <td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					      <tr class="table-dark text-dark">
					    	 <td>아삭치과의원</td>
					      	<td>2018-02-26(월)</td>
					        <td>13:20</td>
					        <td>김지현 원장</td>
					      </tr>
					    </tbody>
					  </table>
					  
					  <div>
					  	<button><</button>
					  	<button>1</button>
					  	<button>2</button>
					  	<button>3</button>
					  	<button>4</button>
					  	<button>5</button>
					  	<button>></button>
					  </div>
				</div>
		 	<div>
		 	
		 	</div>
		 
		 <%-- <% }else{ %> --%><!-- 접수가 없을떄  --> 
		 	<!-- <img src = "../../images/mypage/magnifier2.png">
		 	<p> 접수한 내역이 없습니다.</p> -->
		 <%-- <% } %> --%>
		</div>
		
			<div id="Review" class="tabcontent">
			  <h3>Paris</h3>
			  <p>Paris is the capital of France.</p> 
			</div>
			
			<div id="Information" class="tabcontent">
			  <h3>Tokyo</h3>
			  <p>Tokyo is the capital of Japan.</p>
			</div>
	</div>
	<script>
	function openCity(evt, cityName) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	    document.getElementById(cityName).style.display = "block";
	    evt.currentTarget.className += " active";
	}
	</script>
	
		

	
	<%@ include file="../common/footer.jsp"%>
</body>
</html>