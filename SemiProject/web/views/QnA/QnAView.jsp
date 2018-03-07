<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.dental.qna.model.vo.*"%>
<%
	/* ArrayList<QnA> list = (ArrayList<QnA>)request.getAttribute("list");
	QnAPageInfo qpi = (QnAPageInfo)request.getAttribute("qpi");
	int listCount=qpi.getListCount();
	int totalPage=qpi.getTotalPage();
	int currentPage=qpi.getCurrentPage();
	int startPage=qpi.getStartPage();
	int lastPage=qpi.getLastPage();
	 */
	 	int listCount=5;
		int totalPage=25;
		int pageNum=10;
		int currentPage=1;
		 int startPage=1;
		 int lastPage=10;
		
	

%>
      
<!DOCTYPE html>
<html>


<head>
<meta  charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/QnAView.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
<header>
<%@ include file="../common/header.jsp" %>
<div class="sub-bg">
   <div class="w1200 middle">
      <p class="line-txt">
         검색하세요<br>
         당신과 같은 고민에 대한 해답이 있습니다.
      </p>
      
      <div class="srch-wrap">
         <input type="search" class="search-input">
         <button type="button"><img src="../../images/QnA/KakaoTalk_20180221_121825952.png"></button>
      </div>
      <!-- srch-warp -->
   </div>
</div>
<!-- sub-bg -->
<!-- qna list 시작 -->
<div class="w1200 middle relative">
   <ul class="qna-list">
      <li>
         <p class="qna-li-title"  onclick="location.href='/semi/views/QnA/QnAList.jsp'">보리차를 먹으면 치아 변색되나요?</p>
         <p class="qna-li-date">2012-02-23</p>
         <hr>
         <p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
         <button type="button" class="reply" onclick="location.href='/semi/views/QnA/QnAForm.jsp'">답변달기</button>
      </li>
    </ul>
   
   <div class="qna-box w1200">
      <ul class="order-by">
         <li>답변 최신순</li>
         <li>질문 최신순</li>
      </ul>
      
      <button type="button" class="ask-btn" onclick="location.href='/semi/views/QnA/QnAEnroll.jsp'">질문하기</button>
   </div>
</div>
<%--페이지 처리 --%>
<div class="pagingArea" align="center">
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=1'"><<</button>
	<% if(currentPage<=1){ %>
	<button disabled><</button>
	<%}else{ %>
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=currentPage-1 %>'"><</button>
	<%} %>
	
	<%for(int p = startPage; p<=lastPage; p++){
			if(p==currentPage){
		%>
		<button disabled><%=p %></button>
	
	<%		}else{%>
		<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=p %>'"><%=p %></button>
		<%} %>
		
		
	<%} %>	
	
	<%if(currentPage>=totalPage){ %>
	<button disabled>></button>
	<%} else{ %>
	<button onclick="lication.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=currentPage+1 %>'">></button>	
	<%} %>
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPag=<%=totalPage %>'">>></button>
	

</div>

   
   
   <%@ include file="../common/footer.jsp" %>
</body>
</html>