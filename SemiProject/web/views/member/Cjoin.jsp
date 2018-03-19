<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/semi/css/join.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/semi/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/semi/js/regex.js"></script>
<script type="text/javascript" src="/semi/js/Djoin.js"></script>
<!-- 우편번호 찾기 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle CjoinPage subPage">
	<ol class="join-process hidden">
		<li>01 본인인증</li>
		<li>02 약관동의</li>
		<li class="on">03 상세정보입력</li>
		<li>04 가입완료</li>
	</ol>

	<div class="join-wrap">
		<h2>회원가입 | 치과</h2>

		<form action="" method="post" class="hidden">
			<ul>
				<li class="login-bg">
					<label class="must">치과명</label>
					<input type="text" placeholder="치과명을 적어주세요">
				</li>

				<li class="login-bg">
					<label class="must">원장명</label>
					<input type="text" placeholder="원장의 이름을 적어주세요">
				</li>
				<li class="login-bg short-input">
					<label class="must">개원일</label>
					<input type="date" placeholder="개원한 일자를 적어주세요">
				</li>


				<li class="form-group form_file">
					<label class="must">사업자번호</label>
					<div class="filebox bs3-primary preview-image">
					<input class="upload-name" value="파일선택" disabled="disabled" style="width: 250px;">
					<label for="input_file">업로드</label>
					<input type="file" id="input_file" class="upload-hidden">
					<br>
					<p class="mt10">
						- 실제 운영되는 치과임을 확인하기 위해 수집하는 정보이며 개원 진위 여부 확인 및 인증 목적으로만 이용됩니다.<br>
						- 이미지 도용할 경우 법적 절차에 따라 처벌 받을 수 있습니다.<br>
					</p>
					</div>
				</li>

				<li class="login-bg short-input">
					<label class="must">아이디</label>
					<input type="text" name="mId" id="mId" placeholder="아이디를 입력하세요" onkeyup="regId()">
					<button type="button" id="idCheck" class="chkId-overlap">중복확인</button>
				</li>
				<li class="idChk"></li>
				<li class="login-bg">
					<label class="must">비밀번호</label>
					<input type="password" id="pwd" name="mPwd" placeholder="비밀번호를 입력하세요" onkeyup="regPwd()">
				</li>
				<li class="login-bg">
					<label class="must">비밀번호 확인</label>
					<input type="password" id="pwd2" name="mPwd2" placeholder="비밀번호를 다시 한 번 입력하세요">
				</li>
				<li class="pwdChk"></li>
				<li class="login-bg short-input">
					<label class="must">이메일</label>
					<input type="email" name="email" placeholder="이메일 주소를 입력해주세요.">
					<button type="button" class="email-certifi" id="emailCheck">인증하기</button>
					<br>
					<form method="post" name="authform" onsubmit="return check();">
						<input type="text" name="authnum"><br>
						<button type="button" id="authSubmit">인증하기</button>
					</form>
				</li>
				<li class="login-bg short-input">
					<label>우편번호</label>
					<input type="text" placeholder="우편번호를 검색하세요" id="postCode">
					<button type="button" class="zip-code" id="zipCode" onclick="execDaumPostCode()">주소검색</button>
				</li>
				<li class="login-bg hidden">
					<label>주소</label>
					<input type="text" id="address" name="address" placeholder="주소를 입력해주세요">
				</li>
				<li class="login-bg">
					<label></label>
					<input type="text" id="detailAddress" name="address2" placeholder="상세 주소를 입력해주세요">
				</li>

				<li class="pl10 pt20 pb10 must hidden">
					<span class="">최소 의사 한 명은 필수 입력사항 입니다.</span>
					<button type="button" class="fr add-btn" id="careerBtn" onclick="addDentist()">추가</button>
				</li>

				<li class="login-bg getData">
					<label>의사명</label>
					<input type="text" id="dentistName" placeholder="의사 이름을 적어주세요">
				</li>
				<li class="login-bg getData">
					<label>의사성별</label>
					<input type="radio" name="gender" value="M" id="male" class="reset">
					<label for="male" class="reset">남자</label>
					<input type="radio" name="gender" value="F" id="female" class="reset">
					<label for="female" class="reset">여자</label>
				</li>
				<li class="other-bg">
					<label class="must">전문분야</label> 
					
					<!-- 전문분야 체크박스 -->
					<div class="chkbox-wrap">
						<input type="radio" id="field1" name="field" value="10" />
						<label for="field1">구강내과</label>
						<input type="radio" id="field2" name="field" value="20" />
						<label for="field2">구강악안면 방사선과</label>
						<input type="radio" id="field3" name="field" value="30" />
						<label for="field3">구강악악면외과</label>
						<input type="radio" id="field4" name="field" value="40" />
						<label for="field4">구강외과</label>
						<br> <br> 
						<input type="radio" id="field5" name="field" value="50" />
						<label for="field5">소아치과</label>
						<input type="radio" id="field6" name="field" value="60" />
						<label for="field6">예방치과</label>
						<input type="radio" id="field7" name="field" value="70" />
						<label for="field7">치아교정</label>
						<input type="radio" id="field8" name="field" value="80" />
						<label for="field8">치아마취과</label>
						<br> <br>
						<input type="radio" id="field9" name="field" value="90" />
						<label for="field9">치아보존과</label>
						<input type=radio id="field10" name="field" value="100" />
						<label for="field10">치아보철</label>
						<input type="radio" id="field11" name="field" value="110" />
						<label for="field11">치주과</label>
					</div> <!-- chkbox-wrap -->
				</li>
				<li>
					<div id="dentistList" class="dentistList">
						<ul class="dentist-list">
							<li><span class="">이름</span><span class="">성별</span><span class="">전문분야</span></li>
						</ul>
					</div>
				</li>

				<li class="pl10 pt20 pb10">
					<span class="must">등록하신 사진은치과 상세페이지에 게시되며 마이페이지에서 수정하실 수 있습니다.</span>
				</li>

				<li class="form-group form_file">
					<label>병원 사진</label>
					<div class="filebox2 bs3-primary preview-image2">
						<input class="upload-name2" value="파일선택" disabled="disabled" style="width: 250px;"> 
						<label for="input_file2">업로드</label>
						<input type="file" id="input_file2" class="upload-hidden2">
						<br>
						<p class="mt10">
							- 5MB 미만의 파일만 등록할 수 있습니다.<br> 
							- 이미지 도용할 경우 법적 절차에 따라 처벌 받을 수 있습니다.<br>
							- 병원 사진은 최대 4장까지 넣을 수 있으며 회원가입 후 수정은 마이페이지에서 변경하시기바랍니다.
						</p>
					</div> 
					
					<br>
					<div id="fileArea">
						<input type="file" id="thumbnail1" name="thumbnailImg1" onchange="LoadImg1(this);">
						<input type="file" id="thumbnail2" name="thumbnailImg1" onchange="LoadImg2(this);">
						<input type="file" id="thumbnail3" name="thumbnailImg1" onchange="LoadImg3(this);">
					</div> <!-- fileArea -->

					<div class="thumbArea">
						<div id="thumbArea1">
							<img id="thumbs1">
						</div>
						<div id="thumbArea2">
							<img id="thumbs2">
						</div>
						<div id="thumbArea3">
							<img id="thumbs3">
						</div>
					</div> <!-- thumbArea -->
				</li>
			</ul>

			<button type="submit" class="join-member">확인</button>
			<button type="reset" class="join-can">취소하기</button>
		</form>
	</div>
