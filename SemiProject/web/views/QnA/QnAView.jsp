<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.dental.qna.model.vo.*"%>



<%
	ArrayList<QnA> list1=
	(ArrayList<QnA>)request.getAttribute("list1");

	ArrayList<HashMap<String,Object>> list2 =
	(ArrayList<HashMap<String,Object>>)request.getAttribute("list2");

	ArrayList<HashMap<String,Object>> list3 =
	(ArrayList<HashMap<String,Object>>)request.getAttribute("list3");

	QnAPageInfo qpi = (QnAPageInfo)request.getAttribute("qpi");
	int listCount=qpi.getListCount();
	int totalPage=qpi.getTotalPage();
	int currentPage=qpi.getCurrentPage();
	int startPage=qpi.getStartPage();
	int lastPage=qpi.getLastPage();
	
	
	
	

%>
      
<!DOCTYPE html>
<html>


<head>
<meta  charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/QnAView.css">
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
   <%for(QnA q: list1){
   		
   %>
   <ul class="qna-list">
      <li>
      	<form>
        <p class="qna-li-title" onclick="location.href='<%=request.getContextPath()%>/SelectQnAServlet?tNo=<%=q.gettNo()%>&bCount=<%=q.getbCount()%>&bno=<%=q.getbNo() %>'"><%=q.getbTitle() %>&bno=<%=q.getbNo() %></p>
         <p class="qna-li-date"><%=q.getbDate() %></p>
         <hr>
         <p class="qna-li-con"><%=q.getbContent() %></p>
       </form>
       	 <%if(loginUser!=null){ %>
         <button type="button" class="reply" onclick="<%=request.getContextPath()%>/EnterAnswerServlet?title=<%=q.getbTitle()%>&date=<%=q.getbDate()%>&content=<%=q.getbContent()%>'">답변달기</button>
      	<%}else{ %>
      	  <button type="button" class="reply" onclick="location.href='/semi/views/member/Login.jsp'">로그인페이지로연결하쇼~</button>
      		<%} %>
      	
      </li>
    </ul>
   <%} %>
   <div class="qna-box w1200">
      <ul class="order-by">
         <li>답변 최신순</li>
         <li>질문 최신순</li>
      </ul>
      <%if(loginUser ==null){ %>
       <button type="button" class="ask-btn" onclick="location.href='/semi/views/member/Login.jsp'">질문은 로그인을 해야 합니다.</button>
   	 <%}else{ %>
      <button type="button" class="ask-btn" onclick="location.href='/semi/views/QnA/QnAEnroll.jsp'">질문하기</button>
   	 	<%} %>
   
   </div>
   
   
</div>
<%--페이지 처리 --%>
<div class="pagingArea" align="center">
	<button onclick="location.href='<%=request.getContextPath() %>/EnterQnAServlet?currentPage=1'"><<</button>
	<% if(currentPage<=1){ %>
	<button disabled><</button>
	<%}else{ %>
	<button onclick="location.href='<%=request.getContextPath() %>/EnterQnAServlet?currentPage=<%=currentPage-1 %>'"><</button>
	<%} %>
	
	<%for(int p = startPage; p<=lastPage; p++){
			if(p==currentPage){
		%>
		<button disabled><%=p %></button>
	
	<%		}else{%>
		<button onclick="location.href='<%=request.getContextPath() %>/EnterQnAServlet?currentPage=<%=p %>'"><%=p%></button>
		<%} %>
		
		
	<%} %>	
	
	<%if(currentPage>=totalPage){ %>
	<button disabled>></button>
	<%} else{ %>
	<button onclick="location.href='<%=request.getContextPath() %>/EnterQnAServlet?currentPage=<%=currentPage+1 %>'">></button>	
	<%} %>
	<button onclick="location.href='<%=request.getContextPath() %>/EnterQnAServlet?currentPage=<%=totalPage %>'">>></button>
	

</div>
	<script>
	
	
	
	
	
	
	</script>
   
   
   <%@ include file="../common/footer.jsp" %>
</body>
</html>