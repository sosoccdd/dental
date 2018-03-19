<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.dental.mypage.model.vo.*"%>
<% 

	ArrayList<Res> list1 = (ArrayList<Res>)request.getAttribute("list1");
	PageInfo pi1 = (PageInfo)request.getAttribute("pi1");
	int listCount1 = pi1.getListCount();
	int currentPage1 = pi1.getCurrentPage();
	int maxPage1 = pi1.getMaxPage();
	int startPage1 = pi1.getStartPage();
	int endPage1 = pi1.getEndPage();
	
%> 


   
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/event.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/MyPage4_1.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/MyPage4_2.css">

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>
	
	/* Style the tab */
	.tab {
	
	    overflow: hidden;
	    border: 1px solid #ccc;
	    background-color: #f1f1f1;
	    padding-top:40px;
	   
	}
	.inner-wrap2{
   margin-top:100px;
   background:#f6f6f6;
   height:200px;
   
   
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
		border:1px solid lightgray;
		width:290px;
	}
	.NMtotal2{
      height:700px;
      background:#f6f6f6;
   }
	/* 헤더 부분을 제외한 헤더 부분  */
	/* 치아 이미지. */
	.NMsubtitle{
	
		 width:100px;
		 height:100px;
		 margin-top:25px;
		 margin-left:50px;
	}
	
	/* 헤더 밑 부분 div */
	.NHeader2{
		background:#2f6bad;
		color: white;
		height:160px;
	}
	.NHeader2 label,
	.NHeader2 div, i{
		color:white;
	}
	.NHeader2 label{
		margin-top: 60px;
   		margin-left: 25px;
   		font-size: 20px;
   		width:400px;
	}
	
	/* 헤더 밑 div영역  */
	.NMsubmenu{
	
		font-size: 17px;
    	margin-top: 30px;
    	margin-right: 30px;
	
	}
	.NMsubmenu p{
	
		color:white;
		font-size:35px;
		text-align:center;
		font-weight:bold;
	
	}
	.NMRegister{
      display: block;
   }
	.NMregister{
      background:white;
      margin-top:25px;
      margin-left:180px;
      padding:30px;
      width:305px;
      height: 180px;
   }
   .NMconfirmtable{
   		margin-top:40px;
   }
   .NMtr2 th:first-child{
      width:150px;
   }
   .NMtr2 th:nth-child(2){
      width:100px;
   }
   .NMtr2 th:nth-child(3){
      width:80px;
   }
   .NMtr2 th:nth-child(4){
      width:90px;
   }
   .NMtr2 th:nth-child(5){
      width:90px;
   }
   .NMtr2 th:nth-child(6){
      width:90px;
   }
   .NMtr2 th:last-child{
      width:120px;
   }
   .NMdate{
   		margin-bottom:20px;
   }
   .NMstorybtn{
      background:white;
      border:2px solid #308deb;
      color: #308deb;
   }
   .NMstorybtn:hover{
      background:#308deb;
      color:white;
      cursor:pointer;
   }
   .NMregister table th{
   		font-weight:bold;
   		text-align:center;
   }
   .NMregister table th:nth-child(2){
   		width:130px;
   	
   }
   .NMregister table td{
   		text-align:center;
   }
   .table tr:nth-child(odd){
       background: #f1f1f1;
   }
   .NMtable{
   		margin-bottom:25px;
   }
   .default-wrap{
   margin-top:50px;
   margin-left:auto;
   margin-right:auto;
   width:80%;
   background:#f6f6f6;
   height:260px;

   	  
   }
   .info-wrap {
   
   margin-left:auto;
   margin-right:auto;
   width:1200px;
   height:900px;
   background: darkgray;
   padding-top:20px;
}
   
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<div class="w1200" style="margin-left:auto; margin-right:auto;">
	<div class ="w1200 middle NHeader2 hidden">
		<div class = "fl">
			<img src = "/semi/images/common/tooth2.png" class = "NMsubtitle">
		</div>
		<div class = "fl">
			<label class = "NMname"><%=loginUser.getmName() %></label> <!-- 이름값 받아오기 -->
		</div>
		
		<div class = "NMsubmenu fl">
			<i class="fa fa-calendar"></i>&nbsp;
			접수현황
			<p><%=listCount1%></p>
		</div>
		
		<div class = "NMsubmenu fl">
			<i class="fa fa-pencil"></i>&nbsp;
			병원후기
			<p>0</p>
		</div>
		
		<div class = "NMsubmenu fl">
			<i class="fa fa-question"></i>&nbsp;
			문의내역
			<p id="Nreview"></p>
		</div>
	</div>
	</div>
	


	<div class = "NMtotal2 w1200 middle">	
		<div class="tab w1200 middle">
		  <button id="dcm" class="tablinks NMRegister active" onclick="openCity(event, 'NMRegister')"> 접수현황 </button>
		  <button class=" tablinks" onclick="openCity(event, 'NMReview')" > 내 이벤트 </button>
		  <button class=" tablinks" onclick="openCity(event, 'NMInquiry')"> 1:1 문의 </button>
		  <button class=" tablinks" onclick="openCity(event, 'NMInformation')"> 가족병원수정 </button>
		</div>
	
		<div id="NMRegister" class="tabcontent w1200 middle NMRegister" align = "center" >
          <div class = "fl NMregister" align="center">
            <label> 예약확인 </label>
            <hr>

			<input type="date" id="myDate" class = "NMdate">
			<br>
			<button onclick="myFunction()" class = "NMstorybtn">예약자 조회하기</button>
			<p id="demo"></p>
         </div> 
          <div class = "fl NMregister">
         	<div style="width:300px;"> <!-- 예약자를 새로고침해야 할 영역 -->
         		<table id="Rmember">
         			<thead>
         			<tr>
         				<th>예약자명<input type="hidden" id="Mno" value="<%= loginUser.getmNo()%>"></th>
         				<th>진료분야</th>
         				<th>접수</th> <!-- check : y = 접수완료 n : 접수취소 -->
         			</tr>
         			
         			</thead>
         			<tbody>
         			
         			</tbody>
         		</table>
         		<br><br>
         	</div>
          </div>
          
           <script>
			$(function(){
				
				var mno = $("#Mno").val();
				
				console.log("sksksksk??"+mno);

				$.ajax({
					url:"/semi/selectRmember.mp",
					data:{mno:mno},
					type:"post",
					success:function(data){
						
						var $table1 = $("#Rmember tbody");
						var pi = data[0];
						var currentPage = pi.currentPage;
						var listCount = pi.listCount;
						var limit = pi.limit;
						var maxPage = pi.maxPage;
						var startPage = pi.startPage;
						var endPage = pi.endPage;
						
						for(var i = 0; i< limit; i++){
							var $tr = $("<tr>");
							var $nameTd = $("<td>").text(data[i].m_name);
							var $fTd = $("<td>").text(data[i].f_name);
							var $statusTd = $("<td>").text(data[i].r_status);
							
							$tr.append($nameTd);
							$tr.append($fTd);
							$tr.append($statusTd);
							$table1.append($tr);
							
						}
						
						$div = $("<div>").attr("class", "Rpaging").attr("id", "pageR").attr("align", "center");
						
						$btn1 = $("<button>").text("<<").attr("id", "point1").attr("value", startPage);
						if(currentPage == "1"){
							$btn2 = $("<button>").text("<");	
						}else{
						$btn2 = $("<button>").text("<").attr("id", "point1").attr("value", currentPage-1);
						}
						$div.append($btn1);
						$div.append($btn2);
						
						for(var i = startPage; i<=pi.maxPage; i++){
							var $btn = $("<button>").text(i).attr("id","point1").attr("value", i);
							$div.append($btn);
						}
						if(currentPage == maxPage){
							$btn3 = $("<button>").text(">");	
						}else{
						$btn3 = $("<button>").text(">").attr("id", "point1").attr("value", currentPage+1);
						}
						$btn4 = $("<button>").text(">>").attr("id", "point1").attr("value", maxPage);
						
						$div.append($btn3);
						$div.append($btn4);
						$table1.after($div);
						
					},
					error:function(msg){
						console.log("리시트조회실패");
					}
				});
			});
          
          /* 에이젝스 페이징 클릭이벤트 */
			$(document).on("click", "#point1", function(){
				var num = $(this).val();
				var mno = $("#Mno").val();
				var $table1 = $("#Rmember tbody");
				var $buttonA = $("#pageR");
				$table1.empty();
				$buttonA.empty();
				
				$.ajax({
					url:"/semi/selectRmember.mp",
					type:"get",
					data:{"currentPage":num, mno:mno},
					success:function(data){
						console.log(data);
						
						var pi = data[0];
						var currentPage = pi.currentPage;
						var listCount = pi.listCount;
						var limit = pi.limit;
						var maxPage = pi.maxPage;
						var startPage = pi.startPage;
						var endPage = pi.endPage;
						console.log(maxPage);
						
						for(var i = 1; i< data.length-1; i++){
							var $tr = $("<tr>");
							var $nameTd = $("<td>").text(data[i].m_name);
							var $fTd = $("<td>").text(data[i].f_name);
							var $statusTd = $("<td>").text(data[i].r_status);
							
							$tr.append($nameTd);
							$tr.append($fTd);
							$tr.append($statusTd);
							$table1.append($tr);
							
						}
						
						$div = $("<div>").attr("class", "Rpaging").attr("id", "pageR").attr("align", "center");
						
						$btn1 = $("<button>").text("<<").attr("id", "point1").attr("value", startPage);
						if(currentPage == "1"){
							$btn2 = $("<button>").text("<");	
						}else{
						$btn2 = $("<button>").text("<").attr("id", "point1").attr("value", currentPage-1);
						}
						$div.append($btn1);
						$div.append($btn2);
						
						for(var i = startPage; i<=pi.maxPage; i++){
							var $btn = $("<button>").text(i).attr("id","point1").attr("value", i);
							$div.append($btn);
						}
						if(currentPage == maxPage){
							$btn3 = $("<button>").text(">");	
						}else{
						$btn3 = $("<button>").text(">").attr("id", "point1").attr("value", currentPage+1);
						}
						$btn4 = $("<button>").text(">>").attr("id", "point1").attr("value", maxPage);
						
						$div.append($btn3);
						$div.append($btn4);
						$table1.after($div);
						
					},
					error:function(msg){
						console.log("ㅁ라ㅡㅁ자르");
					}
				});		
			});
			
		</script>
          
          
          
          
          
          <div class="NMconfirmtable container fl" >
              <h4>신청 목록</h4><br>
               
                 <table class="table NMtable" >
                   <thead>
                     <tr class = "NMtr2" align="center">
                       <th>예약 시간 </th>
                       <th>과목</th>
                       <th>예약자 회원 이름</th>
                       <th>확인</th>
                       <th>비고</th>
                       <th>예약 여부</th>
                     </tr>
                   </thead>
                   <tbody align = "center">
					<% for(Res b : list1){ %>
					<tr>
						<td><%= b.getRtime() %></td>
						<td><%= b.getF_name() %></td>
						<td><%= b.getMno() %></td>
						<td id="status"><%= b.getR_status()%></td>
						<td><%= b.getEtc() %></td>
						 <td>
						 <button id="rid" onclick="updateY(<%=b.getRno()%>);">승인</button>&nbsp;&nbsp;
                       	  </td>
					</tr>
					<% } %>
			
					<script>
						function updateY(rno){
							console.log(rno);
							
							location.href='/semi/updateRstatus.mp?rno='+ rno;
							
						}					
					
					</script>
	                     
                     
                   
                   </tbody>
                   
                   
                 </table>
	             
	            <%-- 페이지 처리 --%>
				<div class="pagingArea" align="center">
					<button onclick="location.href='<%= request.getContextPath() %>/selectR.mp?currentPage1=1'"><<</button>
					<% if(currentPage1 <= 1){ %>
					<button disabled><</button>
					<% }else{ %>
					<button onclick="location.href='<%=request.getContextPath() %>/selectR.mp?currentPage1=<%= currentPage1 -1 %>'"><</button>
					<% } %>
					
					<% for(int p = startPage1; p <= endPage1; p++){ 
							if(p == currentPage1){
					%>
								<button disabled><%= p %></button>
					<%      }else{ %>
								<button onclick="location.href='<%=request.getContextPath() %>/selectR.mp?currentPage1=<%= p %>'"><%= p %></button>
					<%      } %>
					<% } %>
					
					<% if(currentPage1 >= maxPage1){ %>
					<button disabled>></button>
					<% }else{ %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectR.mp?currentPage1=<%=currentPage1 + 1%>'">></button>
					<% } %>
					<button onclick="location.href='<%=request.getContextPath() %>/selectR.mp?curruntPage1=<%=maxPage1%>'">>></button>
				</div>
	             
                 
            </div>
          <div>
          
          </div>
          
         
    
      
		</div>
	
	
	<!-- 이벤트 등록하기 -->
	
	
	 
	<!-- 1:1 문의하기 -->
	 <div id="NMInquiry" class = "tabcontent CMRreview">
            <button class="Inquiry-btn">1:1문의하기</button>
                 <table class="table CMtable" id="DualList">
                   <thead>
                     <tr class = "CMtr3">
                       <th>제목</th>
                       <th>내용</th>
                       <th>문의날짜</th>
                       <th>답변상태</th>
                     </tr>
                   </thead>
                   <tbody>
                    
                   </tbody>
                 </table>
         		
         		
         		
         </div>
         
         <script>
         
         
			$(function(){
				console.log("점속???");
				$.ajax({
					url:"/semi/selectReviewN.mp",
					type:"post",
					success:function(data){
						console.log(data);
						var $tablebody = $("#DualList tbody");	
						var $table = $("#DualList");
						var pi = data[0];
						var currentPage = pi.currentPage;
						var listCount = pi.listCount;
						var limit = pi.limit;
						var maxPage = pi.maxPage;
						var startPage = pi.startPage;
						var endPage = pi.endPage;
						console.log(maxPage);
						for(var i = 1; i<data.length-1; i++){
							var $tr = $("<tr>");
							var $dateTd = $("<td>").text(data[i].date);
							var $titleTd = $("<td>").text(decodeURIComponent(data[i].title));
							var $contentTd = $("<td>").text(decodeURIComponent(data[i].content));
							var $statusTd = $("<td>").text(data[i].b_status);
							$tr.append($titleTd);
							$tr.append($contentTd);
							$tr.append($dateTd);
							$tr.append($statusTd);
							$tablebody.append($tr);
						}
						$div = $("<div>").attr("class", "pagingArea").attr("id", "pageA").attr("align", "center");
						
						$btn1 = $("<button>").text("<<").attr("id", "point").attr("value", startPage);
						if(currentPage == "1"){
							$btn2 = $("<button>").text("<");	
						}else{
						$btn2 = $("<button>").text("<").attr("id", "point").attr("value", currentPage-1);
						}
						$div.append($btn1);
						$div.append($btn2);
						
						for(var i = startPage; i<=pi.maxPage; i++){
							console.log("번호 ! : " + i);							
							var $btn = $("<button>").text(i).attr("id","point").attr("value", i);
							$div.append($btn);
						}
						if(currentPage == maxPage){
							$btn3 = $("<button>").text(">");	
						}else{
						$btn3 = $("<button>").text(">").attr("id", "point").attr("value", currentPage+1);
						}
						$btn4 = $("<button>").text(">>").attr("id", "point").attr("value", maxPage);
						
						$div.append($btn3);
						$div.append($btn4);
						$table.after($div);
						
						var Listcount = data[data.length-1].listS;
						$("#Nreview").text(Listcount);
					},
					error:function(msg){
						console.log("리시트조회실패");
					}
				});
			});
			
			
			/* 에이젝스 페이징 클릭이벤트 */
			$(document).on("click", "#point", function(){
				var num = $(this).val();
				var $tablebody = $("#DualList tbody");	
				var $table = $("#DualList");
				var $buttonA = $("#pageA");
				$tablebody.empty();
				$buttonA.empty();
				
				$.ajax({
					url:"/semi/selectReviewNN.mp",
					type:"get",
					data:{"currentPage":num},
					success:function(data){
						console.log(data);
						
						var pi = data[0];
						var currentPage = pi.currentPage;
						var listCount = pi.listCount;
						var limit = pi.limit;
						var maxPage = pi.maxPage;
						var startPage = pi.startPage;
						var endPage = pi.endPage;
						console.log(maxPage);
						
						for(var i = 1; i<data.length-1; i++){
							var $tr = $("<tr>");
							var $dateTd = $("<td>").text(data[i].date);
							var $titleTd = $("<td>").text(decodeURIComponent(data[i].title));
							var $contentTd = $("<td>").text(decodeURIComponent(data[i].content));
							var $statusTd = $("<td>").text(data[i].b_status);
							$tr.append($titleTd);
							$tr.append($contentTd);
							$tr.append($dateTd);
							$tr.append($statusTd);
							$tablebody.append($tr);
						}
						
						$div = $("<div>").attr("class", "pagingArea").attr("id", "pageA").attr("align", "center");
						
						$btn1 = $("<button>").text("<<").attr("id", "point").attr("value", startPage);
						if(currentPage == "1"){
							$btn2 = $("<button>").text("<");	
						}else{
						$btn2 = $("<button>").text("<").attr("id", "point").attr("value", currentPage-1);
						}
						
						$div.append($btn1);
						$div.append($btn2);
						
						for(var i = startPage; i<=pi.maxPage; i++){
							console.log("번호 ! : " + i);							
							var $btn = $("<button>").text(i).attr("id","point").attr("value", i);
							$div.append($btn);
						}
						
						if(currentPage == maxPage){
							$btn3 = $("<button>").text(">");	
						}else{
						$btn3 = $("<button>").text(">").attr("id", "point").attr("value", currentPage+1);
						}
						$btn4 = $("<button>").text(">>").attr("id", "point").attr("value", maxPage);
						
						$div.append($btn3);
						$div.append($btn4);
						$table.after($div);
						var Listcount = data[data.length-1].listS;
						console.log(Listcount);
						$("#Nreview").text(Listcount);
						
					},
					error:function(msg){
						console.log("ㅁ라ㅡㅁ자르");
					}
				});		
			});
			
		</script>
         
        
         
         
         
         
         <div id="Information" class="tabcontent">
           
         
      <div id="pass-wrap" class="pass-wrap">
         <pre>안전한 개인정보 관리를 위하여 비밀번호를 다시 입력해주세요.
