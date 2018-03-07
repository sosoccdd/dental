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
   	병원 회원가입 승인 요청
  </div>

  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-light-grey">
        <th>회원 ID</th>
        <th>병원 이름</th>
        <th>주소</th>
        <th>전화번호</th>
        <th>가입날짜</th>
        <th>이메일주소</th>
        <th>승인여부</th>
      </tr>
    </thead>
    <%for(int i = 0; i<20; i++){ %>
    <tr>
      <td>test01</td>
      <td>조은치과</td>
      <td>서울특별시 구로구</td>
      <td>033-1233-1233</td>
      <td>2018-03-03</td>
      <td>123@nam.dkk</td>
      <td>
      <button class="w3-white w3-border w3-border-blue w3-round">승인</button>
      <button class="w3-white w3-border w3-border-blue w3-round">거절</button>
      </td>
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
