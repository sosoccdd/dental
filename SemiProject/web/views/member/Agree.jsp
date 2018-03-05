<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/agree.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle agreePage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li class="on">02 약관동의</li>
		<li>03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>
	
	<div class="agree-wrap">
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
				
				<!-- 위치정보 이용약관 동의 -->
				<li class="terms_bx terms_location">
					<span class="input_chk"> 
						<input type="checkbox" id="termsLocation" onclick="" class=""> 
						<label id="termsLocationLb" for="termsLocation" class="">
							위치정보 이용약관 동의 <span class="terms_no">(선택)</span>
						</label>
					</span>
					
					<div class="terms_box" id="divTerm">
						<%@ include file="join/location.jsp" %>
					</div>
				</li>
				
				<!-- 이벤트 등 프로모션 알림 메일 수신 동의 -->
				<li class="terms_bx terms_event">
					<span class="input_chk"> 
						<input type="checkbox" id="termsEvent" onclick="" class=""> 
						<label id="termsEventLb" for="termsEvent" class="">
							이벤트 등 프로모션 알림 메일 수신<span class="terms_no">(선택)</span>
						</label>
					</span>
				</li>
			</ul>
			
			<!-- 회원선택 -->
			<div class="choice_mem txt-ce">
				<span class="f16">회원 유형에 따라 가입 절차에 차이가 있으니 일반회원 또는 의사회원을 선택해주세요</span>
				<br><br>
				<!-- 일반  -->
				<input type="radio" id="ch_mem_normal" name="chs_mem">
				<label for="ch_mem_normal" class="ch_mem_normal">일반회원</label>
				
				<!-- 의사 -->
				<input type="radio" id="ch_mem_dentist" name="chs_mem">
				<label for="ch_mem_dentist">의사회원</label>
			</div>
			<!-- choice -->
		</div>
		<!-- terms_p -->
			<button type="submit" class="agree-join-btn">가입하기</button>`
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