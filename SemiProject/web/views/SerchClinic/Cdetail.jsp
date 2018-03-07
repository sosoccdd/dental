<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/Cdetail.css">
<link rel="stylesheet" href="../../css/admin/bootstrap.min.css">
<link rel="stylesheet" href="../../css/admin/w3.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../../js/admin/jquery.min.js"></script>
<script src="../../js/admin/bootstrap.min.js"></script>
<!-- 별점 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>


<title>Insert title here</title>
<style>
        .h_graph ul{margin:0 50px 0 50px;padding:1px 0 0 0;border:1px solid #ddd;border-top:0;border-right:0;font-size:11px;font-family:Tahoma, Geneva, sans-serif;list-style:none}
        .h_graph li{position:relative;margin:10px 0;vertical-align:top;white-space:nowrap}
        .h_graph .g_term{position:absolute;top:0;left:-50px;width:40px;font-weight:bold;color:#767676;line-height:20px;text-align:right}
        .h_graph .g_bar{display:inline-block;position:relative;height:20px;border:1px solid #ccc;border-left:0;background:#e9e9e9}
        .h_graph .g_bar span{position:absolute;top:0;right:-50px;width:40px;color:#767676;line-height:20px}
        
        .grade {
        	margin-top:1px;
        	display:inline;
        	background:gray;
        	float:left;
        	overflow: hidden;
        	width:500px;
        	height:13px;
        }
        .grade span {
        	background:yellow;
        	float: left;
        	height:13px;
        }
        
        
</style>

</head>
<body>

	<!-- 헤더 -->
	<%@ include file="../../views/common/header.jsp" %>

 
 		<div class="v11">
			<a class="_2JKJyMMHNAnOy6iOF0uM1B"
				href="http://map.naver.com/?menu=location&amp;mapMode=0&amp;lat=37.50600592644982&amp;lng=127.05252754926525&amp;dlevel=12&amp;title=블루비뇨기과 강남점"
				target="_blank" data-reactid="145">
				<img class="_3BQ7AC7USlQ8966zS3gPjD" src="https://openapi.naver.com/v1/map/staticmap.bin?clientId=dlQxfR2KGEo4SIHn1Q1_&amp;url=https://www.ddocdoc.com&amp;crs=EPSG:4326&amp;center=127.05252754926525,37.50600592644982&amp;level=12&amp;w=960&amp;h=270&amp;baselayer=default&amp;markers=127.05252754926525,37.50600592644982&amp;format=png" alt="블루비뇨기과 강남점 지도" data-reactid="146">
			</a>
		</div>
	<div class="w1200 middle v1" align="center">
		<div class="v2">
		<br>
			<label class="la1" align="center">이삭치과</label> <br> 
			<label align="center">서울 강남구 역삼동 826-6 6층</label> <br><br>
			<div class="v3 middle">
				<div class="fl v4">
					<img class="img2" src="../../images/SerchClinic/홈페이지.PNG">
					<br> <label>홈페이지</label>
				</div>
				<div>
					<img class="img2" src="../../images/SerchClinic/길찾기.PNG">
					<br> <label>길찾기</label>
				</div>
			</div>
		</div>
		<br>
		<br> <br>
		<br> <br>
		<br>

		<div class="tab">
			<button class="tablinks w390-button" onclick="openCity(event, 'London')" id="defaultOpen">병원정보</button>
			<button class="tablinks w390-button" onclick="openCity(event, 'Paris')">이벤트</button>
			<button class="tablinks w390-button" onclick="openCity(event, 'Tokyo')">후기</button>
		</div>





		<div id="London" class="tabcontent">

			<div id="London" class="v7" align="center">
				<label class="f19">진료시간</label><br> <br>
				<div>
					<div class="vv6 fl" align="left">

						<label>월,화,수,목</label><br> <label>오전 10:00 ~ 오후 9:00</label>
					</div>
					<div class="vv6" align="left">
						<label>토</label> <br> <label>오전 10:00 ~ 오후 2:00</label>
					</div>
					<br> <br>
					<div class="vv6 fl" align="left">
						<label>금</label><br> <label>오후 1:00 ~ 오후 10:00</label>
					</div>
					<div class="vv6" align="left">
						<label>일</label><br> <label>오후 12:00 ~ 오후 5:00</label>
					</div>
					<br> <label class="la3">점심시간 : 오후 1:00 ~ 오후 2:00</label> <br>
					<label class="la4">공휴일 진료 없음</label><br> <label class="la5">병원
						방문전에 꼭 전화주세요</label> <br>
				</div>
				<br> <br>

				<div class="dd1">
					<label class="f19">진료과목</label>
					<div class="dd2">
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/레진.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/보철치료.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/사랑니.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/스케일링.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/임플란트.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/충치.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/치아교정2.png">
						</div>
						<div class="imdi fl">
							<img class="imgdi" src="../../images/SerchClinic/치아미백.png">
						</div>
						<div class="imdi1">
							<img class="imgdi" src="../../images/SerchClinic/투명교정.png">
						</div>
					</div>
				</div>

				<div>
					<div>
						<label class="f19">시설안내</label>
					</div>
					<div class="slider-holder">
						<span id="slider-image-1"></span> <span id="slider-image-2"></span>
						<span id="slider-image-3"></span>
						<div class="image-holder">
							<img src="../../images/SerchClinic/111.png"
								class="slider-image image-1" /> <img
								src="../../images/SerchClinic/222.png"
								class="slider-image image-2" /> <img
								src="../../images/SerchClinic/333.png"
								class="slider-image image-3" />
						</div>
						<div class="button-holder">
							<a href="#slider-image-1" class="slider-change slc1"></a> <a
								href="#slider-image-2" class="slider-change slc1"></a> <a
								href="#slider-image-3" class="slider-change slc1"></a>
						</div>
					</div>
					<br><br>

				</div>
			</div>


			<!-- 병원정보 -->
		</div>

		<div id="Paris" class="tabcontent" align="center">
			<br><br>
			
			<h3>이쁜 미소를 위한 심미 교정 이벤트</h3>
			<br>
			<label class="f17">이벤트 기간 : ~ 2017.03.05</label>
			<div class="div-back-size5 text-center-tag">
				<br>
				<img alt="" src="../../images/SerchClinic/이벤트이미지1.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트이미지2.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트이미지3.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트이미지4.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트이미지5.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트이미지6.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트이미지7.jpg">
				

				

			</div>
			<br><hr><br><br>
			<div class="div-back-size5 text-al-left">
			<label class="f17 ">진행중인 이벤트</label>
			<br>
			<div class="di-in-bl">
				<img alt="" src="../../images/SerchClinic/이벤트하단1.jpg">
				<img alt="" src="../../images/SerchClinic/이벤트하단2.jpg">			
			</div>
			<br>
			
			
			
			</div>



		</div>
<div id="Tokyo" class="tabcontent">

			<div id="Tokyo" class="v7">
<%
int Cdetail = 1;
if(Cdetail==1){
%>

<div class="div-back-size5 text-center-tag">
	<br><br><br>
	<img alt="" src="../../images/SerchClinic/후기작성.png">
	
	
	<br><br>
	<label class="f20">아직 후기가 없습니다.</label>
	<br><br>
	<label class="f20">이 병원에 첫번째 후기를 남겨주세요</label>
	<br><br>
	<button class="f20 w3-white w3-border w3-border-blue w3-round button-pading-ho">후기 작성하기</button>

</div>




<%}else if(Cdetail==2){
%>
				<br><br>
					
					<!-- 별점 -->
					<div class="div-bar-size fl" >
					<br>
					<h1>4.5점</h1>

						<%
							int a = 4;

							if (a == 1) {
						%>
							<label class="option-tag-star f35">★☆☆☆☆</label>
						<%
							} else if (a == 2) {
						%>
							<label class="option-tag-star f35">★★☆☆☆</label>
						<%
							} else if (a == 3) {
						%>
							<label class="option-tag-star f35">★★★☆☆</label>
						<%
							} else if (a == 4) {
						%>
							<label class="option-tag-star f35">★★★★☆</label>
						<%
							} else if (a == 5) {
						%>
							<label class="option-tag-star f35">★★★★★</label>
						<%
							}
						%>

					<label class="f15">13명이 참여하였습니다.</label>
						<!-- <select class="select-tag f17 option-tag-star">
						<option class="f17 option-tag-star">★★★★★</option>
						<option class="f17 option-tag-star">★★★★☆</option>
						<option class="f17 option-tag-star">★★★☆☆</option>
						<option class="f17 option-tag-star">★★☆☆☆</option>
						<option class="f17 option-tag-star">★☆☆☆☆</option>
					</select> -->




				</div>
					<div class="div-bar-size3 fr" >
						<table class="table-test-ca">
						<tr>
							<td class="f18">진료만족도</td>
							<td>
							<div class="progress w500-div-test">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 90%">4.5</div>
							</div>
							</td>						
						</tr>
						<tr>
							<td class="f18">병원친절도</td>
							<td>
							<div class="progress">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
									style="width: 90%">4.5</div>
							</div>
							</td>						
						</tr>
						<tr>
							<td class="f18">시설만족도</td>
							<td>
							<div class="progress">
								<div class="progress-bar progress-bar-warning"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 90%">4.5</div>
							</div>
							</td>						
						</tr>
						
						</table>
						
						
						</div>


					
					
					<br><br><br><br><br><br><br><br>
					<hr>
					<%for(int i = 0; i<5; i++){ %>
					<br><br>
				<div class="div-bar-size2 fl">
					<label class="f15">soso****</label>&nbsp;&nbsp;<label class="f13">2017.07.08. 07:40:30</label>
					<a href="#" class="f-text-r f15">신고</a>
					<p></p>
					<label class="option-tag-star f20">★★★★★</label>&nbsp;&nbsp;<label class="f15 f-co-red">5</label>
				
				</div>
				<br><br><br>
				<div class="div-back-w text-center-tag">
					<label class="f17">진료만족도</label>
					&nbsp;&nbsp;
					<label class="option-tag-star f20">★</label>
					&nbsp;&nbsp;
					<label class="f17 f-co-red">5</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="f17">병원청결도</label>
					&nbsp;&nbsp;
					<label class="option-tag-star f20">★</label>
					&nbsp;&nbsp;
					<label class="f17 f-co-red">5</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="f17">시설만족도</label>
					&nbsp;&nbsp;
					<label class="option-tag-star f20">★</label>
					&nbsp;&nbsp;
					<label class="f17 f-co-red">5</label>
				</div>
				<div class="div-bar-size4 text-center-tag">
					<label class="f17 ">
						앞니가 걔져서 갔는데 완전 대박 핵잘해줘서 좋았어요 거기 연예인 많이 노는듯 진심 ㅋㅋㅋ 보겸 보고 완전 좋았다 보이루~앞니가 걔져서 갔는데 완전 대박 핵잘해줘서 좋았어요 거기 연예인 많이 노는듯 진심 ㅋㅋㅋ 보겸 보고 완전 좋았다 보이루~
					</label>
				</div>
				<br><br><br><br><br><hr>
			<%}%>
				
<div class="w3-center">
<div class="w3-bar">
  <a href="#" class="w3-button">&laquo;</a>
  <a href="#" class="w3-button">1</a>
  <a href="#" class="w3-button">2</a>
  <a href="#" class="w3-button">3</a>
  <a href="#" class="w3-button">4</a>
  <a href="#" class="w3-button">&raquo;</a>
</div>
<button class="f15 w3-white w3-border w3-border-blue w3-round button-c-ma">후기 작성하기</button>
</div>
			<%}else if(Cdetail==3){ %>



				<div class="div-back-size5 ">
					<br><br><br>
					<div class="text-al-left">
					
					<label class="f15 w100">후기 작성하기</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="f13 font-blue">*남겨주신 후기는 다른 분들이 좋은 병원을 선택할 수 있는 유용한 기준이 됩니다.</label>
					
					
					</div>
					<br><br><br>
					<div class="text-al-left">
					<label class="f15 w100">병원 이름</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<label class="f15">아삭 치과</label>
					</div>
					<br><br>
					<div class="text-al-left">
					<label class="f15 w100">병원 별점</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<label class="f15">1.아삭치과의 진료는 만족하셨나요?</label>
					<br><br>
					<label class="f15 w100"></label>
					<select class="select-tag-ditail f17 option-tag-star">
						<option class="f17 option-tag-star">★★★★★</option>
						<option class="f17 option-tag-star">★★★★☆</option>
						<option class="f17 option-tag-star">★★★☆☆</option>
						<option class="f17 option-tag-star">★★☆☆☆</option>
						<option class="f17 option-tag-star">★☆☆☆☆</option>
					</select>
					<br><br>
					<label class="f15 w100"></label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="f15">2.아삭치과는 친절하게 자세한 설명을 해주셨나요?</label>
					<br><br>
					<label class="f15 w100"></label>
					<select class="select-tag-ditail f17 option-tag-star">
						<option class="f17 option-tag-star">★★★★★</option>
						<option class="f17 option-tag-star">★★★★☆</option>
						<option class="f17 option-tag-star">★★★☆☆</option>
						<option class="f17 option-tag-star">★★☆☆☆</option>
						<option class="f17 option-tag-star">★☆☆☆☆</option>
					</select>
					
					<br><br>
					<label class="f15 w100"></label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="f15">3.아삭치과의 시설에 불편함이 없었고 청결도가 유지되고 있나요?</label>
					<br><br>
					<label class="f15 w100"></label>
					<select class="select-tag-ditail f17 option-tag-star">
						<option class="f17 option-tag-star">★★★★★</option>
						<option class="f17 option-tag-star">★★★★☆</option>
						<option class="f17 option-tag-star">★★★☆☆</option>
						<option class="f17 option-tag-star">★★☆☆☆</option>
						<option class="f17 option-tag-star">★☆☆☆☆</option>
					</select>
					<br><br>
					<label class="f15 w100"></label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="f15">4.아삭치과에 대해 느낀점을 자유롭게 입력해 주세요.</label>
					<br><br>
					<label class="f15 w100"></label>
					<textarea class="textarea-tag-st" rows="5" cols="100" placeholder="현행법을 위반할 소지가 있거나 근거없이 비방을 목적으로 한 글은 블라인드 처리가 될 수 있습니다." name="content" style="resize: none;"></textarea>
					<br><br>
					</div>
					<div class="text-center-tag">
					<button class="w3-button w3-white w3-border w3-round-large">등록</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-white w3-border w3-round-large">취소</button>
					</div>

				</div>

				<%} %> 
			</div>
				<br> <br>

				

				</div>
			</div>


			<!-- 병원정보 -->



	<script>
 	/* 별점함수 */
 	
 	// star rating

 	
 	
 	
 	
 	
 	/* 탭 함수 */
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
			
		}
			document.getElementById("defaultOpen").click();
	</script>
	<br><br>
 <%@include file="../../views/common/footer.jsp"%>
</body>
</html>
