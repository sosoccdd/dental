<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/semi/css/dentist.css">
<!-- header -->
<%@ include file="../common/header.jsp"%>

<div class="w1200 middle">
	<div class="titleArea">
		<div class="denti-img">
			<img src="/semi/images/dentist/dentist03.jpg">
		</div>
		<!-- denti-img -->
		
		<ul>
			<li>심인수 의사</li>
			<li>더블유화이트치과의원</li>
			<li>
				<span>레진</span> <span>보철</span> <span>사랑니</span>
				<span>스케일링</span> <span>임플란트</span> <span>충치</span>
				<span>치아교정</span> <span>치아미백</span> <span>투명교정</span>
			</li>
		</ul>
	</div>
	<!-- titleArea -->
	
	<div class="conArea">
		<!-- tab button -->
		<div class="tab">
			<button class="tablinks active" onclick="openDentist(event, 'dentiInfo')">의사기본정보</button>
			<button class="tablinks" onclick="openDentist(event, 'qnaRe')">QnA답변</button>
			<button class="tablinks" onclick="openDentist(event, 'dentalNews')">건강정보</button>
			<button class="tablinks" onclick="openDentist(event, 'dentCalumn')">논문</button>
			<div class="borderBottom"></div>
		</div>
		
		<!-- 기본의사정보 -->
		<div id="dentiInfo" class="tabcontent">
			<h4>학력 및 경력</h4>
			<ul>
				<li>미국 및 한국 치과의사</li>
				<li>서울대학교 치의학대학원 치주과 박사 과정</li>
				<li>서울대학교 치의학대학원 치주과 석사</li>
				<li>미국 하버드대학교 (Harvard University) 치의학대학원 치주과 연수</li>
				<li>미국 미시간대학교 (University of Michigan) 치의학대학원</li>
				<li>미국 MD앤더슨 (MD Anderson Cancer Center) 인턴</li>
				<li>미국 라이스대학교 (Rice University) 생명공학 전공</li>
				<li>임플란트 임상강사, Seoul Institute of Periodontology and Implant</li>
				<li>대한치과마취과학회 정주진정법 수료 </li>
				<li>터키 Galip Gurel 심미보철 코스 수료</li>
				<li>인비절라인 인증의</li>
				<li>SCI(E) 및 국내 학술지 논문 다수 게재</li>
				<li>치주과학회 국제학술지 심사위원</li>
				<li>대한구강악안면외과학회 국제학술지 심사위원</li>
				<li>미국치과의사협회 정회원</li>
				<li>대한치과의사협회 정회원</li>
				<li>대한치주과학회 정회원</li>
				<li>대한치과마취과학회 정회원</li>
				
				<li>전) 정운호치과 원장</li>
				<li>전) 미국 시카고 소재 치과 원장</li>
			</ul>
			
			<h4>주요 진료분야</h4>
			<ul>
				<li>임플란트, 라미네이트, 인비절라인</li>
				<li>임플란트-99.9%의 환자분들이 인정한 안아프고 간단하고 확실한 임플란트 수술! </li>
				<li>수면마취; 수면임플란트/수면사랑니발치/수면마취 치과 치료</li>
				<li>수면마취- 한숨 자고 일어나니 모든 치과 치료가 끝. 치과 공포/불안 최소한을 위한 솔루션</li>
			</ul>
		</div>
		
		<!-- QnA답변 -->
		<div id="qnaRe" class="tabcontent tab-qna">
			<!-- <dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl> -->
			<div class="noData">
				등록된 답변이 없습니다.
			</div>
		</div>
		
		<!-- 건강정보 -->
		<div id="dentalNews" class="tabcontent tab-qna">
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<dl>
				<dt>마키베리 아로니아 착색<span>2018-02-28</span></dt>
				<dd>
					마키베리 아로니아 가루등을 밥먹을때 물에 타서 몇달 먹었는데 착색됬는지 이빨이 보라색빛으로 어두워졌는데요,, 1)베리류도 착색 되는경우가 있나요? (이런경우는 못들어본거 같아서요ㅠ) 2)먹을때 착색이 덜 되려면 어떻게 해야 될까요? (먹고 바로 이닦는거 외엔 방법이 없을런지,,) 3)이미 착색된건 어떻게 해야 되나요? (스케일링해야 되는건지? 일상생활에서 실천할수 있는 방법 ...
				</dd>
				<dd>
					자세히 보기  &nbsp; &gt;
				</dd>
			</dl>
			<!-- <div class="noData">
				등록된 건강정보가 없습니다.
			</div> -->
		</div>
		
		<!-- 논문 -->
		<div id="dentCalumn" class="tabcontent">
			<h4>논문</h4>
			<dl>
				<dt>[SCI/International Publications]</dt>
				<dd>
					Kyung-In Jeong, Junho Lee, In-Woong Um, Young-Kyun Kim. Alveolar Cleft Reconstruction Using Autogenous Tooth Bone Graft Material for Implant Placement: A Case Report. Journal of Oral Implantology. 2015;41:487-90. (PMID: 24295451)<br>
					Ji-Young Lee, Junho Lee, Young-Kyun Kim. Comparative Analysis of Guided Bone Regeneration Using Autogenous Tooth Bone Graft Material With And Without Resorbable Membrane. Journal of Dental Sciences. 2013;8:281-286.<br>
					Frank Winterroth, Junho Lee, Shiuhyang Kuo, J. Brian Fowlkes, Stephen E. Feinberg, Scott J. Hollister, Kyle W. Hollman. Acoustic Microscopy Analyses to Determine Good vs. Failed Tissue Engineered Oral Mucosa Under Normal or Thermally Stressed Culture Conditions. Annals of Biomedical Engineering. 2011; 39: 44-52. (PMID: 20924679)<br> 
					Frank Winterroth, Junho Lee, Shiuhyang Kuo, J. Brian Fowlkes, Stephen E. Feinberg, Scott J. Hollister, Kyle W. Hollman. Ultrasonic Analyses Algorithm on an Ex Vivo Produced Oral Mucosal Equivalent. Journal of Developmental Biology and Tissue Engineering. 2011;3:99-102.<br>
					Frank Winterroth, Junho Lee, Shiuhyang Kuo, Stephen E. Feinberg, J. Brian Fowlkes, Kyle W. Hollman, Scott J. Hollister. Acoustic Microscopy Analyses of an Ex Vivo Produced Oral Mucosal Equivalent After Undergoing a Thermal Stress Test. Tissue Engineering and Regenerative Medicine International Society (TERMIS) – 2010, Sydney, Australia.<br>
					Junho Lee. The Life of an Endodontic Resident. ASDA News. 3/2009.				
				</dd>
			</dl>
			
			<dl>
				<dt>[Domestic Publications]</dt>
				<dd>
					Junho Lee. Commentary to ‘Survival rate of Astra Tech implants with maxillary sinus lift’. Journal of the Korean Association of Oral and Maxillofacial Surgeons. 2014;40:96-7. (PMID: 24868508)<br>
					Young-Kyun Kim, Pil-Young Yun, In-Woong Um, Hyo-Jung Lee, Yang-Jin Yi, Ji-Hyun Bae, Junho Lee. Alveolar ridge preservation of an extraction socket using autogenous tooth bone graft material for an implant site development: prospective case series. Journal of Advanced Prosthodontics. 2014;6:521-7. (PMID: 25551013)<br>
					Young-Kyun Kim, Junho Lee, Ji-Young Yun, Pil-Young Yun, In-Woong Um. Comparison of Autogenous Tooth Bone Graft And Synthetic Bone Graft Material in Bone Resorption Around Implants After Crestal Approach Sinus Lifting: A retrospective study. J Periodontol Implant Sci. 2014;44(5):216-221. (PMID: 25368809)<br>
					Young-Kyun Kim, Junho Lee, In-Woong Um, Kyung-Wook Kim, Masaru Murata, Toshiyuki Akazawa, Masaharu Mitsugi. Tooth-Derived Generative Medicine: Review. Journal of the Korean Association of Oral and Maxillofacial Surgeons.2013;39:103-111. (PMID: 24471027)<br>
					Young-Kyun Kim, Junho Lee, Kyung-Wook Kim, In-Woong Um, Masaru Murata, Katsutoshi Ito. Analysis of Organic Component and Osteoinductivity of Autogenous Tooth Bone Graft Material. Journal of Korean Association of Maxillofacial Plastic and Reconstructive Surgeons. 2013;35:353-359.<br>
					Kyung-In Jeong, Junho Lee, Kyung-Wook Kim, In-Woong Um, Shingo Hara, Masaharu Mitsugi, Young-Kyun Kim. Alveolar Cleft Reconstruction Using Chin Bone and Autogenous Tooth Bone Graft Material: Reports of 5 Cases. Journal of Korean Dental Science. 2013;6:13-21.
				</dd>
			</dl>
		</div>
				
	</div>
	<!-- conArea -->
</div>

<script>
//tabmenu
function openDentist(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
<!-- footer -->
<%@ include file="../common/footer.jsp"%>