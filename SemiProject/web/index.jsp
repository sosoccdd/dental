<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header -->
<%@ include file="views/common/header.jsp" %>
<link href="jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
<script src="jquery.bxslider/jquery.bxslider.js"></script>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<style>





</style>

<!-- cssArea -->
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/main	.js"></script>
	
	<!-- 메인슬라이더 -->
	<div class="key_visiual">
		<img src="images/main/mainSlider01.jpg" width="100%">
	</div>
	<!-- key_visiual -->
	
	<!-- 월간베스트 -->
	<div class="monthlyBest w1200 middle">
		<h3>월간베스트</h3>
		
		<!-- 월간 베스트 의사 -->
		<div class="monthlyDentist">
			<dl>
				<dt><img src="images/dentist/dentist01.png"></dt>
				<dd class="dentName">이준호 의사</dd>
				<dd class="discription">99.9%의 환자분들이 인정한 안아프고 간단하고 확실한 임플란트 수술!</dd>
				<dd class="dentDept">임플란트 · 라미네이트 · 인비절라인</dd>
				<dd class="replyPoint">답변 포인트  240</dd>
				<dd><button type="button">자세히 보기</button></dd>
				<dd class="line"></dd>
			</dl>
			
			<dl>
				<dt><img src="images/dentist/dentist02.jpg"></dt>
				<dd class="dentName">이수진 의사</dd>
				<dd class="discription">예방에서 치료, 체계적인 사후관리까지 늘당신과 함께 합니다.</dd>
				<dd class="dentDept">보철 · 임플란트· 심미보철· 올세라믹· 라미네이트· 레이저</dd>
				<dd class="replyPoint">답변 포인트  145</dd>
				<dd><button type="button">자세히 보기</button></dd>
				<dd class="line"></dd>
			</dl>
			
			<dl>
				<dt><img src="images/dentist/dentist03.jpg"></dt>
				<dd class="dentName">김성근 의사</dd>
				<dd class="discription">진단과 상담의 전과정에서 프리니티 시스템 도입한 수술</dd>
				<dd class="dentDept">돌출입교정 · 부정교합 · 수술교정 · 성장조절교정 · 주걱턱교정 </dd>
				<dd class="replyPoint">답변 포인트  105</dd>
				<dd><button type="button">자세히 보기</button></dd>
			</dl>
		</div>
		<!-- monthlyDentist -->
		
		<ul class="monthlyClinic">
			<li class="f15 txt-ce">
				소중한 치아를 관리하는<br>
				치과 진료의 가치 있는 선택<br>
				<span class="w700 f17">치과 이용후기를 통해<br>
				가장 좋은 치과와 함께하세요!</span>
			</li>
			
			<li class="bestClinic">
				<p class="f18 w700 mb20">하나로치과의원</p>
				<p class="lh20">
					주소 : 서울특별시 강남구 삼성동 166-2<br>
					전화번호 : 02-563-5435<br>
					진료과목 : 레이저 임플란트, 보철, 치주, 사랑니 , 치아성형, 치아미백
				</p>
				<button type="button" class="reserve">예약</button>
				<button type="button" class="goToClinic">병원보기</button>
			</li>
			
			<li class="bestClinic">
				<p class="f18 w700 mb20">더블유화이트치과의원</p>
				<p class="lh20">
					주소 : 서울특별시 강남구 테헤란로87길 17 304호 (삼성동)<br>
					전화번호 : 02-564-0075<br>
					진료과목 : 임플란트, 치아성형, 무삭제 앞니 보철, 치아교정 
				</p>
				<button type="button" class="reserve">예약</button>
				<button type="button" class="goToClinic">병원보기</button>
			</li>
			
			<li class="bestClinic">
				<p class="f18 w700 mb20">이준호서울미시간치과의원</p>
				<p class="lh20">
					주소 : 서울특별시 강남구 삼성동 142046 암천빌딩 4층<br>
					전화번호 : 6273-2828<br>
					진료과목 : 임플란트, 라미네이트, 투명교정, 치아미백, 보톡스
				</p>
				<button type="button" class="reserve">예약</button>
				<button type="button" class="goToClinic">병원보기</button>
			</li>
		</ul>
		<!-- monthlyClinic -->
	</div>
	<!-- monthlyBest -->
	
	<!-- 문의하기 -->
	<div class="ask middle bt">
		<h3 class="w1200">문의하기</h3>
		
		<ul class="w1200 middle">
			<li onclick="location.href='/semi/views/QnA/QnAView.jsp'" class="mb40 pb40">
				<p class="f15">치아교정</p>
				<p class="f20 mb15">교정 후 상악 확장장치에 음식물 끼임</p>
				<p class="f15 mb15"><span class="f15 c-fe7506 w700 mr10">답변</span> 이수진 전문의</p>
				<p class="f15">
