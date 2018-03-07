<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<!-- datePicker -->
 
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
   </script>
<!-- 결제 api  -->
<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
 
<link rel="stylesheet" href="/semi/css/event.css">
<link rel="stylesheet" href="../../css/common.css">
</head>
<body>
    <%@ include file="../common/header.jsp"%>
    
   <div class = "FormHeader">
      <div class ="subFormHeader">
      이벤트 등록하기
      </div>
   </div>
   
 
   <div class = Eventbody align = "center">
      <br><br>
      <form id = "EerollForm" action = "<%= request.getContextPath()%>/eventEnroll.me" method = "post"> 
         <table class = table2>
            <tr class = tr2>
               <td class = "label td2" width = "200px">* 이벤트 명 : &nbsp;</td>
               <td class = "td2"><input type = "text" maxlength= "20" name = "Ename"></td>
               <td></td>
            </tr>
            
            <tr class = tr2>
               <td class = "label td2" width = "200px">* 병원 명 : &nbsp;</td>
               <td class = "td2"><input type = "text" maxlength= "13" name = "Hname"></td>
               <td></td>
            </tr>
            
            <tr class = tr2>
               <td class = "label td2">* 이벤트 가격 : &nbsp; </td>
               <td class = "td2"><input type ="text" maxlength = "13" name = "Eprice"></td>
               <td></td>
            </tr>
            
         
            
            <tr class = tr2>
               <td class = "label td2" >* 이벤트 시작일 : &nbsp; </td>
               <td class = "td2"><input type ="text" name = "Estart" id = "datepicker"></td>
               <td><p>Date: <input type="date" id="testDatepicker"></p></td>
               
            </tr>
            
            
            <tr class = tr2>
               <td class = "label td2" >* 이벤트 종료일 : &nbsp; </td>
               <td class = "td2"><input type ="date" name = "Eend" id = "EendDate"></td>
               <td></td>
            </tr>
            
            <tr class = tr2>
               <td colspan="3" class = "tail td2" > * 이벤트 기간은 주 단위로 선택이 가능하며 1주에 7만원이 결제 됩니다.</td>
            </tr>
            
            <tr class = tr2>
               <td class = "label td2"> 이벤트 사진 : &nbsp;</td>
               <td class = "td2"><input type ="text" maxlength = "13" name = "Epicture"> <input type ="file" class = "file2" value = 파일찾기 class = "Ebtn"></td>
               <td></td>
            </tr>
         
            <tr class = tr2> 
               <td colspan="3" class = "tail td2"> * 이벤트 사진은 사진명 또는 추가 메모 사항에 순서를 명시해주시기 바랍니다.</td>
            </tr>
            
            <tr class = tr2>
               <td class = "label td2"> 추가내용 : &nbsp;</td>
               <td class = "td2"><textarea maxlength = "1000" name = "pluscontents" style="resize:none; width:250px; height:200px;"></textarea></td>
               <td ></td>
            </tr>
         </table>
         
         <br><br><br>
   
         
      </form>
      
      <div align = "center">
         <input type = "checkbox" id = check style="width:10px; height:10px;"><label for = "check" style ="font-size:20px;"> 병원정보 제공동의 및 병원정보 제 3자 제공 동의 (필수)</label>
         <br><br><br>
            
         <button class = "goMain" onclick ="goMain();" class = "Ebtn btn"> 취소하기 </button>&nbsp;&nbsp;
         <button class = "buyBtn" onclick ="EventBuy();" class = "Ebtn btn" > 결제하기 </button>
      </div>
      
   
      <script type="text/javascript">
      
      
      
      /* 결제 API */
            var IMP = window.IMP; 
            IMP.init('iamport');
      
            function EventBuy(){
               IMP.request_pay({
                   pg : 'inicis', // version 1.1.0부터 지원.
                   pay_method : 'card',
                   merchant_uid : 'merchant_' + new Date().getTime(),
                   name : '주문명:결제테스트',
                   amount : 14000,
                   buyer_email : 'iamport@siot.do',
                   buyer_name : '구매자이름',
                   buyer_tel : '010-1234-5678',
                   buyer_addr : '서울특별시 강남구 삼성동',
                   buyer_postcode : '123-456',
                   m_redirect_url : 'https://www.yourdomain.com/payments/complete'
               }, function(rsp) {
                   if ( rsp.success ) {
                       var msg = '결제가 완료되었습니다.';
                       msg += '고유ID : ' + rsp.imp_uid;
                       msg += '상점 거래ID : ' + rsp.merchant_uid;
                       msg += '결제 금액 : ' + rsp.paid_amount;
                       msg += '카드 승인번호 : ' + rsp.apply_num;
                   } else {
                       var msg = '결제에 실패하였습니다.';
                       msg += '에러내용 : ' + rsp.error_msg;
                   }
                   alert(msg);
               });
            }
            function goMain(){
               location.href="<%= request.getContextPath() %>/index.jsp"
               
            }
            
         </script>
         
   </div>

   <%@ include file="../common/footer.jsp" %>
</body>
</html>