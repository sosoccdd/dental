<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.kh.dental.mypage.model.vo.*"%>
<% 
	 ArrayList<Dual> list = (ArrayList<Dual>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.Information{
	display: block;
}
</style>
<link rel="stylesheet" href="/semi/css/event.css">
<link rel="stylesheet" href="/semi/css/common.css">
<link rel="stylesheet" href="/semi/css/DMyPage.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<style>
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div class="w1200" style="margin-left:auto; margin-right:auto;">
	<div class="w1200 middle CHeader2 hidden">
		<div class="fl">
			<img src="/semi/images/common/tooth2.png" class="CMsubtitle">
		</div>
		<div class="fl">
			<label class="CMname"><%= loginUser.getmName() %></label>
			<!-- 이름값 받아오기 -->
		</div>

		<div class="CMfirstdiv fl">
			<i class="fa fa-calendar"></i>&nbsp; 조치포인트
			<p><%=loginUser.getBid_count() %></p>
		</div>
		<div class="CMfirstdiv fl">
			<i class="fa fa-question"></i>&nbsp; 문의내역
			<p><%=listCount %></p>
		</div>
	</div>
	</div>


	<div class="Ctotal2 w1200 middle">
		<div class="tab w1200 middle">

			<button class=" tablinks Information active" onclick="openCity(event, 'Information')"> 
				신고하기</button>
			<button class=" tablinks" onclick="openCity(event, 'Inquiry')">
				개인정보</button>
				</div>


		<div id="Inquiry" class="tabcontent CMRreview">
		
		<div id="pass-wrap" class="pass-wrap">
				<pre>안전한 개인정보 관리를 위하여 비밀번호를 다시 입력해주세요.
의사정보 변경의 일부분은 관리자 승인을 통해 바꿀 수 있습니다.</pre>
				<br> <img src="/semi/images/QnA/lock.png"> <br>
				<input class="pass-text" placeholder="비밀번호를 입력해주세요." style="width:400px;">
				<br><br>
				<button id="pass-check" class="pass-check">확인</button>
			</div>
		
			<!-- 개인정보탭 -->		
			
			<div  id="default-wrap" class="default-wrap" style="display:block;">
			
			<img src="/semi/images/dentist/dentist03.jpg" class="self-photo">
			
			<div class="inner-wrap1" id="inner-wrap1">
			<p class="default-title">기본설정</p>
			<hr>
			<span class="title">이메일</span><span class="content"><%=loginUser.getType() %></span>
			<hr>
			<span class="title">이름</span><span class="content"><%=loginUser.getmName() %></span>
			<hr>
			<span class="title">전화번호</span><span class="content"><%=loginUser.getPhone() %></span>
			<hr>
			<span class="title">의사면허번호</span><span class="content">A1823B2010</span><span  class="check-text1">인증완료</span>
			<hr>
			<span class="title">전문분야</span><span class="content">보철 치주 임플란트 양악</span><span  class="check-text3">인증완료</span>
			<hr>
			<span class="title">경력사항</span><span class="content">미국 하버드대 졸업</span><img id="change-btn2" class="change-btn uchange-btn" src="/semi/images/mypage/bottom-direction.png">
			<span class="exp-wrap" id="tog2">
			<hr>
			<span id="exp-content" class="exp-content">미국 하버드대학 보철과 수료</span>
			<hr>
			<span id="exp-content" class="exp-content">미국 보철과학과정 수료</span>
			<hr>
			<span id="exp-content" class="exp-content">인공치아 생성 성공</span>
			</span>
			
			
			</div>
			
			<div class="inner-wrap2" id="inner-wrap2">
			<p class="default-title">회원설정</p>
			<hr>
			<span class="notify">병원주소, 전문분야, 경력사항을 바꾸려면 승인을 거쳐야 합니다.</span><span class="check-wrap"><span class="check-text4">인증중</span><button class="check-btn">1:1문의로연결</button></span>
			<hr>
			<span class="title">비밀번호변경</span><img id="change-btn" class="change-btn" src="/semi/images/mypage/bottom-direction.png">
			<span id="tog" class="tog">
			<hr>
			<span class="title">현재비밀번호</span>
			<input type="hidden" value="<%= loginUser.getmId()%>" id="userId">
			<input class="change-area" placeholder="현재비밀번호 입력하세요" id="pwd1" value="<%=loginUser.getmPwd()%>">
			<hr>
			<span class="title">새 비밀번호</span>
			<input class="change-area" placeholder="새로운 비밀번호를 입력하세요" id="pwd2">
			<hr>
			<span class="title">비밀번호 확인</span>
			<input class="change-area" placeholder="새로운 비밀번호를 입력하세요" id="pwd3">
			</span>
			
			
			</div>
			
				<!--  클릭할 시 나오게 하는 jquery
	            다른 탭을 클릭시 원상복귀 -->		
	<script>
	
		$(function(){
			
			 $("#default-wrap").hide(); 
			$("#pass-check").click(function(){
				
				$("#pass-wrap").hide();
				$("#default-wrap").show();
				$(".Ctotal2").css("height","1000px");
			});
			
			$(".tablinks").click(function(){
				
				$(".Ctotal2").css("height","700px");
				$("#pass-wrap").show();
				$("#default-wrap").hide();
			});
			
		});
	</script>
			
			
		<button class="withdraw-btn" id="updatePwd">비밀번호 변경</button>
		<button class="withdraw-btn">회원탈퇴</button>
			
		</div>
		
		<script>
				$("#updatePwd").click(function(){
					
					console.log("비밀번호변경?");
					
					var pwd2 = $("#pwd2").val();
					var pwd3 = $("#pwd3").val();
					var userId = $("#userId").val();
					
					console.log(pwd2 + userId);
					if(pwd2 === pwd3){
						
						$.ajax({
							url:"/semi/updatePwd.me",
							type:"post",
							data:{pwd:pwd2, userId:userId},
							success:function(data){
								alert("변경완료!");
								location.href="/semi";
							},
							error:function(data){
								alert("비밀번호 변경 실패!");								
								
							}
						});
						
					}else{
						alert("비밀번호 변경실패!");
					}
				});
			
			</script>
		
		
		
		<script>
		
		$(function(){
			
			var num = ($("#tog2 span").length*40)+410;
			console.log(num);
			$("#tog").hide();
			$("#tog2").hide();
			console.log($("#tog").hide);
			var height1 = $(".Ctotal2").height();
					 
			$("#change-btn").click(function(){
				
			var status1 =$("#tog").css("display");
			var status2 =$("#tog2").css("display");
			
				
				if(status1=="none"){
					$("#tog").show();
					$(".Ctotal2").css("height","1400px");
					$(".withdraw-btn").css("margin-top","300px");
				}else{
					
					if(status2 !="none"){
						
						$("#tog").hide();
						$(".withdraw-btn").css("margin-top","60px");
					}else{
						
						$("#tog").hide();
						$(".Ctotal2").css("height","1000px");

						$(".withdraw-btn").css("margin-top","60px");
					}
					
				}
			});
			
			$("#change-btn2").click(function(){
				
				var status1 =$("#tog").css("display");
				var status2 =$("#tog2").css("display");
				var num = ($("#tog2 span").length*40)+410;
				
				if(status2 =="none"){

					console.log($("#tog").css("display")=="none");
					$("#tog2").show();
					$(".Ctotal2").css("height","1400px"); 
				}else{					
					if(status1 !="none"){
						
						$("#tog2").hide();
						$("inner-wrap1").css("height"," 410px");
					}else{
						
						$("#tog2").hide();
						$(".Ctotal2").css("height","1000px");
					}
				}
			});
				
				$("#tog2").hide();
				$("#change-btn2").click(function(){
				if($("#tog2").hide && $("#inner-wrap1").height()==410){
						
					$("#tog2").show();
					$("#inner-wrap1").css("height",num)
					
				}else if($("#tog2").show() && $("#inner-wrap1").height()==num){
					
					
					$("#tog2").hide();
					$("#inner-wrap1").css("height","410px");
				}
				});
			});
					
		</script>
		
		</div>

		<div id="Information" class="tabcontent" style="display:block">
				
				
			<button class="Inquiry-btn" onclick="goDual();">1:1문의하기</button>
			
			<script>
				function goDual(){
					location.href="/semi/views/MyPage/DualForm.jsp";					
				}	
			
			</script>
			
			<table class="table CMtable">
				<thead>
					<tr class="CMtr3">
						<!-- <th>문의유형</th> -->
						<th>제목</th>
						<th>내용</th>
						<th>문의날짜</th>
						<th>답변상태</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<!-- <tr>
						<td>진료과목변경</td>
						<td>주과목을 변경하고싶습니다.</td>
						<td>하쿠나마타타</td>
						<td>2016.02.18</td>
						<td>N</td>
					</tr> -->
					<%
						for (Dual b : list) {
					%>
					<tr>
						<input type="hidden" value="<%=b.getBno()%>">
						<td><%=b.getBno()%></td>
						<td><%=b.getBtype()%></td>
						<td><%=b.getBtitle()%></td>
						<td><%=b.getBwriter()%></td>
						<td><%=b.getBcount()%></td>
						<td><%=b.getBdate()%></td>
					</tr>
					<%
						}
					%>

				</tbody>
			</table>
			<!--        페이지 처리 -->
			<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/selectListD.mp?currentPage=1'"><<</button>
			<% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else{ %>
			<button onclick="location.href='<%=request.getContextPath() %>/selectListD.mp?currentPage=<%= currentPage -1 %>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
					if(p == currentPage){
			%>
						<button disabled><%= p %></button>
			<%      }else{ %>
						<button onclick="location.href='<%=request.getContextPath() %>/selectListD.mp?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
			
			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectListD.mp?currentPage=<%= currentPage + 1%>'">></button>
			<% } %>
			<button onclick="location.href='<%=request.getContextPath() %>/selectListD.mp?currentPage=<%= maxPage%>'">>></button>
			</div>
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
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>




	<%@ include file="../common/footer.jsp"%>
</body>
</html>