</div>
<!-- CjoinPage -->


<script>
//이메일 인증
function check(){
	var form = document.authenform;
	var authNum = ${authNum};
	
	if(!form.authnum.val){
		alert("인증번호를 입력하세요");
		return false;
	}
	if(form.authnum.val != authNum){
		alert("틀린 인증번호입니다. 인증번호를 다시 입력해주세요");
		form.authnum.value = "";
		return false;
	}
	if(form.auth.value == authNum){
		opener.document.userinput.mailCheck.value = "인증완료";
		self.close();
	}
}

	//병원 사진 파일 업로드
	$(function() {
		$("#fileArea").hide();

		$("#thumbArea1").click(function() {
			$("#thumbnail1").click();
		});

		$("#thumbArea2").click(function() {
			$("#thumbnail2").click();
		});

		$("#thumbArea3").click(function() {
			$("#thumbnail3").click();
		});
	});

	function LoadImg1(value) {
		if (value.files && value.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#thumbs1").attr("src", e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}

	function LoadImg2(value) {
		if (value.files && value.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#thumbs2").attr("src", e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}

	function LoadImg3(value) {
		if (value.files && value.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#thumbs3").attr("src", e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
</script>

<script type="text/javascript">
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function execDaumPostCode() {
		var width = 500; //팝업의 너비
		var height = 600; //팝업의 높이

		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = data.address; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 기본 주소가 도로명 타입일때 조합한다.
						if (data.addressType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('address').value = fullAddr;
						document.getElementById('detailAddress').focus();

					}
				}).open({
			left : ((window.screen.width - width) / 2),
			top : ((window.screen.height - height) / 2)
		});
	}
</script>


<!-- footer -->
<%@ include file="../common/footer.jsp"%>