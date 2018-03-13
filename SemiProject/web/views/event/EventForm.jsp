<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- datePicker -->

 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script type="text/javascript">
	jQuery.noConflict();
	var w$ = jQuery;
 </script>
  

 
<!-- 결제 api  -->
<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
 
<link rel="stylesheet" href="/semi/css/event.css">
<link rel="stylesheet" href="../../css/common.css">


<Style>
	.EcontentImg{
		width:100px; 
		height:100px;
		background-image:url(../../images/event/EcontentImage.jpg.png);
	}
	.Eprice{
		height:50; 
		width:150px; 
		border:1px solid black;
	}
	.Echeck{
		width:20px;
		height:20px;
		font-size:20px;
	}
	#contentImgArea1, #contentImgArea2, 
	#contentImgArea3, #contentImgArea4{
		display:none;
	
	}
	#titleImgArea, #contentImgArea1, #contentImgArea2, 
	#contentImgArea3, #contentImgArea4{
		cursor:pointer;
	}
	
	.EplusContent{
		vertical-align: top;
	
	}
	
	.EFimgArea{
		overflow: hidden;
		margin: 20px 0;
	}
	.EFimgArea > div{
		width: 100px;
		float: left;
		margin-left: 70px;
	}
	.EimgWrap{
		overflow: hidden;
	}
	.EimgWrap > div{
		width: 120px;
		float: left;
	}
	.EPayArea{
		vertical-align:middle;
		text-align:center;
	}
	.Epay{
		font-size:20px;

		color: #308deb;
	}
	.EFlabel{
		display:inline-block;
	}
	.EFmaxImg{
		color:#308deb;
		text-align:center;
	}
	#fileArea{
		display:none;	
	}
	.EplusContent {
		resize:none; 
		width:700px; 
		height:200px;
		border:2px solid #308deb;
		margin-bottom:30px;
	}
	.EFbtn{
		width: 100px;
	    height: 50px;
	    color: white;
	    background: #308deb;
	    font-size: 16px;
	    border: 1px solid #308deb;
	    margin-top:20px;
	    margin-bottom:20px;
	}
	.EFbtn:hover{
		cursor:pointer;
		background:white;
		border:2px solid #308deb;
		color: #308deb;
	}
