
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kh.dental.common.*, com.kh.dental.qna.model.vo.*" %>
    
 <%
 QnAPageInfo ans = (QnAPageInfo)request.getAttribute("ans");
	int listCount1=ans.getListCount();
	int totalPage1=ans.getTotalPage();
	int currentPage1=ans.getCurrentPage();
	int startPage1=ans.getStartPage();
	int lastPage1=ans.getLastPage();
 
 /* 
	request.setAttribute("qContent", qContent);
	request.setAttribute("aContent", aContent);
	request.setAttribute("aPic", aPic);
	request.setAttribute("aPhoto", dPhoto);
	request.setAttribute("reply", reply);
	request.setAttribute("ans", ans);
	request.setAttribute("rep", rep);
 	 */
 
 	Member m =(Member)session.getAttribute("loginUser");
 
 	QnA q = (QnA)request.getAttribute("qContent");
 	
 	ArrayList<Attachment> list = new ArrayList<Attachment>();
 	ArrayList<QnA> reply = new ArrayList<QnA>();
 	if((ArrayList<QnA>)request.getAttribute("reply") !=null){
 		
 		reply = (ArrayList<QnA>)request.getAttribute("reply");
 		
 		
 	}
 	
 	
 	
 	if((ArrayList<Attachment>)request.getAttribute("qPic") !=null){
 			list=(ArrayList<Attachment>)request.getAttribute("qPic");
 
 	}
 	ArrayList<Attachment> list2 = new ArrayList<Attachment>();
 	if(request.getAttribute("aPic")!=null){
 	list2 = (ArrayList<Attachment>)request.getAttribute("aPic");
 	}
 	
 	ArrayList<HashMap<String,Object>> aContent= new ArrayList<HashMap<String,Object>>();
 	if(request.getAttribute("aContent")!=null){
 		
 		aContent=(ArrayList<HashMap<String,Object>>)request.getAttribute("aContent");
 	}
 
 	ArrayList<Attachment> dPhoto = new ArrayList<Attachment>();
 	
 	if(request.getAttribute("dPhoto") != null){
 		
 		
 		dPhoto =(ArrayList<Attachment>)request.getAttribute("dPhoto");
 		
 	}
 	
 	
 	
 
 
 	
 
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
<form action="<%=request.getContextPath()%>/EnterAnswerServlet"  method="post">
<div class="w1200 middle relative  ">
   <ul class="qna-list">
         <li> 
         	<input type="text" name ="bNo" value="<%=q.getbNo() %>" style="display:none;">
         	<input type="text"  name ="tNo" value="<%=q.gettNo() %>" style="display: none;">
         	<input type="text"  name ="date" value="<%=q.getbDate() %>" style="display: none;">
         	<input type="text"  name ="content" value="<%=q.getbContent() %>" style="display: none;">
         	<input type="text"  name ="question" value="<%=q.getbTitle()%>" style="display: none;">
         	
         	<p class="qna-li-title">Q.  <%=q.getbTitle()%><%=q.getbNo() %></p>
            <p class="qna-li-date" ><%=q.getbDate() %></p>
            <hr>
            <p class="qna-li-con"><%=q.getbContent() %></p>
         </li>
   </ul>      