개인정보 변경의 휴대폰 번호의 이메일은 재인증을 통해 변경 가능합니다.</pre>
         
         <img src="/semi/images/QnA/lock.png">
         <br>
      <input type="text" class="pass-text" placeholder="비밀번호를 입력해주세요.">   
      
      <button id="pass-check" class="pass-check">확인</button>
      </div>
       </div>
         
   <!--  클릭할 시 나오게 하는 jquery
               다른 탭을 클릭시 원상복귀 -->      
   <script>
   
      $(function(){
         
         $("#NMInformation").hide();
         $("#pass-check").click(function(){
            
            $("#pass-wrap").hide();
            $("#NMInformation").show();
         });
         
         $(".tablinks").click(function(){
            
            $(".NMtotal2").css("height","700px");
            $("#pass-wrap").show();
            $("NMInformation").hide();
            $("#withdraw-btn").css("margin-top","10px");
         });
         
      });
   
   </script>      
      
   <div id = "NMInformation" class = "tabcontent">
    <div id="default-wrap" class="default-wrap">
         <div class="inner-wrap1">
         <p class="default-title">기본설정</p>
         <hr>
         <span class="title">이메일</span><span class="content"><%=loginUser.getAddress()%></span>
         <hr>
         <span class="title">이름</span><span class="content"><%=loginUser.getmId() %></span>
         <hr>
         <span class="title">전화번호</span><span class="content"><%=loginUser.getPhone() %></span>
         <hr>
         <span class="title last">주소</span><span class="content"><%=loginUser.getAddress() %></span>
         </div>
         
         <div class="inner-wrap2" id="inner-wrap2">
         <p class="default-title">회원설정</p>
         <hr>
         <span class="title">본인인증하기</span><span class="check-wrap"><span class="check-text">인증완료</span><button class="check-btn">이메일재인증</button><button class="check-btn">휴대폰재인증</button></span>
         <hr>
         <span class="title">비밀번호변경</span><img id="change-btn" class="change-btn" src="/semi/images/mypage/bottom-direction.png">
         <span id="tog">
         <hr>
         <input type="hidden" value="<%=loginUser.getmId() %>" id="userId">
         <span class="title">현재비밀번호</span><input type="text" class="change-area" placeholder="현재 비밀번호를 입력하세요." value="<%=loginUser.getmPwd()%>" readonly>
         <hr>
         <span class="title">새 비밀번호</span><input type="text" class="change-area" placeholder="새로운 비밀번호를 입력하세요." id="pwd1">
         <hr>
         <span class="title">비밀번호 확인</span><input type="text" class="change-area" placeholder="비밀번호를 확인해주세요." id="pwd2">
         </span>
         
         </div>
         <button id="withdraw-btn" class="withdraw-btn">회원탈퇴</button>
          <button id="withdraw-btn1" class="withdraw-btn">비밀번호 변경</button>
         </div>
      </div>

      <script>
      
      $("#withdraw-btn1").click(function(){
			var pwd1 = $("#pwd1").val();
			var pwd2 = $("#pwd2").val();
			var userId = $("#userId").val();
			
			if(pwd1 === pwd2){
				$.ajax({
					url:"/semi/updatePwd.me",
					type:"post",
					data:{pwd:pwd1, userId:userId},
					success:function(data){
						<%
							/* session.invalidate(); */
						%>
						
						alert("변경이 완료 되었습니다 다시 로그인 해주세요");
						location.href="/semi";
					},
					error:function(){
						alert("비밀번호 변경 실패");
					}
				});						
				
			}else{
				alert("비밀번호가 일치하지 않습니다.");
			}
			
		});
      
      
      
      $(function(){
    	  
    	  /*.NMtotal2  */
         $("#tog").hide();
         $("#change-btn").click(function(){
         $("#tog").toggle();
         if($(".NMtotal2").height()==700){
            $(".NMtotal2").css("height","900px");
            $("#withdraw-btn").css("margin-top","150px");
         }else if($(".NMtotal2").height()==900){
            $(".NMtotal2").css("height","700px");
            $("#withdraw-btn").css("margin-top","10px");
         }
         });
      });
      </script>
      
     
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