현재 상태를 정확하게 알 수 없기 때문에 설명드리기가 힘듭니다만 교합조정 시에 치아를 과도하게 삭제하는 경우는 드뭅니다.  좀 더 지켜보시는 것이 좋을 듯 하지만, 씹을 때 불편감이 
있다면 치과에 가셔서서 검진을 해보시는 것이 더 좋으실 거 같습니다. 만약 노출된 경우에는 신경치료를 하게됩니다. 전반적으로 좀 더 지켜보시는 것이 좋을것으로 ···
				</p>
				<div class="imgWrap mt10 mr15 ml15"><img src="images/dentist/dentist02.jpg"></div>
				<p class="f16 mt15">다른 전문가 답변 1개</p> 
			</li>
			
			<li onclick="location.href='/semi/views/QnA/QnAView.jsp'">
				<p class="f15">사랑니</p>
				<p class="f20 mb15">사랑니 발치후 신경손상율 검사 질문입니다.</p>
				<p class="f15 mb15"><span class="f15 c-fe7506 w700 mr10">답변</span> 이준호 전문의</p>
				<p class="f15">
#1. 혀의 감각
- 혀의 감각을 담당하는 신경은 크게 3가지로, 앞 2/3의 일반적인 감각을 담당하는 혀신경 (Lingual nerve), 뒤 1/3 의 일반적인 감각을 담당하는 설인신경 
Glossopharyngeal nerve), 그리고 '맛' 이라는 특수한 감각을 담당하는 고삭신경 (chorda tympani nerve) 로 나누어져 있고, 각각 신경운 좌우 1쌍씩 존재하여 혀의 좌 우 감각을 ···
				</p>
				<div class="imgWrap mt10 mr15 ml15"><img src="images/dentist/dentist01.png"></div>
				<p class="f16 mt15">다른 전문가 답변 1개</p> 
			</li>
			<li class="mt20"><button type="button" onclick="location.href='/semi/views/QnA/QnAList.jsp'">문의하기 전체보기</button></li>
		</ul>
		
	</div>
	<!-- ask -->

	
	<!-- 건강정보 -->
	<div class="dentalNews bt">
	<div class="w1200 middle relative">
		<h3>건강정보</h3>
		<div class="slidebox">
		    <ul class="slide">
		        <li>
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health01.jpg"></dt>
						<dd class="f15 ml15 mt10">치아 건강을 해치는 이갈이</dd>
						<dd class="f13 ml15 mb15 lh20">이갈이는 과연 어떤 증상일까요? 왜 치료가 필요할까요?</dd>
					</dl>
					
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health02.jpg"></dt>
						<dd class="f15 ml15 mt10">이갈이 때문에 나타나는 증상</dd>
						<dd class="f13 ml15 mb15 lh20">심한 이갈이는 치아와 턱에 어떤 문제를 일으킬까요?</dd>
					</dl>
					
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health03.jpg"></dt>
						<dd class="f15 ml15 mt10">이갈이를 하는 이유</dd>
						<dd class="f13 ml15 mb15 lh20">사람들이 이를 가는 데에는 어떤 원인이 있을까요?</dd>
					</dl>
				</li>

				
		        <li>
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health04.jpg"></dt>
						<dd class="f15 ml15 mt10">병원에서의 입냄새 진단과 치료</dd>
						<dd class="f13 ml15 mb15 lh20">병원에서는 심한 입냄새를 어떻게 진단, 치료할까요?</dd>
					</dl>
					
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health05.jpg"></dt>
						<dd class="f15 ml15 mt10">이갈이를 줄이는 방법</dd>
						<dd class="f13 ml15 mb15 lh20">어떻게 하면 이갈이 증상을 완화할 수 있을까요?</dd>
					</dl>
					
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health06.jpg"></dt>
						<dd class="f15 ml15 mt10">이갈이 자가 진단법</dd>
						<dd class="f13 ml15 mb15 lh20">이갈이가 얼마나 심한지 알아볼 수 있는 방법은 없을까요?</dd>
					</dl>
				</li>
				

		        <li>
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health07.jpg"></dt>
						<dd class="f15 ml15 mt10">입냄새를 줄이는 생활습관</dd>
						<dd class="f13 ml15 mb15 lh20">일상생활 속에서 입냄새를 줄일 수 있는 방법으로는 어떤 것들...</dd>
					</dl>
					
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health08.jpg"></dt>
						<dd class="f15 ml15 mt10">심한 입냄새의 원인</dd>
						<dd class="f13 ml15 mb15 lh20">입냄새가 발생하는 이유는 무엇일까요?</dd>
					</dl>
					
					<dl onclick="location.href='/semi/views/HealthInfo/HealthView.jsp'">
						<dt><img src="images/health/health09.jpg"></dt>
						<dd class="f15 ml15 mt10">입냄새 Q&A</dd>
						<dd class="f13 ml15 mb15 lh20">입냄새와 관련된 궁금증, 똑닥이 풀어드릴게요.</dd>
					</dl>
				</li>
		    </ul>
		</div>

		
		<div class="slidectrl">
		    <button type="button" id="leftbtn">&#10094;</button>
		    <button type="button" id="rightbtn">&#10095;</button>
		</div>

		<div class="w1200 middle">
			<button type="button" class="mt20" onclick="location.href='/semi/views/HealthInfo/HealthList.jsp'">건강정보 전체보기</button>
		</div>


 	</div>
 	
	</div>
	<!-- dentalNews -->
	
	
	
	<!-- 이벤트 -->

	<div class="event">
		<h3 class="w1200">이벤트</h3>
		
		<div class="RollDiv">
			<div>
				<a href=""><img src="images/event/event01.jpg" /></a>
				<a href=""><img src="images/event/event02.jpg" /></a>
				<a href=""><img src="images/event/event03.jpg" /></a>
				<a href=""><img src="images/event/event04.jpg" /></a>
				<a href=""><img src="images/event/event05.jpg" /></a>
				<a href=""><img src="images/event/event06.jpg" /></a>
				<a href=""><img src="images/event/event07.jpg" /></a>
			</div>
		</div>
		<!-- RollDiv -->
		
		<div class="nav">
			<button onClick="moveType=0;" class="le-btn">&#10094;</button>  
			<button onClick="moveType=1;" class="ri-btn">&#10095;</button>  
		</div>	

		<div class="w1200 middle bt">
			<button type="button" class="mt20" onclick="location.href='/semi/views/event/EventList.jsp'">이벤트 전체보기</button>
		</div>
	</div>

	<!-- event -->
	
	
	<div class="boardBox">
	<div class="w1200 middle hidden">
		<!-- 공지사항 -->
		<div class="notice">
			<h3><a href="/semi/views/notice/NoticeList.jsp">공지사항</a></h3>
			<ul>
				<li><a href="/semi/views/notice/NoticeView.jsp">[풍치/치주염] 풍치 진단과 검사<span class="">2018-02-03</span></a></li>
				<li><a href="/semi/views/notice/NoticeView.jsp">[치아교정] 부정교합의 문제점과 치료효과<span class="">2018-02-03</span></a></li>
				<li><a href="/semi/views/notice/NoticeView.jsp">[치아교정] 치아교정 시 발치를 해야하는 경우<span class="">2018-02-03</span></a></li>
			</ul>
		</div>
		<!-- notice -->
		
		<!-- 자주하는 질문 -->
		<div class="faq txt-ce f15 lh20">
			<h3 class="mt25">자주하는 질문</h3>
			서비스에 대해 궁금하세요?<br>
			<a href="#" class="f15 c-fe7506 w700 lh20">질문과 답변 보기</a>
		</div>
		<!-- faq -->
	</div>
	</div>
	<!-- boardBox -->
	
	
	
	
 

