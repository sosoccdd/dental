<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.dental.member.model.vo.*"%>
<% Member loginUser = (Member)session.getAttribute("loginUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조은치과 - 당신의 치아를 응원합니다</title>
<link rel="stylesheet" href="/semi/css/reset.css">
<link rel="stylesheet" href="/semi/css/common.css">

<body>
   <header>
      <div class="w1200 middle">
         <h1><a class="logo" href="/semi/index.jsp">조은치과 </a></h1>
         
         <ul class="gnb fl hidden">
            <li><a href="/semi/views/SerchClinic/Cserch.jsp">병원찾기</a></li>

            <!-- <li><a href="/semi/views/event/EventList.jsp">이벤트</a></li> -->
            <li><a href="/semi/selectList.ev">이벤트</a></li>
            <li><a href="/semi/views/QnA/QnAForm.jsp">Q & A</a></li>

            <li><a href="/semi/views/HealthInfo/HealthView.jsp">건강정보</a></li>
         </ul>
         
          <% if(loginUser == null){ %>
         <ul class="btn-wrap fr hidden">
            <li><button type="button" class="login-btn" onclick="location.href='/semi/views/member/Login.jsp'">로그인</button></li>
            <li><button type="button" class="join-btn" onclick="location.href='/semi/views/member/memberConfirm.jsp'">회원가입</button></li>
         </ul>
         <% } else { %>
         <ul class="btn-wrap fr">
            <li class="login-name">
            
               <% if(loginUser.getType().equals("N")){ %>
                  <div class="user-type gUser">일반회원</div>
               <% } else if(loginUser.getType().equals("D")){ %>
                  <div class="user-type dUser">의사회원</div>
               <% } else { %>
                  <div class="user-type cUser">치과회원</div>
               <% } %>
               <%= loginUser.getmName() %>님
               <ul class="after-login">
                  <%
                   System.out.println(loginUser.getType());
                  if(loginUser.getType().equals("N")) {
                  %>
                  
                  <li>
                  <a href="<%=request.getContextPath()%>/selectList.mp">마이메뉴</a></li>
                     <li><a href="/semi/views/SerchClinic/Res.jsp">예약하기</a></li>
                  <%}else if(loginUser.getType().equals("D")) { %>
                  
                  <li><input type="hidden" name="userName" id="userName" value="<%=loginUser.getmId() %>"/>
                  <a href="<%=request.getContextPath()%>/selectListD.mp">마이메뉴</a></li>
                  <%}else { %>
                  <li><input type="hidden" name="userName" id="userName" value="<%=loginUser.getmName() %>"/>
                  <a href="<%=request.getContextPath()%>/selectR.mp">마이메뉴</a></li>
                  <%} %> 
                  <li><a href="/semi/views/MyPage/DualForm.jsp">신고하기</a></li>
                  <li>
                  <input type="hidden" name="userName" id="userName" value="<%=loginUser.getmName() %>"/>
                  <a href="<%= request.getContextPath() %>/logout.me">로그아웃</a></li>
               </ul>
            </li>
            <li><button type="button" class="join-btn" onclick="location.href=''">조치 가족병원 문의</button></li>
         </ul>
         
         <script>
         function goMy(){
               
            <%if(loginUser.getType().equals('D')){%>
               location.href="views/Mypage/DMyPage.jsp";   
            <%}%>
            
         }   
         </script>
          <% } %>
      </div>
   
      
      
   
      
   </header>
   

      






