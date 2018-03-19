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
	
	.tdtd td {
		padding: 0 30px;
	}
</Style>

</head>




<body>
    <%@ include file="/views/common/header.jsp"%>
   <div class = "w1200 middle EFHeader">
      <div class ="subFormHeader">
      	가족병원 예약하기
      </div>
   </div>
 
   <div class =" Eventbody w1200 middle ">
      <br><br>
      <form id = "EerollForm" action = "<%= request.getContextPath()%>/insertRes.mp" method = "post"> 
         <div class ="EFbody w1200 middle">
            	<ul class = "EFul2">
            		<li>
            			<input type="hidden" name="userNo" id="userNo" value="<%= loginUser.getmNo()%>">
            			<label class = "EFlabel">* 병원 명 : &nbsp; </label> 
            			<input type = "text" id="hosName" name="hosName" maxlength="20" placeholder="">
            		</li>
						
            		<li>
            			<label class="EFlabel">* 진료 분야 : &nbsp;</label>
            			<select id="hosField" name="hosField">
            				<option>----</option>
            				<option value="10">구강내과</option>
            				<option value="20">구강외과</option>
            				<option value="30">소아치과</option>
            				<option value="40">치아교정</option>
            				<option value="50">치아보철</option>
            				<option value="60">기타</option>
            			</select>
            		</li>
            		<li>
            			<label class = "EFlabel" >* 진료 날짜 : &nbsp; </label>
            			<input type="Date" name="rDate" id="rDate" class="EstartDate" placeholder="">
            			
            		</li>
            		
            		<li>
            			<label class="EFlabel" >* 진료 시간 : &nbsp; </label>
            			<select name="rTime" id ="rTime" class="EendDate">
            				<option>--:-- ~ --:--</option>
            				<option>10:00 ~ 12:00</option>
            				<option>12:00 ~ 14:00</option>
            				<option>14:00 ~ 16:00</option>
            				<option>16:00 ~ 18:00</option>
            				<option>18:00 ~ 20:00</option>
            			</select>
            		</li>

            		<li> 
            		</li>
            	
            		<li>
            			<label class="EFlabel"> 추가내용 : &nbsp;</label>
            			<textarea maxlength="300" name="rEtc" class="EplusContent"></textarea>
            		</li>
            	</ul>
         </div>
         
         <br>
   
	      <div align = "center">
	       
	         <br><br>
	          <button type="commit" class="goMain EFbtn" id="cl"> 예약하기 </button>
	          
	          
	         <button type = "reset" class = "goMain EFbtn" onclick ="goMain();" > 취소하기 </button>
	  
	      </div>
         
      </form>
      
         
         
         
   </div>

   <%@ include file="../common/footer.jsp" %>
   


</body>
</html>