</div>





 <% if(m !=null){%>
     <button type="submit" id="nans-btn" class="nans-btn">이 질문에 답변 달기</button>
   </form>
     <%}else{%>
     <button class="nans-btn" onclick="location.href='/semi/views/member/Login.jsp'">로그인을 해주세요!</button> 
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
   	
<div class="w1200 middle relative wrap-ans">	 
	<%if(aContent!=null){
		HashMap<String,Object> hmap =new HashMap<String,Object>();
		for(int i=0; i<aContent.size();i++){
		hmap= aContent.get(i);%>
	<div>
      <div class="ans-head">
         <span class="doc_img">
            <img src="../../images/dentist/dentist01.png" width="60" height="60" ' onerror="this.style.display='none'" alt=''>
         </span>
         
         <div class="doc_info">
            <a href="" class="link_doctor"><%=hmap.get("dBWriter") %></a>
            <span class="d_major"><%=hmap.get("dFName") %></span>
         </div>
      
      
      <div class="point-info">
         <span class="point"><%=hmap.get("DDPoint") %></span>
         <span class="date"><%=hmap.get("dBDate") %></span>   
      </div>
       
      
       
      </div>
      <hr class="bottom-line">
     
      <div class="answer-body">
         <div class="content">
        
    		<%=hmap.get("dBContent") %>
                           
         </div>
         
      </div>

      

   </div>  
        
  
 
 
 	
   <%}
  } %>
 	<%if(m!=null){%>
 	 <div class="cmt-body">
   
   <input id="comment" class="comment" placeholder="댓글 내용을 입력해 주십시오" >
   <button id="reply-btn" >댓글달기</button>
 
 	
   <div id="reply-wrap" class="reply-wrap">
  
		<dIV id="reply-tab" class="reply-tab">
			
			<%if(reply.size()!=0){
				QnA rep = new QnA();
				for(int i=0;i<list.size();i++){
						rep=reply.get(i);%>
			<span class='reply-id'><%=rep.getbWriter()%></span>
   			<input class='reply-content' type='text' value='<%=rep.getbContent() %>' readonly>
   			<span class='reply-date'><%=rep.getbDate() %></span><br>   				
			<%}
		 }%>
		
		</div>


   </div>
   </div>
   		
   
 	<%}else{ %>
 	 <div class="cmt-body">
   
   <input id="comment" class="comment" placeholder="로그인 후 이용하실 수 있습니다." readonly >
   <button >댓글 달기</button>
 
   </div>
   
 	 <div id="reply-wrap" class="reply-wrap">
 		<%if(reply.size()!=0){
				QnA rep = new QnA();
				for(int i=0;i<list.size();i++){
						rep=reply.get(i);%>
			<span class='reply-id'><%=rep.getbWriter()%></span>
   			<input class='reply-content' type='text' value='<%=rep.getbContent() %>' readonly>
   			<span class='reply-date'><%=rep.getbDate() %></span><br>   				
			<%}
		 }%>
 	
   
   </div>
   
   <%} %>
    
    <%--페이지 처리 --%>
<div class="pagingArea" align="center">
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=1'"><<</button>
	<% if(currentPage1<=1){ %>
	<button disabled><</button>
	<%}else{ %>
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=currentPage1-1 %>'"><</button>
	<%} %>
	
	<%for(int p = startPage1; p<=lastPage1; p++){
			if(p==currentPage1){
		%>
		<button disabled><%=p %></button>
	
	<%		}else{%>
		<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=p %>'"><%=p%></button>
		<%} %>
		
		
	<%} %>	
	
	<%if(currentPage1>=totalPage1){ %>
	<button disabled>></button>
	<%} else{ %>
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=currentPage1+1 %>'">></button>	
	<%} %>
	<button onclick="location.href='<%=request.getContextPath() %>/SelectQnAServlet?currentPage=<%=totalPage1 %>'">>></button>
	

</div>
    
</div>
   
   <script>
   
   	$(function(){
   		
   		$("#reply-btn").click(function(){
   		
   		var content =$("#comment").val();
   		var tno = <%=q.gettNo()%>
   		$.ajax({
   			
   			url: "InsertReply",
   			data : {"content":content
   				   ,"tNo":tno}	,
   			type : "post",
   			success:function(data){
   				
   				var $input1=$("<span class='reply-id'>sdsd</span>");
   				
   				var $input2=$("<input class='reply-content' type='text' value='"+decodeURIComponent(data.bContent)+"' readonly>");
   				var $input3=$("<span class='reply-date'>"+data.bDate+"</span><br>");
   				
   				$("#reply-tab").append($input1).append($input2).append($input3);
   				$("#comment").val("");
   				
   				console.log($input1);
   				console.log($input2);
   				console.log($input3);
   				
   			   },error:function(data){
   				
   				console.log(data);
   				alert("전송실패!");
   				
   				
   			}
   			
   		});
   		
   	});
   	});
   
   
   
   </script>
   
  
   
   
   
   
</body>
</html>