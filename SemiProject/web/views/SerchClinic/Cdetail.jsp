<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/Cdetail.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="hGraph.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<label class="la1" align="center">이삭치과</label> <br> <br> <label
					align="center">서울 강남구 역삼동 826-6 6층</label> <br> <br>
				<div class="v3 middle">
					<div class="fl v4">
						<img class="img2" src="../../images/SerchClinic/house1.png">
						<br>
						<label>홈페이지</label>
					</div>
					<div>
						<img class="img2" src="../../images/SerchClinic/loadsearch.png">
						<br>
						<label>길찾기</label>
					</div>
				</div>
			</div>
			<br><br>
			<br><br>
			
			<br><br>
		
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">병원정보</button>
			<button class="tablinks" onclick="openCity(event, 'Paris')">이벤트</button>
			<button class="tablinks" onclick="openCity(event, 'Tokyo')">후기</button>
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

				</div>
			</div>
 		
 	
 	<!-- 병원정보 -->
 	</div>
 	
 	<div id="Paris" class="tabcontent" align="center">
			<h3>이벤트페이지</h3>

		</div>
 	
 	
 	<div id="Tokyo" class="tabcontent" align="center">
		<br><br><br><br>
		<div class="t1">
			<div class="t11 fl">
				<h3 class="h333" style="color:blue;">4.7</h3>
				<br>
				<label class="f20">총점</label>
				<br>
				
				<div class="grade">
					<span style="width:50%"></span>
				</div>
				
			
			</div>
		
			<div class="t22">

					<div class="h_graph">
						<ul>
							<li><span class="g_term">SUN</span><span class="g_bar"
								style="width: 0%"><span>0%</span></span></li>
							<li><span class="g_term">MON</span><span class="g_bar"
								style="width: 20%"><span>20%</span></span></li>
							<li><span class="g_term">TUE</span><span class="g_bar"
								style="width: 30%"><span>30%</span></span></li>
							<li><span class="g_term">WED</span><span class="g_bar"
								style="width: 40%"><span>40%</span></span></li>
							<li><span class="g_term">THU</span><span class="g_bar"
								style="width: 50%"><span>50%</span></span></li>
							<li><span class="g_term">FRI</span><span class="g_bar"
								style="width: 60%"><span>60%</span></span></li>
							<li><span class="g_term">SAT</span><span class="g_bar"
								style="width: 100%"><span>100%</span></span></li>
						</ul>
					</div>

			</div>

				










		</div>
 	
 	
 	
 	</div>
 	</div>
 
 
 
 
 
 	<script>
 	
 	
 		var locked = 0;
 		
 		function show(star){
 			if(locked)
 				return;
 			var i;
 			var image;
 			var el;
 			var e = document.getElementById('startext');
 			var stateMsg;
 			
 			for(i= 1; i<= star ; i++){
 				image = 'image' + i;
 				el = decument.getElementById(image);
 				el.src='image/star/star1.png';
 			}
 			
 			switch(star){
 			case 1: 
 				stateMsg = "괜히봤어요";
 				break;
 			case 2:
 				stateMsg = "기대하진 말아요";
 				break;
 			case 3 :
 				stateMsg = "무난했어요";
 				break;
 			case 4 :
 				stateMsg = "기대해도 좋아요";
 				break;
 			case 5 :
 				stateMsg = "너무 멋진 영화였어요";
 				break;
 			default :
 				stateMsg ="";
 				
 			}
 			e.innerHTML = stateMsg;
 		}
 		
 		function noshow(star){
 			if(locked)
 				return;
 			var i;
 			var image;
 			var el;
 			
 			for(i=1; i<=star;i++){
 				image = 'image' +i;
 				el = document.getElementById(image);
 				el.src = "image/star/star0.png";
 			}
 		}
 		
 		function lock(star){
 			show(star);
 			locked =1;
 		}
 		
 		function mark(star){
 			lock(star);
 			alert("선택2" + star);
 			document.cmtform.star.value=star;
 		}
 	
 	
 	
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
 
	<!-- <div class="v1">
	
	<div>
		<div class="v11">
			<a class="_2JKJyMMHNAnOy6iOF0uM1B"
				href="http://map.naver.com/?menu=location&amp;mapMode=0&amp;lat=37.50600592644982&amp;lng=127.05252754926525&amp;dlevel=12&amp;title=블루비뇨기과 강남점"
				target="_blank" data-reactid="145"><img
				class="_3BQ7AC7USlQ8966zS3gPjD"
				src="https://openapi.naver.com/v1/map/staticmap.bin?clientId=dlQxfR2KGEo4SIHn1Q1_&amp;url=https://www.ddocdoc.com&amp;crs=EPSG:4326&amp;center=127.05252754926525,37.50600592644982&amp;level=12&amp;w=960&amp;h=270&amp;baselayer=default&amp;markers=127.05252754926525,37.50600592644982&amp;format=png"
				alt="블루비뇨기과 강남점 지도" data-reactid="146"></a>
			<img class="img1" src="../../images/SerchClinic/지도이미지.PNG">
			<div class="v2">
				<label class="la1" align="center">이삭치과</label> <br> <br> <label
					align="center">서울 강남구 역삼동 826-6 6층</label> <br> <br>
				<div class="v3 middle">
					<div class="fl v4">
						<img class="img2" src="../../images/SerchClinic/house1.png">
					</div>
					<div>
						<img class="img2" src="../../images/SerchClinic/loadsearch.png">
					</div>
				</div>
			</div>
		</div>
	
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'London')">London</button>
			<button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
			<button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button>
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

				</div>
			</div>







		</div>

		<div id="Paris" class="tabcontent" align="center">
			<h3>이벤트페이지</h3>

		</div>

		<div id="Tokyo" class="tabcontent" align="center">
			<h3>Tokyo</h3>
			<p>Tokyo is the capital of Japan.</p>
		</div>



	</div>
	</div>

	 -->











































	<!-- 	<div class="w1200 middle v5" align="center">
			<ul align="center">
				<li><a href="#">병원정보</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">후기</a></li>
			</ul>
			<br>
			<br>
			<br>
			<br> 
			<br>
			<br>
			병원정보
			<div class="v6" >
			<label class="f19">진료시간</label><br>
				<br>
				<div>
					<div class="vv6 fl" align="left">
					
						<label>월,화,수,목</label><br> <label>오전 10:00 ~ 오후 9:00</label>
					</div>
					<div class="vv6" align="left">
						<label>토</label> <br> <label>오전 10:00 ~ 오후 2:00</label>
					</div>
					<br>
					<br>
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
				<br>
				<br>
				
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
							<img src="../../images/SerchClinic/111.png" class="slider-image image-1" /> <img src="../../images/SerchClinic/222.png"
								class="slider-image image-2" /> <img src="../../images/SerchClinic/333.png" class="slider-image image-3" />
						</div>
						<div class="button-holder">
							<a href="#slider-image-1" class="slider-change slc1"></a> <a
								href="#slider-image-2" class="slider-change slc1"></a> <a
								href="#slider-image-3" class="slider-change slc1"></a>
						</div>
					</div>

				</div>
		</div>
		병원정보
		
		
		후기
		<div class="s1">
			<h2>4.7</h2>
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star"></span>
			<span class="fa fa-star"></span>
		</div>
	</div> -->












	<!-- footer -->
	<%@ include file="../../views/common/footer.jsp" %>