<script type="text/javascript">
//건강정보 스크립트
var idx = 0;
var slidemax = 2;
var pos = 1200;

function sliding(add) {
  idx = idx + add;
  if(idx < 0) idx = slidemax;
  else if(idx > slidemax) idx = 0;
  $('.slide').stop().animate({'left' : -(idx*pos)+"px"}, "slow");
}

autoslide = setInterval(function() { sliding(1 ) }, 3000);

function after() {
  setTimeout(function() {
      clearInterval(autoslide);  
      autoslide = setInterval(function() { sliding(1) }, 3000);
  }, 3000);
}

$('#leftbtn, #rightbtn').click(function() {
  clearInterval(autoslide);  
  if($(this).attr('id') == "leftbtn") sliding(-1);
  else sliding(1);
  after();
});

$('.slidepos > button').click(function() {
  clearInterval(autoslide);  
  idx = $(this).index(); 
  sliding(0);
  after();
});


//이벤트 롤링 스크립트
//moveType (0:left / 1:right) 
var moveType = 0; 
// 이동시간간격 3초 
var moveSpeed = 3000; 
// 움직이는 작업중 다시 명령 받지 않음 
var moveWork = false; 
// 일시정지 flag 
var movePause = false; 
function imgMove(){ 
    if(moveWork==false){ 
       // 0d\일경우 left방향 
      if(moveType==0){ 
         // 맨처음 이미지의 폭 
         var aWidth = $(".RollDiv > div > a:first").width(); 
         // 롤링마지막에 맨처음의 a태그 추가 
         $(".RollDiv > div").append("<a href=\""+$(".RollDiv > div > a:first").attr("href")+"\">" + $(".RollDiv > div > a:first").html()+ "</a>"); 
         // 맨처음이미지를 왼쪽으로 이동시킨다. 
         $(".RollDiv > div > a:first").animate({marginLeft:-aWidth},{duration:moveSpeed,step:function(){ 
         // 이동중 만약 일시정지 flag가 true라면 
         if(movePause==true){ 
            // 이동을 멈춘다 
            $(this).stop(); 
         } 
         },complete:function(){ 
         // 이동을 마친후 첫번째 a태그를 지워버린다 
         $(this).remove(); 
         // 이미지 움직이는것을 다시 실행 
         imgMove(); 
      }}); 
      }else{ 
      // 마지막 a태그의 폭 
       var aWidth = $(".RollDiv > div > a:last").width(); 
       // a태그 앞에 마지막의 a태그를 생성한다 단 스타일은 마지막 a태그의 폭만큼 빼준다 
       $("<a href=\"" + $(".RollDiv > div > a:last").attr("href")+ "\" style=\"margin-left:-" + aWidth + "px\">" + $(".RollDiv > div > a:last").html()+ "</a>").insertBefore(".RollDiv > div > a:first") 
       // 맨처음 a태그의 margin-left를 다시 0으로 맞춰준다. 
      $(".RollDiv > div > a:first").animate({marginLeft:0},{duration:moveSpeed,step:function(){ 
       // 이동중 만약 일시정지 flag가 true라면 
       if(movePause==true){ 
          // 이동을 멈춘다 
          $(this).stop(); 
       } 
       },complete:function(){ 
       // 이동을 마친후 마지막 a태그를 지워버린다 
       $(".RollDiv > div > a:last").remove(); 
       // 이미지 움직이는것을 다시 실행 
       imgMove(); 
    }}); 
 } 
 } 
 } 
 function goMove(){ 
    // 일시정지가 풀려있을 경우를 대비하여 일시정지를 풀러준다 
    movePause=false; 
    // 0d\일경우 left방향 
    if(moveType==0){ 
       imgMove(); 
       }else{ 
       $(".RollDiv > div > a:first").animate({marginLeft:0},{duration:moveSpeed,step:function(){ 
       // 이동중 만약 일시정지 flag가 true라면 
       if(movePause==true){ 
          // 이동을 멈춘다 
          $(this).stop(); 
      } 
       },complete:function(){ 
      // 이동을 마친후 마지막 a태그를 지워버린다 
      //$(".RollDiv > div > a:last").remove(); 
      // 이미지 움직이는것을 다시 실행 
      imgMove(); 
   }}); 
}
}
imgMove(); 

</script>

<!-- footer -->
<%@ include file="views/common/footer.jsp" %>
