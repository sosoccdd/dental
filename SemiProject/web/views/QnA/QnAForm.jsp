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

<div class="w1200 middle relative ">
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
 	<div class="answerTable"><b>답변달기</b>
 		 <br>
 		 <br>
 		 <font>의사 명:</font><input type="text" class="doc-text">
 		 <span class="star-input">
		  <span class="input">
		    <input type="radio" name="star-input" id="p1" value="1"><label for="p1">1</label>
		    <input type="radio" name="star-input" id="p2" value="2"><label for="p2">2</label>
		    <input type="radio" name="star-input" id="p3" value="3"><label for="p3">3</label>
		    <input type="radio" name="star-input" id="p4" value="4"><label for="p4">4</label>
		    <input type="radio" name="star-input" id="p5" value="5"><label for="p5">5</label>
		    <input type="radio" name="star-input" id="p6" value="6"><label for="p6">6</label>
		    <input type="radio" name="star-input" id="p7" value="7"><label for="p7">7</label>
		    <input type="radio" name="star-input" id="p8" value="8"><label for="p8">8</label>
		    <input type="radio" name="star-input" id="p9" value="9"><label for="p9">9</label>
		    <input type="radio" name="star-input" id="p10" value="10"><label for="p10">10</label>
		  </span>
		  <output for="star-input"><b>0</b>점</output>
		</span>
 		 
 	<table class="ans-tab" >
 	
 	
 	<tr class="ans-text">
 		<td>답변 내용:</td><td><textarea cols="130" rows="15" class="content" placeholder="*본 답변은 참고용으로 의학적 판단이나 진료행위로  해석 될 수 없습니다."></textarea></td>
 	</tr>
 		
 	</table>
 	</div>




</div>		
<div class="w1200 middle" align="center">
<button class="ans-btn">답변달기</button><button class="ans-btn">취소하기</button>
</div>	</body>
</html>