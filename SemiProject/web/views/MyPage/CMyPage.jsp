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
<meta  charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/semi/css/common.css">
<link rel="stylesheet" href="/semi/css/event.css">
<link rel="stylesheet" href="/semi/css/CMyPage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
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
   
   <div class="w1200" style="margin-left:auto; margin-right:auto;">
   <div class ="w1200 middle CHeader2 hidden">
      <div class = "fl">
         <img src = "/semi/images/common/tooth2.png" class = "CMsubtitle">
      </div>
      <div class = "fl">
         <label class = "CMname"><%= loginUser.getmName() %></label> <!-- 이름값 받아오기 -->
      </div>
      
      <div class = "CMfirstdiv fl">
         <i class="fa fa-calendar"></i>&nbsp;
         접수현황
         <p id="rcount"></p>
      </div>
      
      <div id="dentalreview" class = "CMfirstdiv fl">
         <i class="fa fa-pencil"></i>&nbsp;
         병원후기
         <p id="p-tag-test"></p>
      </div>
      
      <div class = "CMfirstdiv fl">
         <i class="fa fa-question"></i>&nbsp;
         문의내역
         <p><%= listCount %></p>
      </div>
   </div>
   </div>


   <div class="Ctotal2 w1200 middle">
      <div class="tab w1200 middle">
         <button class="tablinks Register active"
            onclick="openCity(event, 'Register')">신고하기</button>
         <button id="starcall" class=" tablinks" onclick="openCity(event, 'Review')">
            병원후기</button>
         <button class=" tablinks" onclick="openCity(event, 'Inquiry')">
            접수현황</button>
         <button class=" tablinks" onclick="openCity(event, 'Information')">
            개인정보</button>
      </div>
      <script>
         $(function(){
            console.log("점속???");
            $.ajax({
               url:"starcall.mp",
               type:"post",
               success:function(data){
                  console.log(data);
                  var $Review = $("#Review");
                  
                  for(var i=0; i<data.length-1; i++){
                     
                     var hosName = decodeURIComponent(data[i].hosName);
                     var date = decodeURIComponent(data[i].date);
                     var starpt = data[i].starpt+1;
                     var starpt1 = starpt+1;
                     var starpt2 = starpt+2;
                     
                     $Review.append("<div><label class='CMRhospital'> + " + hosName + "</label> &nbsp;&nbsp;" 
                     + "<label class='CMRdate'>" + date + "</label></div>"
                     + "<div><button class='CMRupdatebtn'>수정</button><button class='CMRdeletebtn'>삭제</button></div>"
                     + "<div class='CMRscore' id='ptpoint'><ul class='totalAve' id='ptpointList'>"
                     + "<li>진료만족도<img src='/semi/images/mypage/yellowstar.png'>" + starpt + "</li>"
                     + "<li>병원친절도<img src='/semi/images/mypage/yellowstar.png'>" + starpt1 + "</li>"
                     + "<li>시설만족도<img src='/semi/images/mypage/yellowstar.png'>" + starpt2 + "</li></ul></div>");
                  }
                  var Listcount = data[data.length-1].listS;
                  console.log(Listcount);
                  $("#p-tag-test").text(Listcount);
               },
               error:function(msg){
                  alert(msg);
                  console.log("리시트조회실패");
               }
            });
            
         });
      </script>
      
      

      <div id="Register" class="tabcontent w1200 middle CMRegister" align="center">
         <%-- <% if(){ %> --%>
         <!-- 접수 현황이 null이 아닐때  -->
         <button class="Inquiry-btn" onclick="insertDual();">신고하기</button>
         
         <script>
            function insertDual(){
               location.href="/semi/views/MyPage/DualForm.jsp";               
            }   
         
         </script>
         
         <table class="table CMtable">
            <thead>
               <tr class="CMtr3">
                  <th>제목</th>
                  <th>내용</th>
                  <th>문의날짜</th>
                  <th>처리여부</th>
                  <th>삭제</th>
               </tr>
            </thead>
            <tbody>
               <%
                  for (Dual b : list) {
               %>
               <tr>
                  <input type="hidden" value="<%=b.getBno()%>">
                  <td><%=b.getBtitle()%></td>
                  <td><%=b.getBcontent()%></td>
                  <td><%=b.getBdate()%></td>
                  <td><%=b.getBwriter()%></td>
                  <td><%=b.getBtype()%></td>
               </tr>
               <%
                  }
               %>
            </tbody>
         </table>


         <!--        페이지 처리 -->
         <div class="pagingArea" align="center">
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
         </div>
</div>

         <div id="Review" class="tabcontent CMReview" style="overflow: scroll;">
            
         </div>

         <div id="Inquiry" class="tabcontent CMRreview">

            <div class="fl Cregister">
               <label> 접수 현황 </label>
               <hr>
               <label> 병원 도착 시 꼭 접수실에 알려주세요</label> <br>
               <br>
               <br> <label> 진료 순서가 지나면 다시 접수를 하셔야 합니다. <br> 시간 내
                  방문이 어려운 경우, 병원에 미리 연락 부탁드립니다.
               </label>
               <hr>

               <div class="fl" align="left">
                  <label>병원명</label><br> <label>예약자</label><br> <label>예약일</label><br>
                  
               </div>


               <div id="RRdiv" align="right" style="height:100px;">
               </div>

               <hr>

               <div>
                  <button class="CMreservebtnstyle">예약 변경</button>
                  &nbsp;&nbsp;
                  <button class="CMreservebtnstyle">예약 취소</button>
               </div>

               
               </div>
               <div class="CMrightview container fl" style="overflow: scroll; height:500px;">
                  <h4>지난 접수 내역</h4>
                  <table class="table CMtable" id="Rtable">
                     <thead>
                        <tr class="CMtr2">
                           <th>병원명
                              <input type="hidden" value="<%=loginUser.getmNo() %>" id="Rid">
                           </th>
                           <th>예약일자</th>
                           <th>예약시간</th>
                           <th>비고</th>
                        </tr>
                     </thead>
                     <tbody>
                        <!-- <tr>
                           <td>아삭치과의원</td>
                           <td>2018-02-26(월)</td>
                           <td>13:20</td>
                           <td>김지현 원장</td>
                           <td></td>
                        </tr> -->
                     </tbody>
                     
                     <script>
                     
                        $(function(){
                           var Rid = $("#Rid").val();
                           
                           $.ajax({
                              url:"/semi/selectCR.mp",
                              data:{Rid:Rid},
                              type:"post",
                              success:function(data){
                                 console.log("예약현황"+data);   
                                 var $table = $("#Rtable tbody");
                                 console.log(data[0]);
                                 var $Rdiv = $("#RRdiv")
                                 var userName = '<%=loginUser.getmName()%>';
                                 
                                 $Rdiv.append("<label>" + data[0].hosName + "</label><br>" 
                                             + "<label>" + userName + "</label></br>" 
                                             + "<label>" + data[0].r_date + "&nbsp;" + data[0].r_time
                                             /* + "<label>" + data[0].hosName + "</label>" */);
                                 
                                 for(var i = 0; i<data.length;i++){
                                    
                                       
                                 
                                    var $tr = $("<tr>");
                                    var $hosTd = $("<td>").text(data[i].hosName);
                                    var $dateTd = $("<td>").text(data[i].r_date);
                                    var $timeTd = $("<td>").text(data[i].r_time);
                                    var $etcTd = $("<td>").text(data[i].etc);
                                    
                                    $tr.append($hosTd);
                                    $tr.append($dateTd);
                                    $tr.append($timeTd);
                                    $tr.append($etcTd);
                                    $table.append($tr);
                                 }
                                 
                                 
                                 $("#rcount").text(data.length);
                                 
                                 
                              },
                              error:function(msg){
                                 console.log("ㄴ마음나츰나츠에러");
                              }
                           });
                        });
                     </script>
                     
                     
                     
                     
                     
                  </table>
               </div>
            </div>
            
            
            
            
            
            <div id="Information" class="tabcontent">
            <div id="pass-wrap" class="pass-wrap">
               <pre>안전한 개인정보 관리를 위하여 비밀번호를 다시 입력해주세요.
개인정보 변경의 휴대폰 번호의 이메일은 재인증을 통해 변경 가능합니다.</pre>
               <img src="/semi/images/QnA/lock.png"> <br> <input
                  type="text" class="pass-text" placeholder="비밀번호를 입력해주세요."
                  name="pass-check" />
               <button id="pass-check" class="pass-check">확인</button>
            </div>
         </div>

   

   <!--  클릭할 시 나오게 하는 jquery
               다른 탭을 클릭시 원상복귀 -->      
   <script>
            $(function() {

               $("#default-wrap").hide();
               $("#pass-check").click(function() {

                  $("#pass-wrap").hide();
                  $("#default-wrap").show();
               });

               $(".tablinks").click(function() {

                  $(".Ctotal2").css("height", "700px");
                  $("#pass-wrap").show();
                  $("#default-wrap").hide();
                  $("#withdraw-btn").css("margin-top", "10px");
               });

            });
         </script>


   
            
         
         
         
         
         <!-- 접힘 -->
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
                     class="change-btn" src="/semi/images/mypage/bottom-direction.png">
                  <span id="tog">
                     <input type="hidden" value="<%=loginUser.getmId()%>" id="userId">
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