</body>
</html>











<!-- <div class="v11">
			<a class="_2JKJyMMHNAnOy6iOF0uM1B"
				href="http://map.naver.com/?menu=location&amp;mapMode=0&amp;lat=37.50600592644982&amp;lng=127.05252754926525&amp;dlevel=12&amp;title=블루비뇨기과 강남점"
				target="_blank" data-reactid="145"><img
				class="_3BQ7AC7USlQ8966zS3gPjD"
				src="https://openapi.naver.com/v1/map/staticmap.bin?clientId=dlQxfR2KGEo4SIHn1Q1_&amp;url=https://www.ddocdoc.com&amp;crs=EPSG:4326&amp;center=127.05252754926525,37.50600592644982&amp;level=12&amp;w=960&amp;h=270&amp;baselayer=default&amp;markers=127.05252754926525,37.50600592644982&amp;format=png"
				alt="블루비뇨기과 강남점 지도" data-reactid="146"></a>
			<img class="img1" src="../../images/SerchClinic/지도이미지.PNG">
			<div class="v2">
				<label class="la1">이삭치과</label> <br> <br> <label
					align="center">서울 강남구 역삼동 826-6 6층</label> <br> <br>
				<div class="v3 middle">
					<div class="fl v4">
						<img class="img2" src="../../images/SerchClinic/house1.png">
					</div>
					<div>
						<img class="img2" src="../../images/SerchClinic/loadsearch.png">
					</div>
				</div>
			</div>
		</div>
		<br>
		
		
		

		<div class="w1200 middle v5" align="center">
			<button class="tablinks" onclick="openCity1(event, 'London')">병원정보</button>
			<button class="tablinks" onclick="openCity(event, 'Paris')">이벤트</button>
			<button class="tablinks" onclick="openCity(event, 'Tokyo')">후기</button>
			<br><br>
		
		
		
			<div id="London" class="v7" align="center">
			<label class="f19">진료시간</label><br>
				<br>
				<div>
					<div class="vv6 fl" align="left">
					
						<label>월,화,수,목</label><br> <label>오전 10:00 ~ 오후 9:00</label>
					</div>
					<div class="vv6" align="left">
						<label>토</label> <br> <label>오전 10:00 ~ 오후 2:00</label>
					</div>
					<br>
					<br>
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
				<br>
				<br>
				
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
							<img src="../../images/SerchClinic/111.png" class="slider-image image-1" /> <img src="../../images/SerchClinic/222.png"
								class="slider-image image-2" /> <img src="../../images/SerchClinic/333.png" class="slider-image image-3" />
						</div>
						<div class="button-holder">
							<a href="#slider-image-1" class="slider-change slc1"></a> <a
								href="#slider-image-2" class="slider-change slc1"></a> <a
								href="#slider-image-3" class="slider-change slc1"></a>
						</div>
					</div>

				</div>
		</div>
		
		
		
		<div id="Paris" class="tabcontent">
			<h3>이벤트페이지</h3>
		</div>
		
		<div id="Tokyo" class="tabcontent">
			<h3>Tokyo</h3>
			<p>Tokyo is the capital of Japan.</p>
		</div>
		
		
		
		
		
		
			</div> -->		
<!-- 
		<script>
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
			
			
			
		</script> -->