</Style>
</head>
<body>
    <%@ include file="../common/header.jsp"%>
   <div class = "w1200 middle EFHeader">
      <div class ="subFormHeader">
      	이벤트 등록하기
      </div>
   </div>
   
 
   <div class =" Eventbody w1200 middle ">
      <br><br>
      <form id = "EerollForm" action = "<%= request.getContextPath()%>/InsertEventServlet" method = "post"> 
         <div class ="EFbody w1200 middle">
            	<ul class = "EFul2">
            		<li>
            			<label class = "EFlabel">* 이벤트 명 : &nbsp; </label> 
            			<input type = "text" id = "EFeventName" maxlength = "20" name = "Ename" placeholder="이벤트 명을 입력하세요.">
            		</li>
            	
            		<li>
            			<label class = "EFlabel">* 이벤트 가격 : &nbsp;</label>
            			<input type = "text" id ="EFeventPrice" maxlength= "13" name = "Eprice" placeholder="이벤트 가격을 입력해주세요">
            		</li>
            		
            		<li>
            			<label class = "EFlabel" >* 이벤트 시작일 : &nbsp; </label>
            			<input type ="text" name = "Efrom" id = "Efrom" class = "EstartDate" placeholder="이벤트 시작일을 설정하세요">
	            		<script>
    	    				    		
        	    		</script>
            		
            			
            		</li>
            		
            		<li>
            			<label class = "EFlabel" >* 이벤트 종료일 : &nbsp; </label>
            			<input type ="text" name = "Eto" id = "Eto" class = "EendDate" placeholder="이벤트 종료일을 설정하세요">	
            			<p class = "tail" > * 이벤트 기간은 1일 단위로 선택이 가능하며 1일 1만원이 결제 됩니다.</p>
            		</li>
            		

            		
            		<li> 
            			<label class = "EFlabel"> 이벤트 사진 : &nbsp;</label>
            			

            			 
	            		<div class ="EFimgArea">
	            			<div id="titleImgArea" >
								<img id="titleImg" class = "EcontentImg" />
							</div>
							
							<div id="contentImgArea1" >
								<img id="contentImg1" class = "EcontentImg" />
							</div>
							
							<div id="contentImgArea2" >
								<img id="contentImg2"  class = "EcontentImg"/>
							</div>
							
							
							<div id="contentImgArea3" >
								<img id="contentImg3"  class = "EcontentImg"/>						
							</div>
							
							
							<div id="contentImgArea4" >
								<img id="contentImg4"  class = "EcontentImg"/>					
							</div>
						</div>
					
						<p class = "EFmaxImg" > 사진은 최대 5개까지 등록가능 합니다. </p>
						<p class = "tail"> * 이벤트 사진은 사진명 또는 추가 메모 사항에 순서를 명시해주시기 바랍니다.</p>
            		</li>
            	
            		<li>
            			<label class = "EFlabel"> 추가내용 : &nbsp;</label>
            			<textarea maxlength = "300" name = "Econtent" class = "EplusContent"></textarea>
            		</li>
            	</ul>
         </div>
  
  
         <div id="fileArea">
				<input type="file" id="thumbnail1" name="thumbnailImg" onchange="LoadImg1(this);"/>
				<input type="file" id="thumbnail2" name="thumbnailImg" onchange="LoadImg2(this);"/>
				<input type="file" id="thumbnail3" name="thumbnailImg" onchange="LoadImg3(this);"/>
				<input type="file" id="thumbnail4" name="thumbnailImg" onchange="LoadImg4(this);"/>				
				<input type="file" id="thumbnail5" name="thumbnailImg" onchange="LoadImg5(this);"/>

		</div>
         
         <br>
   
	      <div align = "center">
	       
	         <input type = "checkbox" class = "Echeck" id = "Echeck"><label class = "Echeck" for = "Echeck"> 병원정보 제공동의 및 병원정보 제 3자 제공 동의 (필수)</label>
	         <br><br>
	         <div class="EPayArea"><p class ="Epay">결제 금액 : 0</p></div>
	         <button type = "reset" class = "goMain EFbtn" onclick ="goMain();" > 취소하기 </button>
	        <!--  <button type = "submit" class = "buyBtn EFbtn" onclick ="EventBuy();"> 결제하기 </button> -->
	     	 <button class = "buyBtn EFbtn" onclick = "location.href = '<%= request.getContextPath()%>/views/event/EventInsertSucess.jsp'"> 결제하기 </button>
	  
	      </div>
         
      </form>
      
  
   
      <script type="text/javascript">
      var price=0;
      w$( function() {
    	  var dateFormat = "mm/dd/yy",
    	      Efrom = w$( "#Efrom" )
    	        .datepicker({
    	          defaultDate: "+1w",
    	          changeMonth: true, 
    	          numberOfMonths: 1, // 화면에 보이는 달력수 1
    	          minDate:0 //시작일을 오늘부터로 지정
    	        })
    	        
    	        .on( "change", function() {
    	        	Eto.datepicker( "option", "minDate", getDate( this ) );
    	        	
    	        	//날짜 차이 
    	        	var Etoday = new Date();
        		 	  
          		 	var stxt = Efrom.val().split("/");
          		 	var etxt = Eto.val().split("/");

          		 	 
          		 	var sdate = new Date(stxt[2], Number(stxt[0])-1, stxt[1]);
          		 	var edate = new Date(etxt[2], Number(etxt[0])-1, etxt[1]);
          		 	
          		 	var EbetweenDate = ((edate.getTime() - sdate.getTime())/1000/60/60/24)+1;
          		 	// 일수 계산
          		 	
          		 	console.log(sdate);
          		 	console.log(edate);
          		 	
          		 	// 금액 1일당 1만원
          		 
          		 	price = EbetweenDate * 10000;
          		 
          			
          			w$(".Epay").text("결제 금액 : " +price + " 원");
        	    	return price;
    	        }),
    	        
    	        
    	  
    	  	 Eto = w$( "#Eto" ).datepicker({
    	        defaultDate: "+1w",
    	        changeMonth: true,
    	        numberOfMonths: 1
    	      })
    	    
    	      .on( "change", function() {
    	    	
    	        Efrom.datepicker( "option", "maxDate", getDate( this ) );
    	      //api에서 결제금액 : 종료일 - 시작일 :
    	        
    	        
    	    	//날짜 차이 
        	    var Etoday = new Date();
      		 	  
      		 	var stxt = Efrom.val().split("/");
      		 	var etxt = Eto.val().split("/");

      		 	 
      		 	var sdate = new Date(stxt[2], Number(stxt[0])-1, stxt[1]);
      		 	var edate = new Date(etxt[2], Number(etxt[0])-1, etxt[1]);
      		 	
      		 	var EbetweenDate = ((edate.getTime() - sdate.getTime())/1000/60/60/24)+1;
      		 	// 일수 계산
      		 	
      		 	console.log(sdate);
      		 	console.log(edate);
      		 	
      		 	// 금액 1일당 1만원
      		 
      		 	price = EbetweenDate * 10000;
      		 
      			
      			w$(".Epay").text("결제 금액 : " +price + " 원");
    	    	return price;
    	    	
    	      });
    	 	
    	  //시작일자 이전날짜 선택 불가능.
    	  function getDate( element ) {
    	      var date;
    	      try {
    	        date = w$.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	      
  		 	  
  		 	return date;
    	    }
			
          
	    	
	    });
      
     	 /* 결제 API */
         var IMP = window.IMP; 
         IMP.init('imp76109164');
       	 
         <%-- function EventBuy(){
       		 
       		
       			 if ($(EFeventName).val() !="" && $(EFeventPrice).val() != "" 
       				&& $(Efrom).val() != "" && $(Eto).val() != ""
       					&& $('input:checkbox').is(":checked") == true){
       			
       		 IMP.request_pay({
	                pg : 'inicis', // version 1.1.0부터 지원.
	                pay_method : 'card',
	                merchant_uid : 'merchant_' + new Date().getTime(),
	                name : '이벤트 등록 비용 결제',
	                amount : 100, //마지막에 price로 수정
	                buyer_email :<%= loginUser.get %> ,
	                buyer_name : <%= loginUser.getmName()%>,
	                buyer_tel : <%= loginUser.getmPhone() %>,
	                buyer_addr : <%= loginUser.getmAddr()%>,
	                m_redirect_url : 'https://www.yourdomain.com/payments/complete' //모바일 결제시에만 사용
	            }, function(rsp) {
	                if ( rsp.success ) {
	                   var msg = '결제가 완료되었습니다.';
	                       msg += '고유ID : ' + rsp.imp_uid; //imp_uid	string
	                       msg += '상점 거래ID : ' + rsp.merchant_uid; //merchant_uid	string
	                       msg += '결제 금액 : ' + rsp.price; //paid_amount	number	
	                       msg += '카드 승인번호 : ' + rsp.apply_num; //apply_num	string
	                       
	                   	 $.ajax({
	                    	   url:"pay.ev",
	                    	   data:{ "payMethod":'card', "name":'이벤트 등록 비용 결제',
	                    		   		,  "amount": price, "buyerName":<%= loginUser.getmName()%>,
	                    		   		  , "buyerTel":<%= loginUser.getmPhone() %> , "buyerAddr": <%= loginUser.getmAddr()%>
	                    		  		    , "impUid":rsp.imp_uid, "merchantUid":rsp.merchant_uid
	                    			 		  , "amount":rsp.price, "applyNum":rsp.apply_num },
	                    	   type:"post",
	                    	   success:function(data){
	                               console.log("서버 전송 성공!");
	                           },
	                           error:function(data){
	                               console.log("서버 전송 실패!");
	                           },
	                    	  
	                       }); 
	                } else {
	                   var msg = '결제에 실패하였습니다.';
	                       msg += '에러내용 : ' + rsp.error_msg;
	                }
	                alert(msg);
	            });
       		 
       			
       		} 
       		if ($(EFeventName).val() =="" || $(Efrom).val() == ""
       				|| $(Eto).val() == ""){
       			alert("필수 입력 조건 사항을 입력해주세요.");   	
       		} 
       		
       		if ($('input:checkbox').is(":checked") == false){
       			alert("병원정보 제공동의 및 병원정보 제 3자 제공 동의에 체크를 해주세요.");
       		} 
         } --%>
      
            
         function goMain(){
            location.href="<%= request.getContextPath() %>/index.jsp"
               
         }
         
         
         //이미지 업로드
    	 $(function(){
    		 $("#titleImgArea").click(function(){
				$("#thumbnail1").click();
				
			 });
    		 
    		 $("#contentImgArea1").click(function(){
    			 $("#thumbnail2").click();
    			
    		 });
	         
    		 $("#contentImgArea2").click(function(){
				 $("#thumbnail3").click();
				 
			 });
			
    		 $("#contentImgArea3").click(function(){
				 $("#thumbnail4").click();
				 
			 });
    		 
    		 $("#contentImgArea4").click(function(){
				 $("#thumbnail5").click();					
			 });
    		 
    	 });
    	 
    	 function LoadImg1(value){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#titleImg").attr("src", e.target.result); /* 파일이 브라우저에 저장되어잇는 위치를 가져옴 */
					$("#contentImgArea1").show();
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
			
		function LoadImg2(value){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#contentImg1").attr("src", e.target.result); /* 파일이 브라우저에 저장되어잇는 위치를 가져옴 */
					$("#contentImgArea2").show();
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
			
		function LoadImg3(value){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#contentImg2").attr("src", e.target.result); /* 파일이 브라우저에 저장되어잇는 위치를 가져옴 */
					$("#contentImgArea3").show();
				}

				reader.readAsDataURL(value.files[0]);
			}
		}
				
		function LoadImg4(value){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#contentImg3").attr("src", e.target.result); /* 파일이 브라우저에 저장되어잇는 위치를 가져옴 */
					$("#contentImgArea4").show();

				}
				reader.readAsDataURL(value.files[0]);
			}
		}
			
		function LoadImg5(value){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#contentImg4").attr("src", e.target.result); /* 파일이 브라우저에 저장되어잇는 위치를 가져옴 */
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
	
	

		
         </script>
         
   </div>

   <%@ include file="../common/footer.jsp" %>

</body>
</html>