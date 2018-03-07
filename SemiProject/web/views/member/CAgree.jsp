<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/agree.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle agreePage subPage">
	<ol class="join-process cjoin3 hidden">
		<li class="on">01 약관동의</li>
		<li>02 상세정보입력</li>
		<li>03 가입완료</li>
	</ol>
	
	<div class="agree-wrap cagree">
		<h2>회원가입 약관 동의</h2>
		
		<form action="" method="post">
		
		<div class="terms_p">
			<p class="terms_chk_all">
				<span class="input_chk"> 
					<input type="checkbox" id="chk_all" onclick="" class=""> 
					<label id="chk_allLb" for="chk_all" class="">
						이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), <br>
						프로모션 안내 메일 수신(선택)에 모두 동의합니다.
					</label>
				</span>
			</p>
			
			<ul class="terms_bx_list">
				<!-- 이용약관 -->
				<li class="terms_bx terms_service">
					<span class="input_chk"> 
						<input type="checkbox" id="termsService" onclick="" class=""> 
						<label id="termsServiceLb" for="termsService" class="">
							조치 이용약관 동의 <span class="terms_choice">(필수)</span>
						</label>
					</span>
					
					<div class="terms_box" id="divTerm">
						<%@ include file="join/service.jsp" %>
					</div>
				</li>
				
				<!-- 개인정보 수집  -->
				<li class="terms_bx terms_privacy">
					<span class="input_chk"> 
						<input type="checkbox" id="termsPrivacy" onclick="" class=""> 
						<label id="termsPrivacyLb" for="termsPrivacy" class="">
							개인정보 수집 및 이용에 대한 안내 <span class="terms_choice">(필수)</span>
						</label>
					</span>
					
					<div class="terms_box" id="divTerm">
						<%@ include file="join/privacy.jsp" %>
					</div>
				</li>
				<li class="pl25 pr25 mt30">
					<button type="submit" class="agree-join-btn">가입하기</button>`
				</li>
			</ul>
		</div>
		<!-- terms_p -->
		</form>
	</div>
</div>
<!-- agreePage -->


<script type="text/javascript">
	//체크박스 전체 선택
	$(function(){
 		$("#chk_all").click(function(){
			if($("#chk_all").prop("checked")){
				$(".terms_bx input[type=checkbox]").prop("checked", true);
			} else {
				$(".terms_bx input[type=checkbox]").prop("checked", false);
			}
		})
	});
</script>
<!-- footer -->
<%@ include file="../common/footer.jsp"%>