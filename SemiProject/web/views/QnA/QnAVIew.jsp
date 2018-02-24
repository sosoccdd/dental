<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	   
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
			<input type="search">
			<button type="button">검색</button>
		</div>
		<!-- srch-warp -->
	</div>
</div>
<!-- sub-bg -->

<!-- qna list 시작 -->
<div class="w1200 middle relative">
	<ul class="qna-list">
		<li>
			<p class="qna-li-title">보리차를 먹으면 치아 변색되나요?</p>
			<p class="qna-li-date">2012-02-23</p>
			<hr>
			<p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
			<button type="button" class="reply">답변달기</button>
		</li>
		
		<li>
			<p class="qna-li-title">보리차를 먹으면 치아 변색되나요?</p>
			<p class="qna-li-date">2012-02-23</p>
			<hr>
			<p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
			<button type="button" class="reply">답변달기</button>
		</li>
		<li>
			<p class="qna-li-title">보리차를 먹으면 치아 변색되나요?</p>
			<p class="qna-li-date">2012-02-23</p>
			<hr>
			<p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
			<button type="button" class="reply">답변달기</button>
		</li>
		
		<li>
			<p class="qna-li-title">보리차를 먹으면 치아 변색되나요?</p>
			<p class="qna-li-date">2012-02-23</p>
			<hr>
			<p class="qna-li-con">ㅇ러이넘뢰ㅏ멍론ㅇ미ㅏㅓ룅마ㅓ뢰아ㅓ룅마ㅓ뢴ㅁ아ㅓ룅ㅁ나ㅓ롬아ㅓ로<br>dfkjsdljfhkasjfhlkjh</p>
			<button type="button" class="reply">답변달기</button>
		</li>
	</ul>
	
	<div class="qna-box w1200">
		<ul class="order-by">
			<li>답변 최신순</li>
			<li>질문 최신순</li>
		</ul>
		
		<button type="button" class="ask-btn">질문하기</button>
	</div>
</div>

	<table class="page-table w1200 middle">
		<tr class="page-wrap">
			<td class="page"><a href="#">1</a><a href="#">2</a></td>
		</tr>
	</table>
	
	
	<%@ include file="../common/footer.jsp" %>

</body>
</html>