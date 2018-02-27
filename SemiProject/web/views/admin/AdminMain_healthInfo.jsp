<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="../../css/admin/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../../css/admin/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../../css/admin/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../../css/admin/morris.css" rel="stylesheet">
<link href="../../css/admin/adminmain.css" rel="stylesheet">
<link rel="stylesheet" href="/semi/css/reset.css">
<link rel="stylesheet" href="/semi/css/common.css">
<link rel="stylesheet" href="../../css/admin/w3.css">
<script src="/semi/js/jquery-3.3.1.min.js" type="text/javascript"></script>



</head>

<body>

	<%@include file="common/header.jsp"%>
	<%@include file="common/leftnav.jsp"%>
	<div class="div-tag-good">
	<div class="w3-bar w3-sand f20">건강정보 게시글 관리
	<button class="w3-white w3-border w3-border-blue w3-round right-tag" onclick="document.getElementById('id02').style.display='block'">등록하기</button>
	</div>
		<table class="w3-table-all w3-hoverable">
			<thead>
				<tr class="w3-light-grey">
					<th>게시판 코드</th>
					<th>작성날짜</th>
					<th>조회수</th>
					<th>제목</th>
					<th>내용</th>
					<th>수정날짜</th>
					<th>게시여부</th>
					<th>첨부파일 수정</th>
				</tr>
			</thead>
			<%for(int i = 0; i<20; i++){ %>
			<tr>
				<td>health_01</td>
				<td>2017-12-30</td>
				<td>61</td>
				<td>건강정보</td>
				<td>안녕하세요 조치 관리자 입니다. 오늘의....</td>
				<td>2017-12-30</td>
				<td>
				<button class="w3-white w3-border w3-border-blue w3-round">보이기</button>
				<button class="w3-white w3-border w3-border-blue w3-round">내리기</button>
				</td>
				<td>
				<button class="w3-white w3-border w3-border-blue w3-round" onclick="document.getElementById('id01').style.display='block'">파일 수정</button>
				</td>
				
				
				
			</tr>
			<%} %>


		</table>
		<div class="w3-center">
			<div class="w3-bar">
				<a href="#" class="w3-button">&laquo;</a> 
				<a href="#"	class="w3-button">1</a> 
				<a href="#" class="w3-button">2</a> 
				<a href="#" class="w3-button">3</a> 
				<a href="#" class="w3-button">4</a>
				<a href="#" class="w3-button">&raquo;</a>
			</div>
		</div>
		</div>
		<!-- 파일수정 -->
		<div id="id01" class="w3-modal">
			<div class="w3-modal-content w3-card-4 w3-animate-zoom"
				style="max-width: 600px">

				<div class="w3-center">
					<br> 
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="w3-button w3-xlarge w3-hover-red w3-display-topright"
						title="Close Modal">&times;</span>
				</div>

		<form class="w3-container" action=""> 
					<div class="w3-section">
						<label><b>제목</b></label> 
						<input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="제목을 입력하세요" name="title" > 
						<label><b>내용</b></label>
						<textarea class="textarea-tag" rows="5" cols="78" placeholder="내용을 입력하세요" name="content" style="resize: none;"></textarea>
						<label><b>분야</b></label>
					

<!-- <form method="post" id="frmTest"> -->
<table id="memberTable" border="1" >
    <tr>
        <td><input type="text" id="fullName" style="width:300px;"></td>
        <td style="width:150px;"></td>
        <td style="width:150px;">
        <button class="w3-white w3-border w3-border-blue w3-round" type="button" id="btnAddRow">행추가</button>
        <button class="w3-white w3-border w3-border-blue w3-round" type="button" id="tableReset">리셋</button>
        
        </td>
    </tr>
</table>
<!-- </form> -->
<br>
<!-- 파일 업로드  -->
						<div class="filebox bs3-primary preview-image">
                            <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">

                            <label for="input_file">업로드</label> 
                          <input type="file" id="input_file" class="upload-hidden"> 
                        </div>
