<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<style>
	 .FormHeader{
		text-align: center;
	
		height:100px;
		width: 100%;
		background:lightgray;
		
		
	}
	.subFormHeader{
		text-align:center;
		vertical-align:middle;
		width:1200px;
		height:100px;
		font-size:20px;
		font-weight:bold;
		line-height:100px;
		margin:0 auto;
	}
	td{
		font-size:20px;
		font-weight:bold;
	}
	.tail{
		color:orangered;
		text-align:center;
	}
	
	#goMain:hover, #buyBtn:hover{
		cursor:pointer;
	}
	
	#buyBtn, #goMain{
		display:inline-block;
	} 
	
	table{
		border : 1px solid lightgray;
	
	}
	.label{
		text-align:right;
	}
	tr{
		height: 50px;
	}
	.Ebtn{
		border:1px solid blue;
		color: blue;
		background: white;
	}
	.btn{
		width:100px;
		height:50px;
		font-size:20px;
	}
	file{
		background:white;
	}
</style>
<title>Insert title here</title>
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
			<table>
				<tr>
					<td class = "label" width = "200px">* 이벤트 명 : &nbsp;</td>
					<td><input type = "text" maxlength= "20" name = "Ename"></td>
					<td></td>
				</tr>
				
				<tr>
					<td class = "label" width = "200px">* 병원 명 : &nbsp;</td>
					<td><input type = "text" maxlength= "13" name = "Hname"></td>
					<td></td>
				</tr>
				
				<tr>
					<td class = "label">* 이벤트 가격 : &nbsp; </td>
					<td><input type ="text" maxlength = "13" name = "Eprice"></td>
					<td></td>
				</tr>
				
				<tr>
					<td class = "label" >* 이벤트 시작일 : &nbsp; </td>
					<td><input type ="date" name = "Estart"></td>
					<td></td>
				</tr>
				
				<tr>
					<td class = "label" >* 이벤트 종료일 : &nbsp; </td>
					<td><input type ="date" name = "Eend"></td>
					<td></td>
				</tr>
				
				<tr>
					<td colspan="3" class = "tail" > * 이벤트 기간은 주 단위로 선택이 가능하며 1주에 7만원이 결제 됩니다.</td>
				</tr>
				
				<tr>
					<td class = "label"> 이벤트 사진 : &nbsp;</td>
					<td><input type ="text" maxlength = "13" name = "Epicture"> <input type ="file" value = 파일찾기 class = "Ebtn"></td>
					<td></td>
				</tr>
			
				<tr> 
					<td colspan="3" class = "tail"> * 이벤트 사진은 사진명 또는 추가 메모 사항에 순서를 명시해주시기 바랍니다.</td>
				</tr>
				
				<tr>
					<td class = "label"> 추가내용 : &nbsp;</td>
					<td><textarea maxlength = "1000" name = "pluscontents" style="resize:none; width:250px; height:200px;"></textarea></td>
					<td></td>
				</tr>
			</table>
			
			<br><br><br>
			
			<div align = "center">
				<input type = "checkbox" id = check style="width:10px; height:10px;"><label for = "check" style ="font-size:20px;"> 병원정보 제공동의 및 병원정보 제 3자 제공 동의 (필수)</label>
				<br><br><br>
				
				<button id = "goMain" onclick ="goMain();" class = "Ebtn btn"> 취소하기 </button>&nbsp;&nbsp;
				<button id = "buyBtn" onclick ="EventBuy();" class = "Ebtn btn" > 결제하기 </button>
			</div>
			
			
			<script type="text/javascript">
				function EventBuy(){
					$("#EenrollForm").submit();
				}
				function goMain(){
					location.href="<%= request.getContextPath() %>/index.jsp"
					
				}
			</script>
		</form>
	</div>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>