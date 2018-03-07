<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/QnAForm.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
		<div class="w1200 middle">
			<h1><a class="logo" href="/semi/index.jsp">조은치과 </a></h1>
			
			<ul class="gnb fl hidden">
				<li><a href="/semi/views/SerchClinic/Cserch.jsp">병원찾기</a></li>
				<li><a href="/semi/views/event/EventForm.jsp">이벤트</a></li>
				<li><a href="/semi/views/QnA/QnAView.jsp">Q & A</a></li>
				<li><a href="/semi/views/HealthInfo/HealthView.jsp">건강정보</a></li>
			</ul>
			
			<ul class="btn-wrap fr hidden">
				<li>
					<button type="button" class="login-btn" onclick="location.href='/semi/views/member/Login.jsp'">로그인</button>
				</li>
				
				<li>
					<button type="button" class="join-btn" onclick="location.href='/semi/views/member/memberConfirm.jsp'">회원가입</button>
				</li>
			</ul>
		</div>
	</header>




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
            <p class="qna-li-title">보리차를 먹으면 치아 변색되나요?</p>
            <p class="qna-li-date">2012-02-23</p>
            <hr>
            <p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
            </li>
   </ul>      
</div>
      
<div class="w1200 middle relative">
    <div class="answerTable">
    	<label>답변달기</label> <!-- 수정: b 태그에서 label -->
        <br>
        <br>
        <p>의사 명:</p><!--  수정: font 태그에서 p태그 -->
        <input type="text" class="doc-text">
    <table class="ans-tab" >
     
    
    <tr class="ans-text">
       <td>답변 CONTENT:</td>
       <td><textarea cols="130" rows="15" class="content" placeholder="*본 답변은 참고용으로 의학적 판단이나 진료행위로  해석 될 수 없습니다."></textarea></td>
    </tr>
       
    </table>
    </div>
</div>      
<div class="w1200 middle" align="center">
<button class="ans-btn">답변달기</button><button class="ans-btn">취소하기</button>
</div>  
 </body>
</html>