<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<!-- header -->

<style>

.join-process {
	background: #2f6bad;
}

.join-process li {
	background-color: transparent;
	float: left;
	cursor: default;
	font-size: 16px;
	color: #fff;
	width: calc(1200px/ 4);
	padding: 34px 0;
	text-align: center;
}
.join-process li.on {
	background-color: #195596;
	font-weight: bold;
}

.join-wrap, .confirm-wrap {
	background-color: #f6f6f6;
	border: 1px solid #d7d7d7;
	padding: 50px 100px;
}

.confirm-wrap {
	background-image: url('../images/join/cellphone_verification.png');
	background-repeat: no-repeat;
	background-position: 400px 90px;
}

.join-wrap h2, .confirm-wrap h2 {
	font-size: 20px;
	margin-bottom: 40px;
}

.login-bg {
	background: #fff;
	margin-bottom: 3px;
	font-size: 14px;
	padding: 8px 18px;
}

.login-bg label {
	display: inline-block;
	width: 110px;
}

.login-bg input {
	border: none;
	width: 700px;
	padding: 10px;
	box-sizing: border-box;
}
.short-input input{
	width: 22%;
}
.getData {
	height: 40px;
	line-height: 40px;
}

.chkId-overlap, .zip-code, 
.add-btn, .email-certifi {
	background: #308deb;
	color: #fff;
	border: none;
	cursor: pointer;
	padding: 10px 20px;
	border-radius: 5px;
}

.idChk p, .pwdChk p {
	padding-left: 25px;
	margin: 15px 20px;
}

.idChk .united, .pwdChk .united {
	background: url('../images/join/icon_check.png') no-repeat;
}

.idChk .inconcinnity, .pwdChk .inconcinnity {
	background: url('../images/join/icon_ExclamationMark.png') no-repeat;
	color: red;
}

.address-area input:last-child {
	float: right;
}

.join-member {
	width: 100%;
	border: 0;
	background: #3d3d3d;
	color: #fff;
	padding: 15px 0;
	font-size: 15px;
	cursor: pointer;
}

.join-can {
	cursor: pointer;
	border: none;
	background: transparent;
	margin-top: 10px;
	font-size: 14px;
	float: right;
	color: #308deb;
}

.join-can:hover {
	text-decoration: underline;
}

.confirm-wrap button {
	width: 100%;
	border: none;
	margin-top: 20px;
	background: #308deb;
	padding: 15px 0;
	color: #fff;
	cursor: pointer;
}
.other-bg{
	background: #fff;
    padding: 18px 18px;
    margin-bottom: 3px;
    overflow: hidden;
}
.other-bg > label:first-child{
	display: inline-block;
	width: 110px;
	float: left;
}
.chkbox-wrap{
	float:left;
	width: 852px;
}
.success-join{
	background-image: url('/semi/images/join/join_ok.png');
	background-repeat: no-repeat;
	background-position: 430px 170px;
	text-align: center;
}
.success-join h2{
	font-size: 40px;
	font-weight: bold;
	margin: 20px 0 50px 0;
}
.success-join p{
	margin: 60px 0 30px 0;
	font-size: 15px;
}
.success-join button{
	border: none;
	color: #fff;
	width: 140px;
	height: 50px;
	border-radius: 5px;
	background: #308deb;
	cursor: pointer;
	margin-bottom: 30px;
}
.success-join button:last-child{
	background-color: #969696;
}
</style>
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle CjoinPage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li>02 약관동의</li>
		<li>03 상세정보입력</li>
		<li class="on">04 가입완료</li>
	</ol>

	<div class="join-wrap success-join">
		<h2>회원가입이 완료되었습니다</h2>
		<br><br>
		<p>
			가입하신 <span class="f16 c-308deb">'아이디'</span>와 <span class="f16 c-308deb">'비밀번호'</span>로
			로그인이 가능합니다.
		</p>
		<!-- <p>24시간 이내 담당자 확인 후  고객님께서 남겨주신 연락처로 연락 드리겠습니다.</p> -->
		
		<button type="button" onclick="location.href='/semi/views/member/Login.jsp'">로그인</button>
		<button type="button" onclick="location.href='/semi/index.jsp'">메인 화면으로</button>
					
	
	</div>
</div>
<!-- agreePage -->



<!-- footer -->
<%@ include file="../common/footer.jsp"%>