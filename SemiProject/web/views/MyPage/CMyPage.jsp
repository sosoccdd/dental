<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.dental.member.model.vo.*"%>
   
   
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/semi/css/event.css">
<link rel="stylesheet" href="/semi/css/CMyPage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>/
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
/* 이거지우면 내려감 왜그런지모름 */

.CMrightview{
      width:800px; 
      margin-left:35px;
      margin-top:30px;
      text-align:center;
   }
</style>
</head>
<body>
   
   <%@ include file="../common/header.jsp"%>
   
   <div class ="w1200 middle CHeader2 hidden">
      <div class = "fl">
         <img src = "../../images/common/tooth2.png" class = "CMsubtitle">
      </div>
      <div class = "fl">
         <label class = "CMname"><%= loginUser.getmName() %></label> <!-- 이름값 받아오기 -->
      </div>
      
      <div class = "CMfirstdiv fl">
         <i class="fa fa-calendar"></i>&nbsp;
         접수현황
         <p>0</p>
      </div>
      
      <div class = "CMfirstdiv fl">
         <i class="fa fa-pencil"></i>&nbsp;
         병원후기
         <p>0</p>
      </div>
      
      <div class = "CMfirstdiv fl">
         <i class="fa fa-question"></i>&nbsp;
         문의내역
         <p>0</p>
      </div>
   </div>
   

   <div class = "Ctotal2 w1200 middle">   
      <div class="tab w1200 middle">
        <button class="tablinks Register active" onclick="openCity(event, 'Register')"> 접수현황 </button>
        <button class=" tablinks" onclick="openCity(event, 'Review')" > 병원후기 </button>
        <button class=" tablinks" onclick="openCity(event, 'Inquiry')"> 1:1 문의 </button>
        <button class=" tablinks" onclick="openCity(event, 'Information')"> 개인정보 </button>
      </div>
      
      <div id="Register" class="tabcontent w1200 middle CMRegister" align = "center" >
       <%-- <% if(){ %> --%> <!-- 접수 현황이 null이 아닐때  -->
          <div class = "fl Cregister">
             <label> 접수 현황 </label>
             <hr>
             <label> 병원 도착 시 꼭 접수실에 알려주세요</label>
             <br><br>
               <%--  <div>
                   <label >대기<br>인원 </label> &nbsp;&nbsp;
                   <label class ="CMwating "> 001 <%  %></label> <!-- 대기인원을 알려주는 칸  -->
                </div> --%><br>
                
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
                <button class = "CMreservebtnstyle"> 예약 변경 </button>&nbsp;&nbsp;
                <button class = "CMreservebtnstyle" > 예약 취소 </button>
             </div>
             
          </div>
             <div class="CMrightview container fl" >
                 <h4>지난 접수 내역</h4>
               
                 <table class="table CMtable" >
                   <thead>
                     <tr class = "CMtr2">
                       <th>병원명</th>
                       <th>예약일자</th>
                       <th>예약시간</th>
                       <th>담당의</th>
                       <th>비고</th>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                       <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                       <td></td>
                     </tr>      
                     <!-- <tr >
                       <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                       <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                      <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                       <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                       <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                       <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                     <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr>
                         <td>아삭치과의원</td>
                       <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr>
                     <tr >
                       <td>아삭치과의원</td>
                        <td>2018-02-26(월)</td>
                       <td>13:20</td>
                       <td>김지현 원장</td>
                        <td></td>
                     </tr> -->
                   </tbody>
                 </table>
                 
                 <div class = "CMbottombtn" >
                    <button class = "CMstorybtn"><</button>
                    <button class = "CMstorybtn">1</button>
                    <button class = "CMstorybtn">2</button>
                    <button class = "CMstorybtn">3</button>
                    <button class = "CMstorybtn">4</button>
                    <button class = "CMstorybtn">5</button>
                    <button class = "CMstorybtn">></button>
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
      
         <div id="Review" class="tabcontent CMReview">
            <div>
               <label class = "CMRhospital"> 이삭치과의원 </label> &nbsp;&nbsp;
               <label class = "CMRdate"> 2018.02.10 17:04:31</label>
            </div>
            <div>
               <button class = "CMRupdatebtn">수정</button>
               <button class = "CMRdeletebtn">삭제</button>
            </div>
            
            <div class = "CMRscore">
               <ul class ="totalAve">
                  <li> 진료 만족도 <img src= ../../images/mypage/yellowstar.png>
                  </li>
                  
                  <li> 병원 친절도  <img src= ../../images/mypage/yellowstar.png>
                  </li>
                  
                  <li> 시설 만족도  <img src= ../../images/mypage/yellowstar.png >
                  </li>
               </ul>
            </div>
         </div>
         
         <div id="Inquiry" class = "tabcontent CMRreview">
            <button class="Inquiry-btn">1:1문의하기</button>
                 <table class="table CMtable" >
                   <thead>
                     <tr class = "CMtr3">
                       <th>문의유형</th>
                       <th>제목</th>
                       <th>내용</th>
                       <th>문의날짜</th>
                       <th>답변상태</th>
                       <th>삭제</th>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                       <td>진료과목변경</td>
                       <td>주과목을 변경하고싶습니다.</td>
                       <td>ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄱㄷ쥿ㄷ</td>
                       <td>티몬과품바</td>
                       <td>2016.02.18</td>

                       <td>N</td>   

                     </tr>      
                     
                     
                   </tbody>
                 </table>
         </div>
         
         <div id="Information" class="tabcontent">
           

         
      <div id="pass-wrap" class="pass-wrap">
         <pre>안전한 개인정보 관리를 위하여 비밀번호를 다시 입력해주세요.
개인정보 변경의 휴대폰 번호의 이메일은 재인증을 통해 변경 가능합니다.</pre>
         
         <img src="../../images/QnA/lock.png">
         <br>
      <input type="text" class="pass-text" placeholder="비밀번호를 입력해주세요." name="pass-check"/>   
      
      <button id="pass-check" class="pass-check">확인</button>
      </div>
         
   <!--  클릭할 시 나오게 하는 jquery
               다른 탭을 클릭시 원상복귀 -->      
   <script>
   
      $(function(){
         
         $("#default-wrap").hide();
         $("#pass-check").click(function(){
            
            $("#pass-wrap").hide();
            $("#default-wrap").show();
         });
         
         $(".tablinks").click(function(){
            
            $(".Ctotal2").css("height","700px");
            $("#pass-wrap").show();
            $("#default-wrap").hide();
            $("#withdraw-btn").css("margin-top","10px");
         });
         
      });
   
   
   
   </script>
			
			
			<div id="default-wrap" class="default-wrap">
				<div class="inner-wrap1">
					<p class="default-title">기본설정</p>
					<hr>
					<%--  <span class="title">이메일</span><span class="content"><%=loginUser.get %></span>
         <hr> --%>
					<span class="title">이름</span><span class="content"><%=loginUser.getmName() %></span>
					<hr>
					<span class="title">전화번호</span><span class="content"><%=loginUser.getPhone() %></span>
					<hr>
					<span class="title last">주소</span><span class="content"><%=loginUser.getAddress() %></span>
				</div>

				
					<div class="inner-wrap2" id="inner-wrap2">
						<p class="default-title">회원설정</p>
						<hr>
						<span class="title">본인인증하기</span><span class="check-wrap"><span
							class="check-text">인증완료</span>
						<button class="check-btn">이메일재인증</button>
							<button class="check-btn">휴대폰재인증</button></span>
						<hr>
						<span class="title">비밀번호변경</span><img id="change-btn"
							class="change-btn" src="../../images/mypage/bottom-direction.png">
						<span id="tog">
							<hr> <span class="title">현재비밀번호</span><input id="pwd" type="text"
							class="change-area" placeholder="현재 비밀번호를 입력하세요." readonly
							value="<%=loginUser.getmPwd()%>">
							<hr> <span class="title">새 비밀번호</span><input type="text"
							class="change-area" placeholder="새로운 비밀번호를 입력하세요." id="pwd1">
							<hr> <span class="title">비밀번호 확인</span><input type="text"
							class="change-area" placeholder="비밀번호를 확인해주세요." id="pwd2">
						</span>



					</div>
					<button id="withdraw-btn1" class="withdraw-btn">비밀번호 변경</button>
					<button id="withdraw-btn" class="withdraw-btn">회원탈퇴</button>
			</div>
			

			<script>
				$("#withdraw-btn1").click(function(){
					var pwd1 = $("#pwd1").val();
					var pwd2 = $("#pwd2").val();
					
					if(pwd1 === pwd2){
						$.ajax({
							url:"updatePwd.me",
							type:"post",
							data:{pwd:pwd1},
							success:function(data){
								alert("성공");
							},
							error:function(){
								alert("비밀번호 변경 실패");
							}
						});						
						
					}else{
						alert("비밀번호가 일치하지 않습니다.");
					}
					
				});

				function deleteMember() {

				}

				$(function() {
					/*.Ctotal2  */

					$("#tog").hide();

					$("#change-btn").click(function() {
						$("#tog").toggle();
						if ($(".Ctotal2").height() == 700) {

							$(".Ctotal2").css("height", "900px");

							$("#withdraw-btn1").css("margin-top", "150px");
							$("#withdraw-btn").css("margin-top", "150px");

						} else if ($(".Ctotal2").height() == 900) {

							$(".Ctotal2").css("height", "700px");

							$("#withdraw-btn").css("margin-top", "10px");
						}
						;
					});
				});
			</script>
      
      
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
           tablinks[i].className = tablinks[i].className.replace(" active", "");
       }
       document.getElementById(cityName).style.display = "block";
       evt.currentTarget.className += " active";
   }
   </script>
   
      


   
   <%@ include file="../common/footer.jsp"%>
</body>
</html>