<!-- 파일 업로드 end  -->					
					
					<button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">수정하기</button>
					

					</div>
			 </form> 

			</div>
		</div>
		<!-- 파일등록 -->
		<div id="id02" class="w3-modal">
			<div class="w3-modal-content w3-card-4 w3-animate-zoom"
				style="max-width: 600px">

				<div class="w3-center">
					<br> 
					<span
						onclick="document.getElementById('id02').style.display='none'"
						class="w3-button w3-xlarge w3-hover-red w3-display-topright"
						title="Close Modal">&times;</span>
				</div>

		<form class="w3-container" action=""> 
					<div class="w3-section">
						<label><b>제목</b></label> 
						<input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="제목을 입력하세요" name="title" > 
						<label><b>내용</b></label>
						<textarea class="textarea-tag" rows="5" cols="78" placeholder="내용을 입력하세요" name="content" style="resize: none;"></textarea>
						<label><b>분야</b></label>
				
<!-- <form method="post" id="frmTest"> -->
<table id="memberTable" border="1" >
    <tr>
        <td><input type="text" id="fullName" style="width:300px;"></td>
        <td style="width:150px;"></td>
        <td style="width:150px;">
        <button class="w3-white w3-border w3-border-blue w3-round" type="button" id="btnAddRow">행추가</button>
        <button class="w3-white w3-border w3-border-blue w3-round" type="button" id="tableReset">리셋</button>
        
        </td>
    </tr>
</table>
<!-- </form> -->
<br>
<!-- 파일 업로드  -->
						<div class="filebox bs3-primary preview-image">
                            <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">

                            <label for="input_file">업로드</label> 
                          <input type="file" id="input_file" class="upload-hidden"> 
                        </div>
<!-- 파일 업로드 end  -->					
					
					<button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">수정하기</button>
					

					</div>
			 </form> 

			</div>
		</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#btnAddRow").on("click",function() {
                // clone
                $.trClone = $("#memberTable tr:last").clone().html();
                $.newTr = $("<tr>"+$.trClone+"</tr>");
 
                // append
                $("#memberTable").append($.newTr);
 
                // delete Button 추가
                $.btnDelete = $(document.createElement("button"));
                $.btnDelete.addClass("w3-white");
                $.btnDelete.addClass("w3-border");
                $.btnDelete.addClass("w3-border-blue");
                $.btnDelete.addClass("w3-round");
                $.btnDelete.html("삭제");
                $.btnDelete.attr({
                    name : "btnRemove",
                    type : "button" ,
                });
                $("#memberTable tr:last td:last").html("");
                $("#memberTable tr:last td:last").append($.btnDelete);
 
                // 버튼에 클릭 이벤트 추가
                $("#memberTable tr>td:last>button[type='button']").on('click', function(){
                    $(this).parent().parent().remove();
                });
            });
 
            // 초기화
            $("#tableReset").on("click",function(){ 
                $("#frmTest").each(function(){ this.reset(); });
 
                $("button[name='btnRemove']").each(function () {
                    $(this).trigger('click');
                });
            });
        });
    </script>	
		<script type="text/javascript">
		$(document).ready(function(){
			   var fileTarget = $('.filebox .upload-hidden');

			    fileTarget.on('change', function(){
			        if(window.FileReader){
			            // 파일명 추출
			            var filename = $(this)[0].files[0].name;
			        } 

			        else {
			            // Old IE 파일명 추출
			            var filename = $(this).val().split('/').pop().split('\\').pop();
			        };

			        $(this).siblings('.upload-name').val(filename);
			    });

			    //preview image 
			    var imgTarget = $('.preview-image .upload-hidden');

			    imgTarget.on('change', function(){
			        var parent = $(this).parent();
			        parent.children('.upload-display').remove();

			        if(window.FileReader){
			            //image 파일만
			            if (!$(this)[0].files[0].type.match(/image\//)) return;
			            
			            var reader = new FileReader();
			            reader.onload = function(e){
			                var src = e.target.result;
			                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
			            }
			            reader.readAsDataURL($(this)[0].files[0]);
			        }

			        else {
			            $(this)[0].select();
			            $(this)[0].blur();
			            var imgSrc = document.selection.createRange().text;
			            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

			            var img = $(this).siblings('.upload-display').find('img');
			            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
			        }
			    });
			});
		</script>





	
	
</body>

</html>
