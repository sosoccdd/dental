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



</head>

<body>

	<%@include file="common/header.jsp"%>
	<%@include file="common/leftnav.jsp"%>
	
	<div class="div-tag-good">
  <div class="w3-bar w3-sand f20">
     병원정보수정요청내역
  </div>

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>게시판코드</th>
        <th>요청회원아이디</th>
        <th>요청날짜</th>
        <th>요청병원</th>
        <th>요청내용</th>
        <th>요청완료여부</th>
      </tr>
    </thead>
    <%for(int i = 0; i<20; i++){ %>
    <tr>
      <td>1_222</td>
      <td>test01</td>
      <td>2017-12-30</td>
      <td>조은치과</td>
      <td>점심시간 정보 수정 요청 </td>
      <td><button class="w3-white w3-border w3-border-blue w3-round">승인</button>
      <button class="w3-white w3-border w3-border-blue w3-round">취소</button></td>
    </tr>
   <%} %>

    
  </table>
<div class="w3-center">
<div class="w3-bar">
  <a href="#" class="w3-button">&laquo;</a>
  <a href="#" class="w3-button">1</a>
  <a href="#" class="w3-button">2</a>
  <a href="#" class="w3-button">3</a>
  <a href="#" class="w3-button">4</a>
  <a href="#" class="w3-button">&raquo;</a>
</div>
</div>
</div>
	
</body>

</html>
