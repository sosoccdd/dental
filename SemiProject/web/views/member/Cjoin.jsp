<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/join.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../../js/join.js"></script>
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
					<input type="text" placeholder="아이디를 입력하세요">
					<button type="button" class="chkId-overlap">중복확인</button>
				</li>
				<li class="idChk">
					<p class="united">사용할 수 있는 아이디 입니다.</p>
					<p class="inconcinnity">아이디가 중복됩니다.</p>
				</li>
				<li class="login-bg">
					<label class="must">비밀번호</label>
					<input type="password" placeholder="비밀번호를 입력하세요">
				</li>
				<li class="login-bg">
					<label class="must">비밀번호 확인</label>
					<input type="password" placeholder="비밀번호를 다시 한 번 입력하세요">
				</li>
				<li class="pwdChk">
					<p class="united">패스워드가 일치합니다.</p>
					<p class="inconcinnity">패스워드가 일치하지 않습니다.</p>
				</li>
				<li class="login-bg short-input">
					<label class="must">이메일</label>
					<input type="email" placeholder="이메일 주소를 입력해주세요.">
					<button type="button" class="email-certifi" >인증하기</button>
				</li>
				<li class="login-bg short-input">
					<label class="must">우편번호</label>
					<input type="text" placeholder="우편번호를 검색하세요">
					<button type="button" class="zip-code" id="zipCode">주소검색</button>
				</li>
				<li class="login-bg hidden">
					<label class="must">주소</label>
					<input type="password" placeholder="주소를 적어주세요">
				</li>
				
				<li class="pl10 pt20 pb10 must"><span class="">최소 의사 한 명은 필수 입력사항 입니다.</span></li>
				
				<li class="login-bg getData">
					<label>의사명</label>
					<input type="text" placeholder="의사 이름을 적어주세요">
				</li>
				<li class="login-bg getData">
					<label>의사성별</label>
					<input type="radio" name="gender" id="male" class="reset">
					<label for="male" class="reset">남자</label>
					
					<input type="radio" name="gender" id="female" class="reset">
					<label for="female" class="reset">여자</label>
				</li>
				<li class="other-bg">
					<label>의사분야</label>
					
					<!-- 전문분야 체크박스 -->
					<div class="chkbox-wrap">
						<input type="checkbox" id="field1" name="field" value="구강내과" />
						<label for="field1">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">구강내과</p>
						</label>
						
						<input type="checkbox" id="field2" name="field" value="구강악안면 방사선과" />
						<label for="field2">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">구강악안면 방사선과</p>
						</label>
						
						<input type="checkbox" id="field3" name="field" value="구강악안면외과" />
						<label for="field3">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">구강악악면외과</p>
						</label>
						
						<input type="checkbox" id="field4" name="field" value="구강외과" />
						<label for="field4">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">구강외과</p>
						</label>
						<br>
						<br>
						
						<input type="checkbox" id="field5" name="field" value="소아치과" />
						<label for="field5">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">소아치과</p>
						</label>
						
						<input type="checkbox" id="field6" name="field" value="예방치과" />
						<label for="field6">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">예방치과</p>
						</label>
						
						<input type="checkbox" id="field7" name="field" value="치아교정" />
						<label for="field7">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">치아교정</p>
						</label>
						
						<input type="checkbox" id="field8" name="field" value="치아마취과" />
						<label for="field8">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">치아마취과</p>
						</label>
						<br>
						<br>
						
						<input type="checkbox" id="field9" name="field" value="치아보존과" />
						<label for="field9">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">구강내과</p>
						</label>
						
						<input type="checkbox" id="field10" name="field" value="치아보철" />
						<label for="field10">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">치아보철</p>
						</label>
						
						<input type="checkbox" id="field11" name="field" value="치주과" />
						<label for="field11">
							<svg shape-rendering="optimizeQuality" preserveAspectRatio="xMidYMid meet" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<rect class="outer" fill="#BDBCB9" x="0" y="0" width="64" height="64" rx="8"></rect>
								<rect class="inner" fill="#BDBCB9" x="4" y="4" width="56" height="56" rx="4"></rect>
								<polyline class="check" stroke="#FFFFFF" stroke-dasharray="270" stroke-dashoffset="270" stroke-width="8" stroke-linecap="round" fill="none" stroke-linejoin="round" points="16 31.8 27.4782609 43 49 22"></polyline>
							</svg>
							<p class="p-label">치주과</p>
						</label>
					</div>
					<!-- chkbox-wrap -->
				</li>
				
				<li class="login-bg">
					<label>의사경력사항</label>
					<input type="text" id="career" placeholder="학력 및 경력사항을 입력해주세요.">
					<button type="button" class="add-btn" id="careerBtn" onclick="addCareer()">추가</button>
				</li>
				<li><div id="careerList" class="careerList"></div></li>
				
				<li class="pl10 pt20 pb10"><span class="must">등록하신 사진은 치과 상세페이지에 게시되며 마이페이지에서 수정하실 수 있습니다.</span></li>
				
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
							- 프로필 사진은 비율에 따라 줄어들어 이미지가 변형될 수 있으니 정사각형 사이즈를 권장합니다.
						</p>
					</div>

				</li>
			</ul>
			
			<button type="submit" class="join-member">확인</button>
			<button type="reset" class="join-can">취소하기</button>
		</form>
	</div>
</div>
<!-- CjoinPage -->

<!-- footer -->
<%@ include file="../common/footer.jsp"%>