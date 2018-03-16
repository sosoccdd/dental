<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.dental.member.model.vo.*,java.sql.Date, com.kh.dental.qna.model.vo.*"%>
    
 <%
 
 	Member m = (Member)session.getAttribute("loginUser");
 	QnA q = (QnA)request.getAttribute("q");
 %>   
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/QnAForm.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <%@ include file="../common/header.jsp"%>


<div class="sub-bg">
   <div class="w1200 middle">
      <p class="line-txt">
         검색하세요<br>
         당신과 같은 고민에 대한 해답이 있습니다.
      </p>
      
      <div class="srch-wrap">
         <input type="search">
         <button type="button" ><img src="../../images/QnA/KakaoTalk_20180221_121825952.png"></button>
      </div>
      <!-- srch-warp -->
   </div>
</div>
<div class="w1200 middle relati9 ve">
   <ul class="qna-list">
         <li>
         	<input type="text" name="tNo" value="<%=q.gettNo() %>" style="display:none;">
            <p class="qna-li-title"><%=q.getbTitle() %></p>
            <p class="qna-li-date"><%=(Date)q.getbDate() %></p>
            <hr>
            <p class="qna-li-con"><%=q.getbContent() %></p>
            </li>
   </ul>      
</div>
      
    <form action="<%=request.getContextPath()%>/InsertAnswerServlet" method="post" encType="multipart/form-data">
<div class="w1200 middle relative">
    <div class="answerTable">
    	<label>답변 제목</label> <!-- 수정: b 태그에서 label -->
    	<input type=text name="title" class="ans-title">
    
       <input type="text" name="bNo" value="<%=q.getbNo() %>" style="display:none;">
     <input type="text" name="tNo" value="<%=q.gettNo() %>" style="display:none" >
        <br>
        <br>
        <p>답변자 명:</p><!--  수정: font 태그에서 p태그 -->
       <% if(m.getType()=="D" && (String)m.getType()=="C"){ %>
        <input type="text" class="doc-text" name="name" value="<%=m.getmName() %>(의사,병원이름)" readonly style="border:none;">
    	<%}else{ %>
    	  <input type="text" class="doc-text" name="id" value="<%=m.getmId() %>(일반인아이디)" readonly style="border:none;">
    	<%} %> 
    <table class="ans-tab" >
    
    <tr class="ans-text">
       <td>답변 CONTENT:</td>
       <td><textarea cols="130" rows="15" class="content" placeholder="*본 답변은 참고용으로 의학적 판단이나 진료행위로  해석 될 수 없습니다." name="content"></textarea></td>
    </tr>
       
    </table>
    <div class="add-wrap">
    	<label class="add-file">사진첨부</label>
    	<input type="file" class="file-container" name="file" >
    </div>
    </div>
</div>    
   
<div class="w1200 middle" align="center">
<button class="ans-btn" type="submit">답변달기</button><button class="ans-btn" onclick="location.href='/semi/views/QnA/QnAView.jsp'">취소하기</button>
</div>  
    </form>
 </body>
</html>