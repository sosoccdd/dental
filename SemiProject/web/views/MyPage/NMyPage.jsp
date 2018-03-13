<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.dental.mypage.model.vo.*"%>
<%-- <% 
	ArrayList<Dual> list = (ArrayList<Dual>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage(); 
%> --%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<link rel="stylesheet" href="/semi/css/event.css">
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
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<div class ="w1200 middle NHeader2 hidden">
		<div class = "fl">
			<img src = "../../images/common/tooth2.png" class = "NMsubtitle">
		</div>
		<div class = "fl">
			<label class = "NMname"> 아삭병원 님<% %></label> <!-- 이름값 받아오기 -->
		</div>
		
		<div class = "NMsubmenu fl">
			<i class="fa fa-calendar"></i>&nbsp;
			접수현황
			<p>0</p>
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
	


	<div class = "NMtotal2 w1200 middle">	
		<div class="tab w1200 middle">
		  <button class="tablinks NMRegister active" onclick="openCity(event, 'NMRegister')"> 접수현황 </button>
		  <button class=" tablinks" onclick="openCity(event, 'NMReview')" > 내 이벤트 </button>
		  <button class=" tablinks" onclick="openCity(event, 'NMInquiry')"> 1:1 문의 </button>
		  <button class=" tablinks" onclick="openCity(event, 'NMInformation')"> 가족병원수정 </button>
		</div>
	
		<div id="NMRegister" class="tabcontent w1200 middle NMRegister" align = "center" >
       <%-- <% if(){ %> --%> <!-- 접수 현황이 null이 아닐때  -->
          <div class = "fl NMregister" align="center">
            <label> 예약확인 </label>
            <hr>

			<input type="date" id="myDate" class = "NMdate">
			<br>
			<button onclick="myFunction()" class = "NMstorybtn">예약자 조회하기</button>
			<p id="demo"></p>
			
			<script>
			function dateFunction() {
			    var x = document.getElementById("NMreserve").value;
			    document.getElementById("demo").innerHTML = x;
			}
			</script>
			             
         </div> 
  
 
          <div class = "fl NMregister">
         	<div> <!-- 예약자를 새로고침해야 할 영역 -->
         		
         		<table >
         			<tr>
         				<th>예약자명</th>
         				<th>휴대전화</th>
         				<th>접수</th> <!-- check : y = 접수완료 n : 접수취소 -->
         			</tr>
         			
         			<tr>
         				<td>송재상</td>
         				<td>010-4534-5678</td>
         				<td>접수완료</td>
         			</tr>
         			<tr>
         				<td>서은별</td>
         				<td>010-1234-5678</td>
         				<td>접수취소</td>
         			</tr>
         		</table>
         		<br><br>
         		<div class = "NMbottombtn" >
                    <button class = "NMstorybtn"><</button>
                    <button class = "NMstorybtn">1</button>
                    <button class = "NMstorybtn">2</button>
                    <button class = "NMstorybtn">3</button>
                    <button class = "NMstorybtn">4</button>
                    <button class = "NMstorybtn">5</button>
                    <button class = "NMstorybtn">></button>
                 </div>
         	</div>
          </div>
          
          <div class="NMconfirmtable container fl" >
              <h4>신청 목록</h4><br>
               
                 <table class="table NMtable" >
                   <thead>
                     <tr class = "NMtr2" align="center">
                       <th>예약 일자</th>
                       <th>예약 시간 </th>
                       <th>과목</th>
                       <th>담당의</th>
                       <th>확인</th>
                       <th>취소</th>
                       <th>비고</th>
                     </tr>
                   </thead>
                   <tbody align = "center">
                     <tr>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>보철과</td>
                       <td>김지현 원장</td>
                       <td>접수 확인</td>
                       <td></td>
                       <td><button>승인</button>&nbsp;&nbsp;
                       	   <button>취소</button></td>
                     </tr>      
                     <tr>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>보철과</td>
                       <td>김지현 원장</td>
                       <td>접수 확인</td>
                       <td></td>
                       <td><button>승인</button>&nbsp;&nbsp;
                       	   <button>취소</button></td>
                     </tr>  
                     
                   
                   </tbody>
                   
                 </table>
	             <div class = "NMbottombtn">
	                <button class = "NMstorybtn"><</button>
	                <button class = "NMstorybtn">1</button>
	                <button class = "NMstorybtn">2</button>
	                <button class = "NMstorybtn">3</button>
	                <button class = "NMstorybtn">4</button>
	                <button class = "NMstorybtn">5</button>
	                <button class = "NMstorybtn">></button>
	             </div>
                 
            </div>
          <div>
          
          </div>
       
       <%-- <% }else{ %> --%><!-- 접수가 없을떄  --> 
      <!--  <div class = "CMimgnone">
          <img src = "../../images/mypage/magnifier2.png" >
          <p> 접수한 내역이 없습니다.</p>
       </div>    -->
       <%-- <% } %> --%>
    
      
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
						
						for(var i = 1; i<data.length-1; i++){
							var $tr = $("<tr>");
							var $dateTd = $("<td>").text(data[i].date);
							var $titleTd = $("<td>").text(decodeURIComponent(data[i].title));
							var $contentTd = $("<td>").text(decodeURIComponent(data[i].content));
							var $statusTd = $("<td>").text(data[i].b_status);
							
							$tr.append($dateTd);
							$tr.append($titleTd);
							$tr.append($contentTd);
							$tr.append($statusTd);
							$tablebody.append($tr);
						}
						
						$div = $("<div>").attr("class", "pagingArea").attr("align", "center");
						$btn1 = $("<button>").text("<<").attr("onclick","location.href='<%=request.getContextPath()%>/selectReviewNN.mp?currentPage=1'");
						$btn2 = $("<button>").text("<").attr("onclick","location.href='<%=request.getContextPath()%>/selectReviewNN.mp?currentPage='" + currentPage-1);
						
						$div.append($btn1);
						$div.append($btn2);
						console.log(endPage);
						$.each(data, function(index, data){
							var num1 = data/index + 0.9;
							var $btn = $("<button>").text(index).attr("onclick","location.href='<%=request.getContextPath()%>/selectReviewNN.mp?currentPage='"+ num1);									
							$div.append($btn);								
						});
						
						$btn3 = $("<button>").text(">").attr("onclick","location.href='<%=request.getContextPath()%>/selectReviewNN.mp?currentPage='" + currentPage+1);
						$btn4 = $("<button>").text(">>").attr("onclick","location.href='<%=request.getContextPath()%>/selectReviewNN.mp?currentPage='"+ maxPage);
						$div.append($btn3);
						$div.append($btn4);
						
						$table.after($div);
						
						
						<%-- <% for(int p = startPage; p <= endPage; p++){ 
							if(p == currentPage){
						%>
								<button disabled><%= p %></button>
						<%}else{ %>
								<button onclick="location.href='<%=request.getContextPath() %>/selectList.mp?currentPage=<%= p %>'"><%= p %></button>
						<%} %>
						<%} %> --%>
						
						
						<%-- $button.text("<<").attr("onclick","location.href='<%=request.getContextPath()%>/selectReviewN.mp?currentPage=1'");
						$div.append($button);
						
						$table.append($div); --%>
						
						
						<%-- <div class="pagingArea" align="center">
						<button onclick="location.href='<%= request.getContextPath() %>/selectList.mp?currentPage=1'"><<</button>
						<% if(currentPage <= 1){ %>
						<button disabled><</button>
						<% }else{ %>
						<button onclick="location.href='<%=request.getContextPath() %>/selectList.mp?currentPage=<%= currentPage -1 %>'"><</button>
						<% } %>
						
						<% for(int p = startPage; p <= endPage; p++){ 
								if(p == currentPage){
						%>
									<button disabled><%= p %></button>
						<%      }else{ %>
									<button onclick="location.href='<%=request.getContextPath() %>/selectList.mp?currentPage=<%= p %>'"><%= p %></button>
						<%      } %>
						<% } %>
						
						<% if(currentPage >= maxPage){ %>
						<button disabled>></button>
						<% }else{ %>
						<button onclick="location.href='<%= request.getContextPath() %>/selectList.mp?currentPage=<%= currentPage + 1%>'">></button>
						<% } %>
						<button onclick="location.href='<%=request.getContextPath() %>/selectList.mp?currentPage=<%= maxPage%>'">>></button>
						</div> --%>
						
							/* $.each(data, function(index, value){
								var $tr = $("<tr>");
								var $titleTd = $("<td>").text(decodeURIComponent(value.title));
								var $contentTd = $("<td>").text(decodeURIComponent(value.content));
								var $dateTd = $("<td>").text(decodeURIComponent(value.date));
								var $statusTd = $("<td>").text(decodeURIComponent(value.b_status));
								
								$tr.append($titleTd);
								$tr.append($contentTd);
								$tr.append($dateTd);
								$tr.append($statusTd);
								$tablebody.append($tr);
								
							}); */
						
						var Listcount = data[data.length-1].listS;
						console.log(Listcount);
						$("#Nreview").text(Listcount);
						
					},
					error:function(msg){
						alert(msg);
						console.log("리시트조회실패");
					}
				});
				
			});
		</script>
         
        
         
         
         
         
         <div id="Information" class="tabcontent">
           
         
      <div id="pass-wrap" class="pass-wrap">
         <pre>안전한 개인정보 관리를 위하여 비밀번호를 다시 입력해주세요.
개인정보 변경의 휴대폰 번호의 이메일은 재인증을 통해 변경 가능합니다.</pre>
         
         <img src="../../images/QnA/lock.png">
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
            
            $(".Ctotal2").css("height","700px");
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
         <span class="title">이메일</span><span class="content"><%=loginUser.getmGender() %></span>
         <hr>
         <span class="title">이름</span><span class="content"><%=loginUser.getmId() %></span>
         <hr>
         <span class="title">전화번호</span><span class="content"><%=loginUser.getmPhone() %></span>
         <hr>
         <span class="title last">주소</span><span class="content"><%=loginUser.getmAddr() %></span>
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
         /*.Ctotal2  */
         $("#tog").hide();
         $("#change-btn").click(function(){
         $("#tog").toggle();
         if($(".Ctotal2").height()==700){
            $(".Ctotal2").css("height","900px");
            $("#withdraw-btn").css("margin-top","150px");
         }else if($(".Ctotal2").height()==900){
            $(".Ctotal2").css("height","700px");
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



