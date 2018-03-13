
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kh.dental.common.*, com.kh.dental.qna.model.vo.*" %>
    
 <%
 	Member m =(Member)session.getAttribute("loginUser");
 
 	QnA q = (QnA)request.getAttribute("qContent");
 	
 	ArrayList<Attachment> list = new ArrayList<Attachment>();
 	if((ArrayList<Attachment>)request.getAttribute("qPic") !=null){
 			list=(ArrayList<Attachment>)request.getAttribute("qPic");
 
 	}
 
 
 
 
 	/* ArrayList<HashMap<String,Object>> list1=new ArrayList<HashMap<String,Object>>();
	ArrayList<HashMap<String,Object>> list2=new ArrayList<HashMap<String,Object>>();
 					list1=(ArrayList<HashMap<String,Object>>)request.getAttribute("list1");
		 
 	if(request.getAttribute("list2")!=null){
		 			list2=(ArrayList<HashMap<String,Object>>)request.getAttribute("list2");
					 }
 	HashMap<String, Object> hmap = list1.get(0);
 	
 	
 	Attachment[] pic=null;
 	
 	for(int i =0 ; i>list1.size(); i++){
 		
 		HashMap<String,Object> pict = new HashMap<String,Object>();
 		pict=list1.get(i);
 		
 		pic=new Attachment[list1.size()];
 		if(pict.get("pAfterName")!=null){
 		pic[i].setChangeName((String)pict.get("pAfterName"));
 		}
 	} */
 	
 	
 
 %>   
    
    
    
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/QnAList.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<meta charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
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
<div class="w1200 middle relative  ">
   <ul class="qna-list">
         <li>
         	 <p class="qna-li-title" name="question">Q.<%=q.getbDate() %>  <-날짜  <%=q.getbTitle()%></p>
            <p class="qna-li-date" name="date"><%=q.getbDate() %></p>
            <hr>
            <p class="qna-li-con" name="content"><%=q.getbContent() %></p>
         </li>
   </ul>      
</div>
<%-- <div class="w1200 middle relative wrap-ans">	 나중에
	<%if(list.size()!=0){
		for(int i=0; i<=1;i++){
		Attachment at = list.get(i);%>
	<div>
      <div class="ans-head">
         <span class="doc_img">
            <img src="../../images/dentist/dentist01.png" width="60" height="60">
         </span>
         
         <div class="doc_info">
            <a href="" class="link_doctor"><%=hmap1.get("dName") %></a>
            <span class="d_major"><%=hmap1.get("fName") %></span>
         </div>
      
      
      <div class="point-info">
         <span class="point"><%=hmap1.get("dPoint") %></span>
         <span class="date"><%=hmap1.get("dDate") %></span>   
      </div>
       
      
       
      </div>
      <hr class="bottom-line">
     
      <div class="answer-body">
         <div class="content">
        
       	<%=hmap1.get("dContent") %>
                           
         </div>
         
      </div>

      
   <div class="btn-body">
   <button class="report-btn">신고하기</button>
   <button class="ans-btn">댓글</button>
   </div > 
   </div>  
        
   <div class="cmt-body">
   
   <textarea id="comment" class="comment"></textarea>
   <button onclick="addReply();">댓글달기</button>
 
   </div>
 
 	
   <div id="reply-wrap" class="reply-wrap">
    
   	 <img src="../../images/QnA/KakaoTalk_20180225_040917719.png">
   	<span class="reply-content">
   		<span class="reply-user">gold() 사용자</span>
   		<span class="reply-content">미백 상담을 받는 것 외에는 다른 방법이 없을까요?ㅜ 그냥 수시로 관리하고 싶어요</span>
   	</span >
   	<span class="reply-etc">
   	
   	
   		<span>2017.08.28</span>
   		<button class="dec-button">신고</button>
   	</span>
   <% } 
     }else{
   	 --%>
     <% if(m ==null){%>
     <button class="nans-btn" onclick="location.href='<%=request.getContextPath()%>/EnterAnswerServlet?title=<%=q.getbTitle()%>&date=<%=q.getbDate()%>&content=<%=q.getbContent()%>'">로그인을 먼저 해주세요!</button>
     <%}else{%>
     <button class="nans-btn" onclick="location.href='/semi/views/member/Login.jsp'">이 질문에 답변달기</button> 
     <%}%>
   	
    
    <%if(list!=null) {
    	Attachment picInfo = new Attachment();
    	   for(int i =0;i<list.size();i++){
    				picInfo=list.get(i);%>
   <div class="w3-content slide-img w3-display-container">
   

  <img class="mySlides" src="<%=request.getContextPath() %>/uploadFiles/questionImgFIle/<%=picInfo.getChangeName()%>" style="width:20%">
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  
   
</div>
	
	<%}
   }%>
	<script>
	
	var slideIndex = 1;
	showDivs(slideIndex);
	
	function plusDivs(n) {
	  showDivs(slideIndex += n);
	}
	
	function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  if (n > x.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = x.length}
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";  
	  }
	  x[slideIndex-1].style.display = "block";  
	}
	</script>
   
   </div>
 
 	
   
   
   
   
   
   
   </div>
   
   
   <script>
   
   	function addReply(){
   		
   		
   			
   	}
   	
   
   
   
   </script>
   
   
   
   
   
   
   
</body>
</html>