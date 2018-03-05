
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/QnAList.css">
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
            <p class="qna-li-title">보리차를 먹으면 치아 변색되나요?</p>
            <p class="qna-li-date">2012-02-23</p>
            <hr>
            <p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
         </li>
   </ul>      
</div>
<div class="w1200 middle relative wrap-ans">	
      <div class="ans-head">
         <span class="doc_img">
            <img src="../../images/dentist/dentist01.png" width="60" height="60">
         </span>
         
         <div class="doc_info">
            <a href="" class="link_doctor">김지현 의사</a>
            <span class="clinic_name">좋은 치과 의원</span>
         </div>
      
      
      <div class="point-info">
         <span class="point">조치 포인트: 1201</span>
         <span class="date">2017.08.25</span>   
      </div>
      
      
      <div class="">
      
      
      </div>
       
      </div>
      <hr class="bottom-line">
      
      <div class="answer-body">
         <div class="content">
         
         안녕하세요, 하이닥 내과 상담의 서종필 입니다.
         일단 높아졌을때의 수축기 혈압과 이완기 혈압이 너무나 높습니다. 대부분의 고혈압은 본태성 고혈압으로 특발성으로도 부릅니다. 특별히 기질적 질환(원인) 없이 발생하는 고혈압을 말합니다.
         드물게 신장동맥의 이상 혹은 크롬친화세포종 그외 부신의 종양성 병변 동맥의 혈관염 등 2차성(즉 고혈압을 유발하는 원인이 있는 상태)인 경우에도 혈압이 높게 오르고 들쭉날쭉할수 있습니다. 물론 가능성은 조금 낮을수 있겠지만요
         혈압의 상태를 24시간동안 체크하고 평균혈압 아침 혈압 그외 잠잘때 혈압을 체크해서 혈압약 투여을 결정하기도 합니다.
         순환기 내과에 방문하시어 혈압에 대한 정확한 판단과 치료를 받으시기를 권유합니다.   
                           
         </div>
         
      </div>
   <div class="btn-body">
   <button class="report-btn">신고하기</button>
   <button class="ans-btn">댓글</button>
   </div >   
   
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
     
   
   
   </div>
 
 
   
   
   
   
   
   
   </div>
   
   
   <script>
   
   	function addReply(){
   		
   		/* var content=document.getElementById("comment").value
   		$(function(){
   			
   			$("#reply-wrap").append('<img src="../../images/QnA/KakaoTalk_20180225_040917719.png">');
   			$("#reply-wrap").append('<span class="reply-content">
   								 	<span class="reply-user">gold() 사용자</span>
				   			   		<span class="reply-content">미백 상담을 받는 것 외에는 다른 방법이 없을까요?ㅜ 그냥 수시로 관리하고 싶어요</span>
				   			   		</span >
				   			   		<span class="reply-etc">
				   			   	
				   			   	
				   			   		<span>2017.08.28</span>
				   			   		<button class="dec-button">신고</button>
				   			   	
				   			   		</span>')
				    		
   		});
   		 
   		
   			 */
   			
   	}
   	
   
   
   
   </script>
   
   
   
   
   
   
   
</body>
</html>